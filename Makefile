INS      = $(wildcard *.tex)
OUTS     = $(patsubst %.tex,%.div,$(INS))

.PHONY: all kill watch view

all: $(OUTS)

%.div: %.tex
	tex -interaction=nonstopmode --shell-escape '$<'

clean:
	rm -f *.dvi *.log *.tmp

view: all
	xdg-open main.dvi

watch:
	make --no-print-directory
	while inotifywait -qq -e 'close_write,moved_to,create' '.'; do printf '\n%70s' | tr ' ' '='; printf ' '; date; make --no-print-directory; done
