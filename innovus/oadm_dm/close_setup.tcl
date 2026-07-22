set design_name oadm_dm
set output_tag setupfix
set_message -no_limit
set_message -id {TECHLIB-1467} -limit 10
setMultiCpuUsage -localCpu max -acquireLicense 8

# Work from the retained final database without overwriting the known baseline.
source "./$design_name.final.enc"

# Physical-only cells block post-route movement and resizing. Reinsert them after
# timing closure, then repair any routes affected by filler placement.
deleteFiller -prefix FILLER

setAnalysisMode -analysisType onChipVariation
setExtractRCMode -engine postRoute -effortLevel low
extractRC

setOptMode -yieldEffort none
setOptMode -effort high
setOptMode -setupTargetSlack 0.25
setOptMode -holdTargetSlack 0.03
setOptMode -holdFixingEffort high
setOptMode -reclaimArea false
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

set output_base "$design_name.$output_tag"
saveDesign "$output_base.enc"
saveNetlist -phys -excludeLeafCell -excludeCellInst "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1" "$output_base.phy.v"
saveNetlist "$output_base.nophy.v"
saveNetlist -includePhysicalCell "DCAP64 DCAP32 DCAP16 DCAP8 DCAP4" -includePowerGround -excludeLeafCell -excludeCellInst "FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1" "$output_base.PG.v"

extractRC
rcOut -spef "$output_base.spef"
write_sdf "$output_base.sdf"
write_sdf -edges check_edge -setuphold split -recrem split "$output_base.verilog.sdf"
report_timing -late -max_paths 10 -path_type full_clock -net > "$output_base.setup.rpt"
report_timing -early -max_paths 10 -path_type full_clock -net > "$output_base.hold.rpt"
summaryReport -outfile "$output_base.summary.rpt"
exit
