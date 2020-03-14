GITBOOK?=gitbook

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/gitbook
OUTPUTDIR=$(BASEDIR)/build


GITHUB_PAGES_BRANCH=gh-pages

.PHONY: help
help:
	@echo '                                                                          '
	@echo 'Makefile for gitbook note                                                 '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make help                           show help                          '
	@echo '                                                                          '
	@echo '   make install                        install plugins                    '
	@echo '                                                                          '
	@echo '   make clean                          remove the generated files         '
	@echo '                                                                          '
	@echo '   make serve [PORT=4000]              serve site at http://localhost:4000'
	@echo '                                                                          '
	@echo '   make publish                        generate using production settings '
	@echo '   make github                         upload the book via gh-pages       '
	@echo '                                                                          '
	@echo '   make up                             启动服务                            '
	@echo '   make down                           停止服务                            '
	@echo '   make logs                           查看日志                            '
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


.PHONY: up
up:
	docker-compose -f ./deployments/docker-compose.yaml up -d


.PHONY: down
down:
	docker-compose -f ./deployments/docker-compose.yaml down


.PHONY: logs
logs:
	docker-compose -f ./deployments/docker-compose.yaml logs -f


docker-build: publish
	docker build . -t mingz2013/mingz
	docker push mingz2013/mingz
