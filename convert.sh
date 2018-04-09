#!/bin/bash

case $1 in
pcf)
	bdftopcf -o envypn7x13.pcf envypn7x13.bdf
	bdftopcf -o envypn7x15.pcf envypn7x15.bdf
	bdftopcf -o envypn7x13e.pcf envypn7x13e.bdf
	bdftopcf -o envypn7x15e.pcf envypn7x15e.bdf
	rm *.bdf
	echo "Converted BDF files to PCF."
	;;
bdf)
	pcf2bdf -o envypn7x13.bdf envypn7x13.pcf
	pcf2bdf -o envypn7x15.bdf envypn7x15.pcf
	pcf2bdf -o envypn7x13e.bdf envypn7x13e.pcf
	pcf2bdf -o envypn7x15e.bdf envypn7x15e.pcf
	rm *.pcf
	echo "Converted PCF files to BDF."
	;;
*)
	echo "Usage: convert.sh [format]"
	echo "	bdf: Convert from PCF to BDF"
	echo "	pcf: Convert from BDF to PCF"
	;;
esac
