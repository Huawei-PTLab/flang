#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_maxloc  ########


maxrank_maxloc: run
	

build:  $(SRC)/maxrank_maxloc.f08
	-$(RM) maxrank_maxloc.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_maxloc.f08 -o maxrank_maxloc.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_maxloc.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_maxloc.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_maxloc
	maxrank_maxloc.$(EXESUFFIX)

verify: ;

maxrank_maxloc.run: run

