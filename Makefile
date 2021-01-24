
VERSION := $(shell perl -nlE '/^;; Version: (.*)/ && print $$1;' pydoc-info.el)

DIST := pydoc-info-$(VERSION)


all: dist

dist:
	rm -rf $(DIST)/
	mkdir $(DIST)
	cp pydoc-info.el pydoc-info-pkg.el $(DIST)
	tar cf $(DIST).tar $(DIST)

clean:
	-rm *.elc
	-rm -rf $(DIST) $(DIST).tar
