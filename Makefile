GITBOOK?=gitbook

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/src
OUTPUTDIR=$(BASEDIR)/build


GITHUB_PAGES_BRANCH=gh-pages

.PHONY: help
help:
	@echo '                                                                          '
	@echo 'Makefile for gitbook note                                                 '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make install                        install the node modules           '
	@echo '                                                                          '
	@echo '   make clean                          remove the generated files         '
	@echo '                                                                          '
	@echo '   make serve [PORT=4000]              serve site at http://localhost:4000'
	@echo '                                                                          '
	@echo '   make publish                        generate using production settings '
	@echo '   make github                         upload the web site via gh-pages   '
	@echo '                                                                          '
	@echo '                                                                          '


.PHONY: install
install:
	$(GITBOOK) install $(INPUTDIR)

.PHONY: clean
clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

.PHONY: serve
serve:
ifdef PORT
	$(GITBOOK) serve $(INPUTDIR) $(OUTPUTDIR) --port $(PORT)
else
	$(GITBOOK) serve $(INPUTDIR) $(OUTPUTDIR)
endif

.PHONY: publish
publish: clean
	$(GITBOOK) build $(INPUTDIR) $(OUTPUTDIR)

.PHONY: github
github: publish
	ghp-import -m "make github" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR) -p
	git add .; git commit -m "update node book"; git push origin master
