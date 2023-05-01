#!/bin/bash

GERBER_FILES="IIsiPDSAdapter-B_Cu.gbr IIsiPDSAdapter-B_Mask.gbr IIsiPDSAdapter-B_Paste.gbr IIsiPDSAdapter-B_SilkS.gbr IIsiPDSAdapter-Edge_Cuts.gbr IIsiPDSAdapter-F_Cu.gbr IIsiPDSAdapter-F_Mask.gbr IIsiPDSAdapter-F_Paste.gbr IIsiPDSAdapter-F_SilkS.gbr IIsiPDSAdapter-In1_Cu.gbr IIsiPDSAdapter-In2_Cu.gbr"

POS_FILES="IIsiPDSAdapter-bottom.pos IIsiPDSAdapter-top.pos"

DRL_FILES="IIsiPDSAdapter-NPTH.drl IIsiPDSAdapter-PTH.drl IIsiPDSAdapter-PTH-drl_map.ps IIsiPDSAdapter-NPTH-drl_map.ps"

FILES="${GERBER_FILES} ${POS_FILES} ${DRL_FILES} top.pdf IIsiPDSAdapter.d356 IIsiPDSAdapter.csv"

echo $FILES

KICAD_PCB=IIsiPDSAdapter.kicad_pcb

ABORT=no
for F in $FILES; do 
    if test \! -f $F || test $KICAD_PCB -nt $F; then
	echo "Regenerate file $F"
	ABORT=yes
    fi
done

if test $ABORT == "yes"; then
    exit -1;
fi

zip IIsiPDSAdapter.zip $FILES top.jpg bottom.jpg
