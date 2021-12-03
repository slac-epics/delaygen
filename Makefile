#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG
DIRS := $(DIRS) $(filter-out $(DIRS), configure)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *App))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *app))
ifeq ($(BUILD_IOC),YES)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocBoot))
endif
delaygenApp_DEPEND_DIRS = configure
iocBoot_DEPEND_DIRS   = delaygenApp
include $(TOP)/configure/RULES_TOP
