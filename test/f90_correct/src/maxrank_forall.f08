!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for FORALL and WHERE
!

program p
  implicit none
  real, dimension(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5) :: a, b
  logical, dimension(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5) :: c
  integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15
  logical result, expect
  expect = .true.
  forall(i1=1:1,i2=1:2,i3=1:3,i4=1:4,i5=1:5,i6=1:1,i7=1:2,i8=1:3,i9=1:4,i10=1:5,i11=1:1,i12=1:2,i13=1:3,i14=1:4,i15=1:5)
    a(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15) = -1
    b(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15) = 1
  end forall
  
  where(a < 0)
    a = 1
  end where
     
  c = a .eq. b
  result = all(c)
 
  call check(result, expect, 1)

end program p
