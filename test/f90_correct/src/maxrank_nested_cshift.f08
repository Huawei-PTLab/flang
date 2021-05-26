! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! test nested cshift

program t
  integer :: c_result(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
  integer, parameter :: c_expect(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1) = 1
  integer :: a(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
  integer, parameter  :: n = 1
  a = 1
  c_result = cshift(cshift(cshift(cshift(cshift(cshift(cshift(cshift(&
             cshift(cshift(cshift(cshift(cshift(cshift(cshift(a, 1, dim = 1), 1, dim = 2), &
             1, dim = 3), 1, dim = 4), 1, dim = 5), 1, dim = 6), 1, dim= 7), 1, dim = 8), &
             1, dim = 9), 1, dim = 10), 1, dim = 11), 1, dim = 12), 1, dim = 13), &
             1, dim = 14), 1, dim = 15)

  call check(c_result, c_expect, n)
end
