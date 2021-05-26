!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for LBOUND and UBOUND
!

program p
  implicit none
  real :: a(-1:1,-1:2,-1:3,-1:4,-1:5,-2:1,-2:2,-2:3,-2:4,-2:5,-3:1,-3:2,-3:3,-3:4,-3:5)
  integer :: result(30), expect(30)
  integer :: expect1(15) = [-1,-1,-1,-1,-1,-2,-2,-2,-2,-2,-3,-3,-3,-3,-3]
  integer :: expect2(15) = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5]

  expect(1:15) = expect1(1:15)
  expect(16:30) = expect2(1:15)
  result(1:15) = lbound(a)
  result(16:30) = ubound(a)
  call check(result, expect, 30)
  
end program p
