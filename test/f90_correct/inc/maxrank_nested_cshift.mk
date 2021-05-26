#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test cshift ########


maxrank_nested_cshift: run


build:  $(SRC)/maxrank_nested_cshift.f08
	-$(RM) maxrank_nested_cshift.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_nested_cshift.f08 -o maxrank_nested_cshift.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_nested_cshift.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_nested_cshift.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_nested_cshift
	maxrank_nested_cshift.$(EXESUFFIX)

verify: ;

maxrank_nested_cshifted.run: run

