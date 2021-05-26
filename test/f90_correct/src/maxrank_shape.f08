!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for SHAPE
!

program p
  implicit none
  real :: a(-1:1,-1:2,-1:3,-1:4,-1:5,-2:1,-2:2,-2:3,-2:4,-2:5,-3:1,-3:2,-3:3,-3:4,-3:5)
  integer :: result(15)
  integer :: expect(15) = [3,4,5,6,7,4,5,6,7,8,5,6,7,8,9]
  
  result = shape(a)
  
  call check(result, expect, 15)
  
end program p
