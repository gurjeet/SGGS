#!/bin/bash

FILE_NAME=SGGS.html
SAMPLE_FILE_NAME=index.html

head -$(grep --max-count 1 --line-number 'SAMPLE PAGE END' ${FILE_NAME} | cut -d : -f 1) ${FILE_NAME} \
	| sed 's|<!-- SAMPLE PAGE END; processed by generate_sample.sh \(.*\) -->|\1|' > ${SAMPLE_FILE_NAME}

#echo '</div><p style=text-align:center>End of sample page. See full page <a href="SGGS.html">SGGS (about 13 MB)</a></p></body></html>' >> ${SAMPLE_FILE_NAME}


