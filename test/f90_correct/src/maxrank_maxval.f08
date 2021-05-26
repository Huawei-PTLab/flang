!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for MAXVAL and MINVAL
!

program p
  implicit none
  real, dimension(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3) :: a
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15
  logical :: result(2), expect(2)

  forall(i1=1:1,i2=1:3,i3=1:3,i4=1:3,i5=1:3,i6=1:3,i7=1:3,i8=1:3,i9=1:3,i10=1:3,i11=1:3,i12=1:3,i13=1:3,i14=1:3,i15=1:3)
    a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15) = -1
  end forall
  
  a(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2) = 1
  a(1,2,1,2,1,2,1,2,1,2,1,2,1,2,1) = -100 
  
  expect = .true.
  result(1) = maxval(a) .eq. 1
  result(2) = minval(a) .eq. -100
  call check(result, expect, 2)

end program p
