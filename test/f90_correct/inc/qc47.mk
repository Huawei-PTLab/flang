#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test qc47  ########


qc47: run


fcheck.$(OBJX): $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.$(OBJX)

build:  $(SRC)/qc47.f08 fcheck.$(OBJX)
	-$(RM) qc47.$(EXESUFFIX) qc47.$(OBJX)
	@echo ------------------------------------ building test $@
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/qc47.f08 -o qc47.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qc47.$(OBJX) fcheck.$(OBJX) $(LIBS) -o qc47.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qc47
	qc47.$(EXESUFFIX)

verify: ;

qc47.run: run
