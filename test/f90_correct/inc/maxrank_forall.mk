#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_forall  ########


maxrank_forall: run
	

build:  $(SRC)/maxrank_forall.f08
	-$(RM) maxrank_forall.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_forall.f08 -o maxrank_forall.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_forall.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_forall.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_forall
	maxrank_forall.$(EXESUFFIX)

verify: ;

maxrank_forall.run: run

