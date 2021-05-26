!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for error
!

program test
  integer :: a(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
  integer :: b(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16) !{error "PGF90-S-0047-More than fifteen dimensions specified for array"}
end
