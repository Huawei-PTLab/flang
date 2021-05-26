#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_maxval  ########


maxrank_maxval: run
	

build:  $(SRC)/maxrank_maxval.f08
	-$(RM) maxrank_maxval.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_maxval.f08 -o maxrank_maxval.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_maxval.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_maxval.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_maxval
	maxrank_maxval.$(EXESUFFIX)

verify: ;

maxrank_maxval.run: run

