#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_shape  ########


maxrank_shape: run
	

build:  $(SRC)/maxrank_shape.f08
	-$(RM) maxrank_shape.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_shape.f08 -o maxrank_shape.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_shape.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_shape.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_shape
	maxrank_shape.$(EXESUFFIX)

verify: ;

maxrank_shape.run: run

