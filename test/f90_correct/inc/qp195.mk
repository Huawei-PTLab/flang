#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test qp195  ########


qp195: run


fcheck.$(OBJX): $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.$(OBJX)

build:  $(SRC)/qp195.f08 fcheck.$(OBJX)
	-$(RM) qp195.$(EXESUFFIX) qp195.$(OBJX)
	@echo ------------------------------------ building test $@
	-$(FC) -Hx,125,2 -c $(FFLAGS) $(LDFLAGS) $(SRC)/qp195.f08 -o qp195.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qp195.$(OBJX) fcheck.$(OBJX) $(LIBS) -o qp195.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qp195
	qp195.$(EXESUFFIX)

verify: ;

qp195.run: run

