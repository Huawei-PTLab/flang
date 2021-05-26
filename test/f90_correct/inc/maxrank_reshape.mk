#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_reshape  ########


maxrank_reshape: run
	

build:  $(SRC)/maxrank_reshape.f08
	-$(RM) maxrank_reshape.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_reshape.f08 -o maxrank_reshape.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_reshape.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_reshape.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_reshape
	maxrank_reshape.$(EXESUFFIX)

verify: ;

maxrank_reshape.run: run

