set design_name oadm_dm
set_message -no_limit
set_message -id {TECHLIB-1467} -limit 10
setMultiCpuUsage -localCpu max -acquireLicense 8

# Work from the routed checkpoint before filler insertion. This leaves room for
# timing-driven cell movement and resizing during the closure passes.
source "./$design_name.routed.enc"

# Reload the APR guardband in case this checkpoint was created with an older
# constraint value. PrimeTime still signs off against the nominal 2 ns SDC.
set_interactive_constraint_modes {functional_2ns}
set_clock_uncertainty 0.08 [get_clocks clk]

# Physical-only cells block post-route movement and resizing. Reinsert them after
# timing closure, then repair any routes affected by filler placement.
deleteFiller -prefix FILLER

setAnalysisMode -analysisType onChipVariation
setExtractRCMode -engine postRoute -effortLevel low
extractRC

setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -setupTargetSlack 0.08
setOptMode -holdTargetSlack 0.03
setOptMode -holdFixingEffort high
setOptMode -reclaimArea true
setOptMode -moveInst true
setOptMode -fixDRC true
setOptMode -fixCap true
setOptMode -fixTran true
setOptMode -simplifyNetlist false
setOptMode -usefulSkew false

# Keep the 2 ns clock unchanged; the positive target is implementation margin
# for the small Innovus-to-PrimeTime correlation difference seen previously.
optDesign -postRoute -setup
optDesign -postRoute -hold
optDesign -postRoute -setup

globalNetConnect VDD -type tiehi -inst * -verbose
globalNetConnect VSS -type tielo -inst * -verbose
globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose
applyGlobalNets

addFiller -cell DCAP64 DCAP32 DCAP16 DCAP8 DCAP4 FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1 -prefix FILLER
ecoRoute -target

clearDrc
verify_drc
verifyConnectivity -type all -error 1000 -warning 50
verifyProcessAntenna

saveDesign "$design_name.final.enc"
report_power -leakage -cap -nworst -pg_pin -outfile "$design_name.power.rpt"
write_lef_abstract "$design_name.lef" -5.7 -PgpinLayers 6 -specifyTopLayer 6 -stripePin
defOut -floorplan -netlist -routing "$design_name.final.def"
streamOut "$design_name.gds" -mapFile "/user/stud/fall25/pd2827/ee6321/innovus/layermap/tsmc65_6350_spring24.layermap" -libName tcbn65gplus -structureName $design_name -units 1000 -mode ALL
saveNetlist -phys -excludeLeafCell -excludeCellInst "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1" "$design_name.phy.v"
saveNetlist "$design_name.nophy.v"
saveNetlist -includePhysicalCell "DCAP64 DCAP32 DCAP16 DCAP8 DCAP4" -includePowerGround -excludeLeafCell -excludeCellInst "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1" "$design_name.PG.v"

extractRC
rcOut -spef "$design_name.spef"
write_sdf "$design_name.sdf"
write_sdf -edges check_edge -setuphold split -recrem split "$design_name.verilog.sdf"
report_timing -late -max_paths 10 -path_type full_clock -net > "$design_name.setup.rpt"
report_timing -early -max_paths 10 -path_type full_clock -net > "$design_name.hold.rpt"
summaryReport -outfile "$design_name.summary.rpt"
exit
