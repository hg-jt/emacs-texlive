EMACS=docker run -it --rm -v `pwd`:/docs --entrypoint emacs hgjt/emacs-texlive:latest
EMACS_OPT_PRE=-l /root/emacs.el --batch --visit
EMACS_OPT_POST=--eval '(org-reveal-export-to-html)'
SOURCES=presentation.org Makefile

.PHONY: build clean help
.DEFAULT_GOAL := help

build: presentation.html  ## build simpledoc PDF

presentation.html: $(SOURCES)
	$(EMACS) $(EMACS_OPT_PRE) presentation.org $(EMACS_OPT_POST)

clean:  ## clean up all build artifacts
	rm -f presentation.html

help:  ## print usage information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
