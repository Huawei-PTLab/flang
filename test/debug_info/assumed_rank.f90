!Check debug info generation for assumed rank arrays with DWARF5 and lower.

!RUN: %flang -gdwarf-4 -S -emit-llvm %s -o - | FileCheck %s --check-prefix=DWARF4
!RUN: %flang -gdwarf-5 -S -emit-llvm %s -o - | FileCheck %s --check-prefix=DWARF5

!DWARF4: call void @llvm.dbg.value(metadata i64* %ararray, metadata [[DLOC:![0-9]+]], metadata !DIExpression())
!DWARF4: !DILocalVariable(name: "ararray"
!DWARF4-SAME: arg: 2
!DWARF4-SAME: type: [[ARTYPE:![0-9]+]])
!DWARF4: [[ARTYPE]] = !DICompositeType(tag: DW_TAG_array_type, baseType: !{{[0-9]+}}, size: {{[0-9]+}}, align: {{[0-9]+}}, elements: [[ELEMS:![0-9]+]], dataLocation: [[DLOC:![0-9]+]])
!DWARF4: [[ELEMS]] = !{[[ELEM1:![0-9]+]], [[ELEM2:![0-9]+]], [[ELEM3:![0-9]+]], [[ELEM4:![0-9]+]], [[ELEM5:![0-9]+]], [[ELEM6:![0-9]+]], [[ELEM7:![0-9]+]], [[ELEM8:![0-9]+]], [[ELEM9:![0-9]+]], [[ELEM10:![0-9]+]], [[ELEM11:![0-9]+]], [[ELEM12:![0-9]+]], [[ELEM13:![0-9]+]], [[ELEM14:![0-9]+]], [[ELEM15:![0-9]+]]}
!DWARF4: [[ELEM1]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 80, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 120, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 112, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM2]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 128, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 168, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 160, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM3]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 176, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 216, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 208, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM4]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 224, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 264, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 256, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM5]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 272, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 312, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 304, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM6]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 320, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 360, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 352, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM7]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 368, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 408, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 400, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM8]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 416, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 456, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 448, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM9]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 464, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 504, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 496, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM10]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 512, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 552, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 544, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM11]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 560, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 600, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 592, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM12]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 608, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 648, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 640, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM13]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 656, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 696, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 688, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM14]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 704, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 744, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 736, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))
!DWARF4: [[ELEM15]] = !DISubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 752, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 792, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 784, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))



!DWARF5: call void @llvm.dbg.value(metadata i64* %ararray, metadata [[DLOC:![0-9]+]], metadata !DIExpression())
!DWARF5: !DILocalVariable(name: "ararray"
!DWARF5-SAME: arg: 2
!DWARF5-SAME: type: [[ARTYPE:![0-9]+]])
!DWARF5: [[ARTYPE]] = !DICompositeType(tag: DW_TAG_array_type, baseType: !{{[0-9]+}}, size: {{[0-9]+}}, align: {{[0-9]+}}, elements: [[ELEMS:![0-9]+]], dataLocation: [[DLOC:![0-9]+]], rank: !DIExpression(DW_OP_push_object_address, DW_OP_plus_uconst, 8, DW_OP_deref, DW_OP_constu, 7, DW_OP_and))
!DWARF5: [[ELEMS]] = !{[[ELEM1:![0-9]+]]}
!DWARF5: [[ELEM1]] = !DIGenericSubrange(lowerBound: !DIExpression(DW_OP_push_object_address, DW_OP_over, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus_uconst, 80, DW_OP_plus, DW_OP_deref), upperBound: !DIExpression(DW_OP_push_object_address, DW_OP_over, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus_uconst, 120, DW_OP_plus, DW_OP_deref), stride: !DIExpression(DW_OP_push_object_address, DW_OP_over, DW_OP_constu, 48, DW_OP_mul, DW_OP_plus_uconst, 112, DW_OP_plus, DW_OP_deref, DW_OP_push_object_address, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_mul))

subroutine sub(ararray)
  real :: ararray(..)
  print *, rank(ararray)
end
