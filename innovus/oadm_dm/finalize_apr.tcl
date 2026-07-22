set design_name oadm_dm
set_message -no_limit
setMultiCpuUsage -localCpu max -acquireLicense 8

# Resume from the clean routed checkpoint, then insert fillers and repair any
# routes affected by their placement before producing final deliverables.
source "./$design_name.routed.enc"
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

setExtractRCMode -engine postRoute -effortLevel low
extractRC
rcOut -spef "$design_name.spef"
write_sdf "$design_name.sdf"
write_sdf -edges check_edge -setuphold split -recrem split "$design_name.verilog.sdf"
report_timing -late -max_paths 5 -path_type full_clock -net > "$design_name.setup.rpt"
report_timing -early -max_paths 5 -path_type full_clock -net > "$design_name.hold.rpt"
summaryReport -outfile "$design_name.summary.rpt"
exit
