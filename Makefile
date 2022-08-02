THEME_VERSION := v0.33.1
THEME := hugo-geekdoc
BASEDIR := ''
THEMEDIR := themes

.PHONY: doc
doc: doc-assets doc-build

.PHONY: doc-assets
doc-assets:
	mkdir -p $(THEMEDIR)/$(THEME)/ ; \
	curl -sSL "https://github.com/thegeeklab/$(THEME)/releases/download/${THEME_VERSION}/$(THEME).tar.gz" | tar -xz -C $(THEMEDIR)/$(THEME)/ --strip-components=1

.PHONY: doc-build
doc-build:
	hugo

.PHONY: clean
clean:
	rm -rf $(THEMEDIR) && \
	rm -rf public