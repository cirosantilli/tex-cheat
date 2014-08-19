INS      = $(wildcard *.tex)
OUTS     = $(patsubst %.tex,%.dvi,$(INS))
OUTS_PDF = $(patsubst %.tex,%.pdf,$(INS))

.PHONY: all kill watch view

all: $(OUTS) $(OUTS_PDF)

%.dvi: %.tex
	tex -interaction=nonstopmode --shell-escape '$<'

%.pdf: %.dvi
	dvipdfm '$<'

clean:
	rm -f *.dvi *.log *.pdf *.tmp

view: all
	xdg-open main.dvi

watch:
	make --no-print-directory
	while inotifywait -qq -e 'close_write,moved_to,create' '.'; do printf '\n%70s' | tr ' ' '='; printf ' '; date; make --no-print-directory; done
