#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test chartoq  ########


qc00: run
	

fcheck.$(OBJX): $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.$(OBJX)

build:  $(SRC)/qc00.f08 fcheck.$(OBJX)
	-$(RM) qc00.$(EXESUFFIX) qc00.$(OBJX)
	@echo ------------------------------------ building test $@
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/qc00.f08 -o qc00.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qc00.$(OBJX) fcheck.$(OBJX) $(LIBS) -o qc00.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qc00
	qc00.$(EXESUFFIX)

verify: ;

qc00.run: run

