default: html

all: html pdf text ps pod #latex

html: lwq.sdf
	sdf -2html lwq.sdf

pdf: lwq.sdf
	sdf -2pdf_html lwq.sdf

ps: lwq.sdf
	sdf -2ps_html lwq.sdf

text: lwq.sdf
	sdf -2txt lwq.sdf

latex: lwq.sdf
	sdf -2latex_pod lwq.sdf

pod: lwq.sdf
	sdf -2pod lwq.sdf

web:
	(cd ~/web/bsws; make)
	(cd ~/web/infoave; make)
