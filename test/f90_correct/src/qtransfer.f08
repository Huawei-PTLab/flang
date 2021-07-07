!** Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
!** See https://llvm.org/LICENSE.txt for license information.
!** SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

! this test case is test transfer function take quadruple precision
program main
  use check_mod
  complex(8), parameter :: a(3) = transfer([1.1_16, 2.2_16, 3.3_16], [(0.0_8, 0.0_8)])
  complex(8) :: b(3) = transfer([1.1_16, 2.2_16, 3.3_16], [(0.0_8, 0.0_8)])
  complex(8) :: c(3), ra(9), ea(9)
  real(16), parameter :: d(2) = transfer([1,2,3,4,5,6,7,8], [1.0_16])
  real(16), parameter :: e(1) = transfer([1,2,3,4,5,6,7,8], [1.0_16], 1)
  real(16) :: f(2) = transfer([1,2,3,4,5,6,7,8], [1.0_16])
  real(16) :: g(2), ed(2), ee(1), ef(2), eg(2), r(7), er(7)
  ea(1) = (-2.35343736826453540E-185_8,1.9437499999999999_8)
  ea(2) = (-2.35343736826453540E-185_8,2.0124999999999997_8)
  ea(3) = (1.90359856625529316E+185_8,2.0812499999999998_8)
  ea(4) = (-2.35343736826453540E-185_8,1.9437499999999999_8)
  ea(5) = (-2.35343736826453540E-185_8,2.0124999999999997_8)
  ea(6) = (1.90359856625529316E+185_8,2.0812499999999998_8)
  ea(7) = (-2.35343736826453540E-185_8,1.9437499999999999_8)
  ea(8) = (-2.35343736826453540E-185_8,2.0124999999999997_8)
  ea(9) = (1.90359856625529316E+185_8,2.0812499999999998_8)
  ed(1) = 2.05206490704296507903132505531756728E-4936_16
  ed(2) = 4.10412981420537605637899636917792932E-4936_16
  ee(1) = 2.05206490704296507903132505531756728E-4936_16
  ef(1) = 2.05206490704296507903132505531756728E-4936_16
  ef(2) = 4.10412981420537605637899636917792932E-4936_16
  eg(1) = 2.05206490704296507903132505531756728E-4936_16
  eg(2) = 4.10412981420537605637899636917792932E-4936_16
  
  c = transfer([1.1_16, 2.2_16, 3.3_16], [(0.0_8, 0.0_8)])
  g = transfer([1,2,3,4,5,6,7,8], [1.0_16])

  ra(1:3) = a
  ra(4:6) = b
  ra(7:9) = c
  r(1:2) = d
  r(3:3) = e
  r(4:5) = g
  r(6:7) = f
  er(1:2) = ed
  er(3:3) = ee
  er(4:5) = ef
  er(6:7) = eg
  if (all(ra .eq. ea) .neqv. .true.) STOP 1
  call checkr16(r, er, 7)
end
