!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2
!

program p
  real(8) :: a15(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a14(2,2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a13(2,2,2,2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a12(2,2,2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a11(2,2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a10(2,2,2,2,2,2,2,2,2,2) 
  real(8) :: a9(2,2,2,2,2,2,2,2,2) 
  real(8) :: a8(2,2,2,2,2,2,2,2)
  real(8) :: r(8), e(8)
  logical :: result(8), expect(8) 
  a15 = 1 ; a14 = 1 ; a13 = 1 ; a12 = 1 
  a11 = 1 ; a10 = 1 ; a9  = 1 ; a8  = 1  
  expect = .true.
  result = .false.
  r(1) = norm2(a15)
  r(2) = norm2(a14)
  r(3) = norm2(a13)
  r(4) = norm2(a12)
  r(5) = norm2(a11)
  r(6) = norm2(a10)
  r(7) = norm2(a9)
  r(8) = norm2(a8)
  
  e(1) = 181.019335983756d0    
  e(2) = 128.0000000000000d0    
  e(3) = 90.50966799187809d0    
  e(4) = 64.00000000000000d0
  e(5) = 45.25483399593904d0
  e(6) = 32.00000000000000d0
  e(7) = 22.62741699796952d0
  e(8) = 16.00000000000000d0
  print *, r 
  do i = 1,8
    result(i) = abs((r(i)-e(i))/r(i)) .lt. 1E-15
  end do 
 
  call check(result, expect, 8)

end program p
