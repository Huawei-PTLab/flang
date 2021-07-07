#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test precision00  ########


precision00: run
	

build:  $(SRC)/precision00.f08
	-$(RM) precision00.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/precision00.f08  -o precision00.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) precision00.$(OBJX) check.$(OBJX) $(LIBS) -o precision00.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test precision00
	precision00.$(EXESUFFIX)

verify: ;

precision00.run: run

