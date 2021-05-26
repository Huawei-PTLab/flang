!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2(a(:,:,:,:,:,:,:,:,:,:,:), dim = 6)
!
program test
  integer, parameter :: n = 10
  integer, parameter :: dim = 6
  real(8) :: a11(2,2,2,2,2,2,2,2,2,2,2)
  real(8) :: a10(2,2,2,2,2,2,2,2,2,2)
  real(8) :: t(n)
  logical :: result(n), expect(n)
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11
 
  expect = .true.
  result = .false.

  forall(i1=1:2,i2=1:2,i3=1:2,i4=1:2,i5=1:2,i6=1:2,i7=1:2,i8=1:2,i9=1:2,i10=1:2,i11=1:2)
    a11(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11) = -0.123456890123456_8 + i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 +&
    &i10 + i11
  end forall

  a10 = norm2(a11, dim)
 
  t(1) = 17.517352502626220d0
  t(2) = 18.930499495279335d0
  t(3) = 20.343794719281785d0
  t(4) = 21.757209288412511d0
  t(5) = 23.170721362514588d0
  t(6) = 24.584314123009328d0
  t(7) = 25.997974408370780d0
  t(8) = 27.411691771538077d0
  t(9) = 28.825457814531141d0
  t(10) = 30.239265709617033d0

  result(1) = abs((a10(2,1,1,1,1,1,1,1,1,1) - t(1))/t(1)) .lt. 1E-15
  result(2) = abs((a10(2,2,1,1,1,1,1,1,1,1) - t(2))/t(2)) .lt. 1E-15
  result(3) = abs((a10(2,2,2,1,1,1,1,1,1,1) - t(3))/t(3)) .lt. 1E-15
  result(4) = abs((a10(2,2,2,2,1,1,1,1,1,1) - t(4))/t(4)) .lt. 1E-15
  result(5) = abs((a10(2,2,2,2,2,1,1,1,1,1) - t(5))/t(5)) .lt. 1E-15
  result(6) = abs((a10(2,2,2,2,2,2,1,1,1,1) - t(6))/t(6)) .lt. 1E-15
  result(7) = abs((a10(2,2,2,2,2,2,2,1,1,1) - t(7))/t(7)) .lt. 1E-15
  result(8) = abs((a10(2,2,2,2,2,2,2,2,1,1) - t(8))/t(8)) .lt. 1E-15
  result(9) = abs((a10(2,2,2,2,2,2,2,2,2,1) - t(9))/t(9)) .lt. 1E-15
  result(10) = abs((a10(2,2,2,2,2,2,2,2,2,2) - t(10))/t(10)) .lt. 1E-15

  call check(result, expect, n)

end program test
