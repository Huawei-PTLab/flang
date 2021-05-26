!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2(a(:,:,:,:,:,:,:,:,:), dim = 3)
!
program test
  integer, parameter :: n = 8
  integer, parameter :: dim = 3
  real(4) :: a9(2,2,2,2,2,2,2,2,2)
  real(4) :: a8(2,2,2,2,2,2,2,2)
  real(4) :: t(n)
  logical :: result(n), expect(n)
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9
 
  expect = .true.
  result = .false.

  forall(i1=1:2,i2=1:2,i3=1:2,i4=1:2,i5=1:2,i6=1:2,i7=1:2,i8=1:2,i9=1:2)
    a9(i1,i2,i3,i4,i5,i6,i7,i8,i9) = 0.123456_4 + i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 +i9
  end forall

  a8 = norm2(a9, dim)
 
  t(1) = 15.0404663
  t(2) = 16.4532509
  t(3) = 17.8662605
  t(4) = 19.2794495
  t(5) = 20.6927757
  t(6) = 22.1062145
  t(7) = 23.5197468
  t(8) = 24.9333572

  result(1) = abs((a8(2,1,1,1,1,1,1,1) - t(1))/t(1)) .lt. 1E-6
  result(2) = abs((a8(2,2,1,1,1,1,1,1) - t(2))/t(2)) .lt. 1E-6
  result(3) = abs((a8(2,2,2,1,1,1,1,1) - t(3))/t(3)) .lt. 1E-6
  result(4) = abs((a8(2,2,2,2,1,1,1,1) - t(4))/t(4)) .lt. 1E-6
  result(5) = abs((a8(2,2,2,2,2,1,1,1) - t(5))/t(5)) .lt. 1E-6
  result(6) = abs((a8(2,2,2,2,2,2,1,1) - t(6))/t(6)) .lt. 1E-6
  result(7) = abs((a8(2,2,2,2,2,2,2,1) - t(7))/t(7)) .lt. 1E-6
  result(8) = abs((a8(2,2,2,2,2,2,2,2) - t(8))/t(8)) .lt. 1E-6

  call check(result, expect, n)

end program test
