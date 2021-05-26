!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2
!
program test
  real(4) :: a15(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a14(2,2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a13(2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a12(2,2,2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a11(2,2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a10(2,2,2,2,2,2,2,2,2,2) 
  real(4) :: a9(2,2,2,2,2,2,2,2,2) 
  real(4) :: a8(2,2,2,2,2,2,2,2)
  real(4) :: a7(2,2,2,2,2,2,2)
  logical :: result(8), expect(8) 
  a15 = 1 ; a14 = 1 ; a13 = 1 ; a12 = 1 
  a11 = 1 ; a10 = 1 ; a9  = 1 ; a8  = 1  
  expect = .true.
  result = .false.
  a7 = norm2(a8)
  result(1) = all(abs((a7 - 16.00000)/a7) .lt. 1E-6)
  a8 = norm2(a9)
  result(2) = all(abs((a8 - 22.62742)/a8) .lt. 1E-6)
  a9 = norm2(a10)
  result(3) = all(abs((a9 - 32.00000)/a9) .lt. 1E-6)
  a10 = norm2(a11)
  result(4) = all(abs((a10 - 45.25483)/a10) .lt. 1E-6)
  a11 = norm2(a12)
  result(5) = all(abs((a11 - 64.00000)/a11) .lt. 1E-6)
  a12 = norm2(a13)
  result(6) = all(abs((a12 - 90.50967)/a12) .lt. 1E-6)
  a13 = norm2(a14)
  result(7) = all(abs((a13 - 128.0000)/a13) .lt. 1E-6)
  a14 = norm2(a15)
  result(8) = all(abs((a14 - 181.0193)/a14) .lt. 1E-6)
  
  call check(result, expect, 8)

end program test
