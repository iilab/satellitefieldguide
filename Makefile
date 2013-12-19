CONTENT_DIR=content
BUILD_DIR=build
DIST_DIR=dist

TEX_DIR=${BUILD_DIR}/tex
BOOK_DIR=${BUILD_DIR}/.

# Only set if not overriden by an environment variable
DATE?=`date +%F`

all: clean install

${BUILD_DIR}:
	mkdir ${BUILD_DIR}

${DIST_DIR}:
	mkdir ${DIST_DIR}

${TEX_DIR}/main.tex: ${BUILD_DIR} convert_to_tex.sh
	./convert_to_tex.sh ${TEX_DIR} ${CONTENT_DIR}

latex-pdf: ${TEX_DIR}/main.tex
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex
	# The second run will fix the TOC
	pdflatex --output-dir=${TEX_DIR} ${TEX_DIR}/main.tex

${BOOK_DIR}/book.md: ${BUILD_DIR}
	./convert_to_md.sh ${BOOK_DIR} ${CONTENT_DIR}

combined: ${BOOK_DIR}/book.md

install: combined latex-pdf ${DIST_DIR}
	cp ${TEX_DIR}/main.pdf ${BOOK_DIR}/../${DIST_DIR}/satellite-field-guide-${DATE}.pdf
	cp ${BOOK_DIR}/book.md ${BOOK_DIR}/../${DIST_DIR}/satellite-field-guide-${DATE}.md
#	./convert_to_epub.sh
#	./convert_to_html.sh ${CONTENT_DIR}
#	(cd ${DIST_DIR}; zip -9qr satellite-field-guide-${DATE}-html.zip satellite-field-guide-${DATE})
#	(cd ${DIST_DIR}; sha256sum satellite-field-guide-${DATE}.* satellite-field-guide-${DATE}-html.zip > SHA256SUM)

clean: ${BUILD_DIR}
	rm -Rf ${BUILD_DIR}/*
	# rm -Rf ${BUILD_DIR}/../cryptoparty-handbook-html
	find . -type l -delete