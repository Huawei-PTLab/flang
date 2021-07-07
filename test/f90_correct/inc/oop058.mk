#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#


########## Make rule for test oop058  ########

fcheck.o check_mod.mod: $(SRC)/check_mod.F90
	-$(FC) -c $(FFLAGS) $(SRC)/check_mod.F90 -o fcheck.o

oop058.o:  $(SRC)/oop058.f90 check_mod.mod
	@echo ------------------------------------ building test $@
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/oop058.f90 -o oop058.o

oop058: oop058.o fcheck.o
	-$(FC) $(FFLAGS) $(LDFLAGS) oop058.o fcheck.o $(LIBS) -o oop058

oop058.run: oop058
	@echo ------------------------------------ executing test oop058
	oop058
	-$(RM) shape_mod.mod

### TA Expected Targets ###

build: $(TEST)

.PHONY: run
run: $(TEST).run

verify: ; 

### End of Expected Targets ###
