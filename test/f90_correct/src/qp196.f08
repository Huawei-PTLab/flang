! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Check if "convert="BIG_ENDIAN" works for complex*16.

module m
  ! Generate big-endian data
  integer(1) :: i(64) = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                         127, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,&
                         0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                         63, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  common // i
end module

program test
  use m
  use check_mod
  integer, parameter :: n = 4
  real(16) :: r(n)
  real(16) :: results(n)
  real(16) :: expects(n) = [0.0_16, huge(1.0_16), tiny(1.0_16), epsilon(1.0_16)]
  common // r
  ! Option convert="BIG_ENDIAN" should write big-endian data
  open(10, file='input', form='UNFORMATTED', status='new', convert="BIG_ENDIAN")
  write(10) r
  close(10)
  open(10, file='input', form='UNFORMATTED', status='old')
  read(10) results
  close(10, status='delete')
  call check(results, expects, n)
end
