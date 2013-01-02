CACHE_DIR := $(wildcard ~/.cache/common-lisp/sbcl-*)
PROJECT_DIR := $(shell pwd)
COMPILE_DIR := $(CACHE_DIR)$(PROJECT_DIR)
CONTRIB = contrib
QL_INSTALLER = $(CONTRIB)/quicklisp.lisp
QUICKLISP = ~/quicklisp

$(QUICKLISP):
	cd $(CONTRIB) && \
	curl -O http://beta.quicklisp.org/quicklisp.lisp && \
	sbcl --non-interactive --load setup-quicklisp.lisp

deps: $(QUICKLISP)

clean-compiled:
ifneq ($(CACHE_DIR),)
	rm -rfv $(COMPILE_DIR)
endif

clean: clean-compiled
	rm $(QL_INSTALLER)

check: deps clean-compiled
	sbcl --non-interactive --load runtests.lisp
