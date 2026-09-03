#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/SDK/2017.4/bin:/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/ids_lite/ISE/bin/lin64:/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/bin
else
  PATH=/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/SDK/2017.4/bin:/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/ids_lite/ISE/bin/lin64:/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/afs/pd.inf.tu-dresden.de/sw/Vivado-17.4/Vivado/2017.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/afs/pd.inf.tu-dresden.de/users/muza153a/Desktop/alu/vivado_prj/alu.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log top_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source top_wrapper.tcl -notrace


