! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Check if opition -Hx,125,2 works with quad-precision data.

module m
  ! Generate big-endian data
  integer(1) :: i(128) = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                          127, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,&
                          127, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,&
                          0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                          0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                          63, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,&
                          63, -113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
end module

program test
  use m
  use check_mod
  integer, parameter :: n = 4
  logical :: results(n), expects(n)
  real(16), parameter :: huger16 = huge(1.0_16)
  real(16), parameter :: tinyr16 = tiny(1.0_16)
  real(16), parameter :: epsilonr16 = epsilon(1.0_16)
  complex(16) :: a(n)
  complex(16) :: b(n) = [(0.0_16, 0.0_16),&
                         (huger16, huger16),&
                         (tinyr16, tinyr16),&
                         (epsilonr16, epsilonr16)]
  results = .false.
  expects = .true.
  open(10, file='input', form='UNFORMATTED', status='new')
  write(10) i
  close(10)
  open(10, file='input', form='UNFORMATTED', status='old')
  ! Option -Hx,125,2 should read the correct data
  read(10) a
  close(10, status='delete')
  results(1) = a(1) .eq. b(1)
  results(2) = a(2) .eq. b(2)
  results(3) = a(3) .eq. b(3)
  results(4) = a(4) .eq. b(4)
  call check(results, expects, n)
end
