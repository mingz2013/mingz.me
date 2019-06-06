GITBOOK?=gitbook

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/src
OUTPUTDIR=$(BASEDIR)/build


GITHUB_PAGES_BRANCH=gh-pages


help:
	@echo 'Makefile for a pelican Web site                                           '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make clean                          remove the generated files         '

	@echo '   make publish                        generate using production settings '
	@echo '   make serve [PORT=4000]              serve site at http://localhost:8000'

	@echo '   make github                         upload the web site via gh-pages   '
	@echo '                                                                          '

	@echo '                                                                          '


clean:
	# [ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)
	rm -rf $(OUTPUTDIR)/*


serve:
ifdef PORT
	$(GITBOOK) serve $(INPUTDIR) $(OUTPUTDIR) --port $(PORT)
else
	$(GITBOOK) serve $(INPUTDIR) $(OUTPUTDIR)
endif


publish:
	$(GITBOOK) build $(INPUTDIR) $(OUTPUTDIR)


github: publish
	ghp-import -m "make github" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR) -p
	git add .; git commit -m "update web site"; git push origin master

.PHONY: html help clean regenerate serve serve-global devserver publish ssh_upload rsync_upload dropbox_upload ftp_upload s3_upload cf_upload github
