!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!

!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for NORM2(a(:,:,:,:,:,:,:,:,:,:,:,:,:,:,:), dim = 14)
!
program test
  integer, parameter :: n = 14
  integer, parameter :: dim = 14
  real(8) :: a15(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2)
  real(8) :: a14(2,2,2,2,2,2,2,2,2,2,2,2,2,2)
  real(8) :: t(n)
  logical :: result(n), expect(n)
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15
 
  expect = .true.
  result = .false.

  forall(i1=1:2,i2=1:2,i3=1:2,i4=1:2,i5=1:2,i6=1:2,i7=1:2,i8=1:2,i9=1:2,i10=1:2,i11=1:2,i12=1:2,i13=1:2,i14=1:2,i15=1:2)
    a15(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15) = -0.123456890123456_8 + i1 + i2 + i3 + i4 + i5 + i6 +&
    &i7 + i8 + i9 + i10 + i11 + i12 + i13 + i14 + i15
  end forall

  a14 = norm2(a15, dim)
 
  t(1) = 23.170721362514588d0
  t(2) = 24.584314123009328d0
  t(3) = 25.997974408370780d0
  t(4) = 27.411691771538077d0
  t(5) = 28.825457814531141d0
  t(6) = 30.239265709617033d0
  t(7) = 31.653109848738826d0
  t(8) = 33.066985582841276d0
  t(9) = 34.480889025304137d0
  t(10) = 35.894816901815304d0
  t(11) = 37.308766434369709d0
  t(12) = 38.722735250674859d0
  t(13) = 40.136721312700217d0
  t(14) = 41.550722859811600d0

  result(1) = abs((a14(2,1,1,1,1,1,1,1,1,1,1,1,1,1) - t(1))/t(1)) .lt. 1E-15
  result(2) = abs((a14(2,2,1,1,1,1,1,1,1,1,1,1,1,1) - t(2))/t(2)) .lt. 1E-15
  result(3) = abs((a14(2,2,2,1,1,1,1,1,1,1,1,1,1,1) - t(3))/t(3)) .lt. 1E-15
  result(4) = abs((a14(2,2,2,2,1,1,1,1,1,1,1,1,1,1) - t(4))/t(4)) .lt. 1E-15
  result(5) = abs((a14(2,2,2,2,2,1,1,1,1,1,1,1,1,1) - t(5))/t(5)) .lt. 1E-15
  result(6) = abs((a14(2,2,2,2,2,2,1,1,1,1,1,1,1,1) - t(6))/t(6)) .lt. 1E-15
  result(7) = abs((a14(2,2,2,2,2,2,2,1,1,1,1,1,1,1) - t(7))/t(7)) .lt. 1E-15
  result(8) = abs((a14(2,2,2,2,2,2,2,2,1,1,1,1,1,1) - t(8))/t(8)) .lt. 1E-15
  result(9) = abs((a14(2,2,2,2,2,2,2,2,2,1,1,1,1,1) - t(9))/t(9)) .lt. 1E-15
  result(10) = abs((a14(2,2,2,2,2,2,2,2,2,2,1,1,1,1) - t(10))/t(10)) .lt. 1E-15
  result(11) = abs((a14(2,2,2,2,2,2,2,2,2,2,2,1,1,1) - t(11))/t(11)) .lt. 1E-15
  result(12) = abs((a14(2,2,2,2,2,2,2,2,2,2,2,2,1,1) - t(12))/t(12)) .lt. 1E-15
  result(13) = abs((a14(2,2,2,2,2,2,2,2,2,2,2,2,2,1) - t(13))/t(13)) .lt. 1E-15
  result(14) = abs((a14(2,2,2,2,2,2,2,2,2,2,2,2,2,2) - t(14))/t(14)) .lt. 1E-15

  call check(result, expect, n)

end program test
