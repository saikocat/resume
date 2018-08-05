.PHONY: standard

RESOURCES_DIR = ./resources//
CC = xelatex
STANDARD_DIR = standard
RESUME_DIR = standard/resume
CV_DIR = standard/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

export TEXINPUTS=${RESOURCES_DIR}:${TEXINPUTS-.:}

standard: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(STANDARD_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(STANDARD_DIR) $<

cv.pdf: $(STANDARD_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(STANDARD_DIR) $<

coverletter.pdf: $(STANDARD_DIR)/coverletter.tex
	$(CC) -output-directory=$(STANDARD_DIR) $<

clean:
	rm -f $(STANDARD_DIR)/*.pdf
	rm -f $(STANDARD_DIR)/*.aux
	rm -f $(STANDARD_DIR)/*.log
	rm -f $(STANDARD_DIR)/*.out
