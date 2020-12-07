! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

! Check if the `INLINE` directive adds function attributes correctly.
! RUN: %flang -S -emit-llvm %s -o - | FileCheck %s --check-prefix=CHECK
! RUN: %flang -O1-S -emit-llvm %s -o - | FileCheck %s --check-prefix=CHECK
! RUN: %flang -O2 -S -emit-llvm %s -o - | FileCheck %s --check-prefix=CHECK
!
! Check that "-Hx,59,2" disables the `INLINE` and `NOINLINE` directives.
! RUN: %flang -Hx,59,2 -S -emit-llvm %s -o - | FileCheck %s --check-prefix=CHECK-DISABLE-PRAGMA

!dir$ inline
real function inline_func(num)
! CHECK: Function Attrs:{{.*}}alwaysinline
! CHECK-NEXT: define float @inline_func_
  implicit none
  real :: num
  inline_func = num + 1234
  return
end function

!dir$ noinline
subroutine noinline_subr(a, b)
! CHECK: Function Attrs:{{.*}}noinline
! CHECK-NEXT: define void @noinline_subr_
  integer, parameter :: m = 10
  integer :: i
  do i = 1, m
    b(i) = a(i) - 1
  end do
end subroutine noinline_subr

! CHECK-DISABLE-PRAGMA-NOT: Function Attrs: alwaysinline
! CHECK-DISABLE-PRAGMA-NOT: Function Attrs: noinline

