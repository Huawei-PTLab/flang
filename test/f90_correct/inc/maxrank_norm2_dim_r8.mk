#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test maxrank_norm2_dim_r8  ########


maxrank_norm2_dim_r8: run
	

build:  $(SRC)/maxrank_norm2_dim_r8.f08
	-$(RM) maxrank_norm2_dim_r8.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/maxrank_norm2_dim_r8.f08 -o maxrank_norm2_dim_r8.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) maxrank_norm2_dim_r8.$(OBJX) check.$(OBJX) $(LIBS) -o maxrank_norm2_dim_r8.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test maxrank_norm2_dim_r8
	maxrank_norm2_dim_r8.$(EXESUFFIX)

verify: ;

maxrank_norm2_dim_r8.run: run

