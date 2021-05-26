!
! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
!
! Fortran 2008 : The maximum rank has been increased to 15. 
! checking for RESHAPE
!

program p
  integer :: a(65536), b(2,2,2,2,2,2,2,2,2,2,2,2,2,2,2)
  logical result, expect
  result = .true.
  expect = .true.
  do i=1,65536
     a(i) = i
  end do
  b = reshape(a(1:65536:2), shape(b))
  do i1=1,2
    do i2=1,2
      do i3=1,2
        do i4=1,2
          do i5=1,2
            do i6=1,2
              do i7=1,2
                do i8=1,2
                  do i9=1,2
                    do i10=1,2
                      do i11=1,2
                        do i12=1,2
                          do i13=1,2
                            do i14=1,2
                              do i15=1,2
                                if (b(i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15) /= &
                                    2*((i1-1)+(i2-1)*2+(i3-1)*4+(i4-1)*8+&
                                      (i5-1)*16+(i6-1)*32+(i7-1)*64+(i8-1)*128+&
                                      (i9-1)*256+(i10-1)*512+(i11-1)*1024+(i12-1)*2048+&
                                      (i13-1)*4096+(i14-1)*8192+(i15-1)*16384)+1) &
                                  result = .false.
                              end do
                            end do
                          end do
                        end do
                      end do
                    end do
                  end do
                end do
              end do
            end do
          end do
        end do
      end do
    end do
  end do
  call check(result, expect, 1)
end program p
