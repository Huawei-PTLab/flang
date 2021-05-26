!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for SIZE
!

program p
  implicit none
  real :: a(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
  integer :: result
  integer :: expect = 1*2*3*4*5*1*2*3*4*5*1*2*3*4*5
  
  result = size(a)

  call check(result, expect, 1)
  
end program p
