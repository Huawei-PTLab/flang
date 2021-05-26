#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_bound  ########


maxrank_bound: run
	

build:  $(SRC)/maxrank_bound.f08
	-$(RM) maxrank_bound.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_bound.f08 -o maxrank_bound.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_bound.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_bound.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_bound
	maxrank_bound.$(EXESUFFIX)

verify: ;

maxrank_bound.run: run

