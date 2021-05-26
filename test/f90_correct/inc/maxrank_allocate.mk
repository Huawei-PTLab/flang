#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_allocate  ########


maxrank_allocate: run
	

build:  $(SRC)/maxrank_allocate.f08
	-$(RM) maxrank_allocate.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_allocate.f08 -o maxrank_allocate.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_allocate.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_allocate.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_allocate
	maxrank_allocate.$(EXESUFFIX)

verify: ;

maxrank_allocate.run: run

