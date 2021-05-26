!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2(a(:,:,:,:,:,:,:,:,:,:,:,:), dim = 3)
!
program test
  integer, parameter :: n = 11
  integer, parameter :: dim = 3
  real(4) :: a12(2,2,2,2,2,2,2,2,2,2,2,2)
  real(4) :: a11(2,2,2,2,2,2,2,2,2,2,2)
  real(4) :: t(n)
  logical :: result(n), expect(n)
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12
 
  expect = .true.
  result = .false.

  forall(i1=1:2,i2=1:2,i3=1:2,i4=1:2,i5=1:2,i6=1:2,i7=1:2,i8=1:2,i9=1:2,i10=1:2,i11=1:2,i12=1:2)
    a12(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12) = 0.123456_4 + i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 +&
    &i10 + i11 + i12
  end forall

  a11 = norm2(a12, dim)
 
  t(1) = 19.2794495
  t(2) = 20.6927757
  t(3) = 22.1062145
  t(4) = 23.5197468
  t(5) = 24.9333572
  t(6) = 26.3470325
  t(7) = 27.7607632
  t(8) = 29.1745396
  t(9) = 30.5883579
  t(10) = 32.0022087
  t(11) = 33.4160919

  result(1) = abs((a11(2,1,1,1,1,1,1,1,1,1,1) - t(1))/t(1)) .lt. 1E-6
  result(2) = abs((a11(2,2,1,1,1,1,1,1,1,1,1) - t(2))/t(2)) .lt. 1E-6
  result(3) = abs((a11(2,2,2,1,1,1,1,1,1,1,1) - t(3))/t(3)) .lt. 1E-6
  result(4) = abs((a11(2,2,2,2,1,1,1,1,1,1,1) - t(4))/t(4)) .lt. 1E-6
  result(5) = abs((a11(2,2,2,2,2,1,1,1,1,1,1) - t(5))/t(5)) .lt. 1E-6
  result(6) = abs((a11(2,2,2,2,2,2,1,1,1,1,1) - t(6))/t(6)) .lt. 1E-6
  result(7) = abs((a11(2,2,2,2,2,2,2,1,1,1,1) - t(7))/t(7)) .lt. 1E-6
  result(8) = abs((a11(2,2,2,2,2,2,2,2,1,1,1) - t(8))/t(8)) .lt. 1E-6
  result(9) = abs((a11(2,2,2,2,2,2,2,2,2,1,1) - t(9))/t(9)) .lt. 1E-6
  result(10) = abs((a11(2,2,2,2,2,2,2,2,2,2,1) - t(10))/t(10)) .lt. 1E-6
  result(11) = abs((a11(2,2,2,2,2,2,2,2,2,2,2) - t(11))/t(11)) .lt. 1E-6

  call check(result, expect, n)

end program test
