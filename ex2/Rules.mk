include $(MK)/header.mk

TARGETS = app.exe
SUBDIRS = a b

app.exe_DEPS = app.o $(call subtree_tgts,$(d)/a) $(TARGETS_$(d)/b)

include $(MK)/footer.mk
# This is just a convenience - to let you know when make has stopped
# interpreting make files and started their execution.
$(info Rules generated...)
# vim: set ft=make :