#! /bin/bash

# Simple script to check movie files for their size and sort them into a
# specified directory. It has some flaws with multiple files in one directory:
# if the first file is 1920p but the rest are not they will be moved anyway.
# Requires the program mediainfo (https://mediaarea.net/en/MediaInfo)

find . -print0 | while IFS= read -r -d '' file
do
	if [ -e "$file" ] ; then
		if [[ ( ${file,,} == *.mp4 ) || ( ${file,,} == *.mkv ) || ( ${file,,} == *.mpg ) || ( ${file,,} == *.avi ) || ( ${file,,} == *.mpeg ) || ( ${file,,} == *.wmv ) ]] ; then
			if [[ $(mediainfo $file | grep Width ) == *"1 280"* ]]; then
			#if [[ $(mediainfo $file | grep Width ) == *"1 920"* ]]; then
				echo "$(basename $file)" will be moved!
				mv $(dirname $file) /targetDIR
				#mv $(dirname $file) /targetDir
			fi
		fi
	fi
done

