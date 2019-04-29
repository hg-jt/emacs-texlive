package = org2ical
version = 1.0
tarname = $(package)
distdir = $(tarname)-$(version)
EMACS=docker run -it --rm -v `pwd`:/docs --entrypoint /docs/build.sh hgjt/emacs-texlive:latest
EMACS_OPT_PRE=
EMACS_OPT_POST=
#SOURCES=agendas/team.org Makefile


.PHONY: build clean help
.DEFAULT_GOAL := help

build: $(package)-combined.ics  ## build .ics files

$(package)-combined.ics:
	$(EMACS) $(EMACS_OPT_PRE) $(EMACS_OPT_POST)

dist: $(distdir).tar.gz  ## build tarball

$(distdir).tar.gz: $(distdir)
	tar cvzf $@ $(distdir)
	rm -rf $(distdir)

$(distdir): $(package)-combined.ics
	mkdir -p $(distdir)
	cp $(package)-combined.ics $(distdir)
	cp agendas/*.ics $(distdir)

clean:  ## clean up all build artifacts
	-rm -f *.{pdf,tex,ics} *~ agendas/*.ics agendas/*~
	-rm -rf $(distdir)
	-rm -f $(distdir).tar.gz

help:  ## print usage information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
