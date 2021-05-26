#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_product  ########


maxrank_product: run
	

build:  $(SRC)/maxrank_product.f08
	-$(RM) maxrank_product.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_product.f08 -o maxrank_product.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_product.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_product.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_product
	maxrank_product.$(EXESUFFIX)

verify: ;

maxrank_product.run: run

