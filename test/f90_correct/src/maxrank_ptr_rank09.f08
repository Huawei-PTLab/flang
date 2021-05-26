! Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
! See https://llvm.org/LICENSE.txt for license information.
! SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

program test 

   use, intrinsic :: iso_c_binding 

   implicit none 

   real, pointer :: ptr(:,:,:,:,:,:,:,:) => NULL() 
   real, pointer :: uin(:,:,:,:,:,:,:,:,:) => NULL() 

   integer, parameter :: n1 = 1 
   integer, parameter :: n2 = 2 
   integer, parameter :: n3 = 3 
   integer, parameter :: n4 = 4 
   integer, parameter :: n5 = 5 
   integer, parameter :: n6 = 1 
   integer, parameter :: n7 = 2 
   integer, parameter :: n8 = 3 
   integer :: i1,i2,i3,i4,i5,i6,i7,i8
   
   allocate(ptr(n1,n2,n3,n4,n5,n6,n7,n8)) 

   forall (i1=1:n1,i2=1:n2,i3=1:n3,i4=1:n4,i5=1:n5,i6=1:n6,i7=1:n7,i8=1:n8) 
     ptr(i1,i2,i3,i4,i5,i6,i7,i8) = 10*i1+i2+i3+i4+i5+i6+i7+i8 
   endforall
   
   call c_f_pointer(c_loc(ptr(1,1,1,1,1,1,1,1)),uin,[n1,n2,n3,n4,n5,n6,n7,n8,1]) 

   do i1 = 1, n1
     do i2 = 1, n2
       do i3 = 1, n3
         do i4 = 1, n4
           do i5 = 1, n5
             do i6 = 1, n6
               do i7 = 1, n7
                 do i8 = 1, n8
                   if(uin(i1,i2,i3,i4,i5,i6,i7,i8,1) /= ptr(i1,i2,i3,i4,i5,i6,i7,i8)) STOP 1
                 enddo
               enddo
             enddo
           enddo
         enddo
       enddo
     enddo
   enddo

   deallocate(ptr) 
   print *, "PASS"

end program test 

