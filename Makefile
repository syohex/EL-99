.PHONY : test

EMACS ?= emacs

LOADPATH = -L . -L t

test:
	$(EMACS) -Q -batch $(LOADPATH) \
		-l t/test.el \
		-f ert-run-tests-batch-and-exit
