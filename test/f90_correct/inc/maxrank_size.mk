#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_size  ########


maxrank_size: run
	

build:  $(SRC)/maxrank_size.f08
	-$(RM) maxrank_size.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_size.f08 -o maxrank_size.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_size.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_size.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_size
	maxrank_size.$(EXESUFFIX)

verify: ;

maxrank_size.run: run

