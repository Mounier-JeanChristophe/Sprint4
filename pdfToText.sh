#!/bin/bash

	if [ ! -d "TEXT" ] 
		then
			$(mkdir TEXT/)
	fi
	for fich in $(ls TEXT)
	do
		rm TEXT/$fich
	done
	for fich in $(find -name "*.pdf")
	do
		$(pdftotext $fich -raw)
	done
	for fich in $(find $1 -name "*.txt" | grep -oP '(?<=/)[^ ]*')
	do 
		mv $fich TEXT	
	done
