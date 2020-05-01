# Makefile


all:
	make currentStateFile

currentStateFile:
	cat "L’Histomappe.svg" | sed "s/style=\"opacity:0.[0-9]*\">/>/" > /tmp/histmap-temp.svg
	inkscape --export-id=mainContent --export-png=histomap-current-state.png /tmp/histmap-temp.svg
