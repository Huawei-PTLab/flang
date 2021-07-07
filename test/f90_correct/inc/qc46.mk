#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test qc46  ########


qc46: run


fcheck.$(OBJX): $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.$(OBJX)

build:  $(SRC)/qc46.f08 fcheck.$(OBJX)
	-$(RM) qc46.$(EXESUFFIX) qc46.$(OBJX)
	@echo ------------------------------------ building test $@
	-$(FC) -Hx,125,2 -c $(FFLAGS) $(LDFLAGS) $(SRC)/qc46.f08 -o qc46.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qc46.$(OBJX) fcheck.$(OBJX) $(LIBS) -o qc46.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qc46
	qc46.$(EXESUFFIX)

verify: ;

qc46.run: run
