#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test qp196  ########


qp196: run


fcheck.$(OBJX): $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.$(OBJX)

build:  $(SRC)/qp196.f08 fcheck.$(OBJX)
	-$(RM) qp196.$(EXESUFFIX) qp196.$(OBJX)
	@echo ------------------------------------ building test $@
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/qp196.f08 -o qp196.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qp196.$(OBJX) fcheck.$(OBJX) $(LIBS) -o qp196.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qp196
	qp196.$(EXESUFFIX)

verify: ;

qp196.run: run

