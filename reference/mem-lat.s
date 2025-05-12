
mem-lat:     file format elf64-x86-64


Disassembly of section .note.gnu.property:

0000000000000350 <.note.gnu.property>:
 350:	04 00                	add    $0x0,%al
 352:	00 00                	add    %al,(%rax)
 354:	30 00                	xor    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	05 00 00 00 47       	add    $0x47000000,%eax
 35d:	4e 55                	rex.WRX push %rbp
 35f:	00 02                	add    %al,(%rdx)
 361:	80 00 c0             	addb   $0xc0,(%rax)
 364:	04 00                	add    $0x0,%al
 366:	00 00                	add    %al,(%rax)
 368:	01 00                	add    %eax,(%rax)
 36a:	00 00                	add    %al,(%rax)
 36c:	00 00                	add    %al,(%rax)
 36e:	00 00                	add    %al,(%rax)
 370:	01 00                	add    %eax,(%rax)
 372:	01 c0                	add    %eax,%eax
 374:	04 00                	add    $0x0,%al
 376:	00 00                	add    %al,(%rax)
 378:	09 00                	or     %eax,(%rax)
 37a:	00 00                	add    %al,(%rax)
 37c:	00 00                	add    %al,(%rax)
 37e:	00 00                	add    %al,(%rax)
 380:	02 00                	add    (%rax),%al
 382:	01 c0                	add    %eax,%eax
 384:	04 00                	add    $0x0,%al
 386:	00 00                	add    %al,(%rax)
 388:	01 00                	add    %eax,(%rax)
 38a:	00 00                	add    %al,(%rax)
 38c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000390 <.note.gnu.build-id>:
 390:	04 00                	add    $0x0,%al
 392:	00 00                	add    %al,(%rax)
 394:	14 00                	adc    $0x0,%al
 396:	00 00                	add    %al,(%rax)
 398:	03 00                	add    (%rax),%eax
 39a:	00 00                	add    %al,(%rax)
 39c:	47                   	rex.RXB
 39d:	4e 55                	rex.WRX push %rbp
 39f:	00 fe                	add    %bh,%dh
 3a1:	b4 89                	mov    $0x89,%ah
 3a3:	c1 55 e8 65          	rcll   $0x65,-0x18(%rbp)
 3a7:	f6 2e                	imulb  (%rsi)
 3a9:	97                   	xchg   %eax,%edi
 3aa:	00 6d 44             	add    %ch,0x44(%rbp)
 3ad:	76 e9                	jbe    398 <_init-0xc68>
 3af:	6a 1b                	push   $0x1b
 3b1:	91                   	xchg   %eax,%ecx
 3b2:	aa                   	stos   %al,%es:(%rdi)
 3b3:	6c                   	insb   (%dx),%es:(%rdi)

Disassembly of section .interp:

00000000000003b4 <.interp>:
 3b4:	2f                   	(bad)
 3b5:	6c                   	insb   (%dx),%es:(%rdi)
 3b6:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 3bd:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 3c2:	78 2d                	js     3f1 <_init-0xc0f>
 3c4:	78 38                	js     3fe <_init-0xc02>
 3c6:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 3cc:	6f                   	outsl  %ds:(%rsi),(%dx)
 3cd:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .gnu.hash:

00000000000003d0 <.gnu.hash>:
 3d0:	01 00                	add    %eax,(%rax)
 3d2:	00 00                	add    %al,(%rax)
 3d4:	01 00                	add    %eax,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000003f0 <.dynsym>:
	...
 408:	17                   	(bad)
 409:	00 00                	add    %al,(%rax)
 40b:	00 12                	add    %dl,(%rdx)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 46 00             	add    %al,0x0(%rsi)
 422:	00 00                	add    %al,(%rax)
 424:	12 00                	adc    (%rax),%al
	...
 436:	00 00                	add    %al,(%rax)
 438:	9e                   	sahf
 439:	00 00                	add    %al,(%rax)
 43b:	00 20                	add    %ah,(%rax)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 01                	add    %al,(%rcx)
 451:	00 00                	add    %al,(%rax)
 453:	00 12                	add    %dl,(%rdx)
	...
 465:	00 00                	add    %al,(%rax)
 467:	00 06                	add    %al,(%rsi)
 469:	00 00                	add    %al,(%rax)
 46b:	00 12                	add    %dl,(%rdx)
	...
 47d:	00 00                	add    %al,(%rax)
 47f:	00 6e 00             	add    %ch,0x0(%rsi)
 482:	00 00                	add    %al,(%rax)
 484:	12 00                	adc    (%rax),%al
	...
 496:	00 00                	add    %al,(%rax)
 498:	67 00 00             	add    %al,(%eax)
 49b:	00 12                	add    %dl,(%rdx)
	...
 4ad:	00 00                	add    %al,(%rax)
 4af:	00 28                	add    %ch,(%rax)
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 12                	add    %dl,(%rdx)
	...
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 ba 00 00 00 20    	add    %bh,0x20000000(%rdx)
	...
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 3f                	add    %bh,(%rdi)
 4e1:	00 00                	add    %al,(%rax)
 4e3:	00 12                	add    %dl,(%rdx)
	...
 4f5:	00 00                	add    %al,(%rax)
 4f7:	00 21                	add    %ah,(%rcx)
 4f9:	00 00                	add    %al,(%rax)
 4fb:	00 12                	add    %dl,(%rdx)
	...
 50d:	00 00                	add    %al,(%rax)
 50f:	00 3a                	add    %bh,(%rdx)
 511:	00 00                	add    %al,(%rax)
 513:	00 12                	add    %dl,(%rdx)
	...
 525:	00 00                	add    %al,(%rax)
 527:	00 1c 00             	add    %bl,(%rax,%rax,1)
 52a:	00 00                	add    %al,(%rax)
 52c:	12 00                	adc    (%rax),%al
	...
 53e:	00 00                	add    %al,(%rax)
 540:	c9                   	leave
 541:	00 00                	add    %al,(%rax)
 543:	00 20                	add    %ah,(%rax)
	...
 555:	00 00                	add    %al,(%rax)
 557:	00 58 00             	add    %bl,0x0(%rax)
 55a:	00 00                	add    %al,(%rax)
 55c:	22 00                	and    (%rax),%al
	...
 56e:	00 00                	add    %al,(%rax)
 570:	35 00 00 00 12       	xor    $0x12000000,%eax
	...

Disassembly of section .dynstr:

0000000000000588 <.dynstr>:
 588:	00 70 75             	add    %dh,0x75(%rax)
 58b:	74 73                	je     600 <_init-0xa00>
 58d:	00 5f 5f             	add    %bl,0x5f(%rdi)
 590:	73 74                	jae    606 <_init-0x9fa>
 592:	61                   	(bad)
 593:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 596:	63 68 6b             	movsxd 0x6b(%rax),%ebp
 599:	5f                   	pop    %rdi
 59a:	66 61                	data16 (bad)
 59c:	69 6c 00 66 72 65 65 	imul   $0x656572,0x66(%rax,%rax,1),%ebp
 5a3:	00 
 5a4:	65 78 69             	gs js  610 <_init-0x9f0>
 5a7:	74 00                	je     5a9 <_init-0xa57>
 5a9:	6d                   	insl   (%dx),%es:(%rdi)
 5aa:	75 6e                	jne    61a <_init-0x9e6>
 5ac:	6d                   	insl   (%dx),%es:(%rdi)
 5ad:	61                   	(bad)
 5ae:	70 00                	jo     5b0 <_init-0xa50>
 5b0:	67 65 74 74          	addr32 gs je 628 <_init-0x9d8>
 5b4:	69 6d 65 6f 66 64 61 	imul   $0x6164666f,0x65(%rbp),%ebp
 5bb:	79 00                	jns    5bd <_init-0xa43>
 5bd:	72 61                	jb     620 <_init-0x9e0>
 5bf:	6e                   	outsb  %ds:(%rsi),(%dx)
 5c0:	64 00 61 74          	add    %ah,%fs:0x74(%rcx)
 5c4:	6f                   	outsl  %ds:(%rsi),(%dx)
 5c5:	69 00 6d 61 6c 6c    	imul   $0x6c6c616d,(%rax),%eax
 5cb:	6f                   	outsl  %ds:(%rsi),(%dx)
 5cc:	63 00                	movsxd (%rax),%eax
 5ce:	5f                   	pop    %rdi
 5cf:	5f                   	pop    %rdi
 5d0:	6c                   	insb   (%dx),%es:(%rdi)
 5d1:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 5d8:	72 74                	jb     64e <_init-0x9b2>
 5da:	5f                   	pop    %rdi
 5db:	6d                   	insl   (%dx),%es:(%rdi)
 5dc:	61                   	(bad)
 5dd:	69 6e 00 5f 5f 63 78 	imul   $0x78635f5f,0x0(%rsi),%ebp
 5e4:	61                   	(bad)
 5e5:	5f                   	pop    %rdi
 5e6:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 5ec:	7a 65                	jp     653 <_init-0x9ad>
 5ee:	00 70 72             	add    %dh,0x72(%rax)
 5f1:	69 6e 74 66 00 6d 6d 	imul   $0x6d6d0066,0x74(%rsi),%ebp
 5f8:	61                   	(bad)
 5f9:	70 00                	jo     5fb <_init-0xa05>
 5fb:	6c                   	insb   (%dx),%es:(%rdi)
 5fc:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
 603:	36 00 47 4c          	ss add %al,0x4c(%rdi)
 607:	49                   	rex.WB
 608:	42                   	rex.X
 609:	43 5f                	rex.XB pop %r15
 60b:	32 2e                	xor    (%rsi),%ch
 60d:	34 00                	xor    $0x0,%al
 60f:	47                   	rex.RXB
 610:	4c                   	rex.WR
 611:	49                   	rex.WB
 612:	42                   	rex.X
 613:	43 5f                	rex.XB pop %r15
 615:	32 2e                	xor    (%rsi),%ch
 617:	33 34 00             	xor    (%rax,%rax,1),%esi
 61a:	47                   	rex.RXB
 61b:	4c                   	rex.WR
 61c:	49                   	rex.WB
 61d:	42                   	rex.X
 61e:	43 5f                	rex.XB pop %r15
 620:	32 2e                	xor    (%rsi),%ch
 622:	32 2e                	xor    (%rsi),%ch
 624:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 629:	4d 5f                	rex.WRB pop %r15
 62b:	64 65 72 65          	fs gs jb 694 <_init-0x96c>
 62f:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 636:	4d 
 637:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 639:	6f                   	outsl  %ds:(%rsi),(%dx)
 63a:	6e                   	outsb  %ds:(%rsi),(%dx)
 63b:	65 54                	gs push %rsp
 63d:	61                   	(bad)
 63e:	62 6c 65 00 5f       	(bad)
 643:	5f                   	pop    %rdi
 644:	67 6d                	insl   (%dx),%es:(%edi)
 646:	6f                   	outsl  %ds:(%rsi),(%dx)
 647:	6e                   	outsb  %ds:(%rsi),(%dx)
 648:	5f                   	pop    %rdi
 649:	73 74                	jae    6bf <_init-0x941>
 64b:	61                   	(bad)
 64c:	72 74                	jb     6c2 <_init-0x93e>
 64e:	5f                   	pop    %rdi
 64f:	5f                   	pop    %rdi
 650:	00 5f 49             	add    %bl,0x49(%rdi)
 653:	54                   	push   %rsp
 654:	4d 5f                	rex.WRB pop %r15
 656:	72 65                	jb     6bd <_init-0x943>
 658:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 65f:	4d 
 660:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 662:	6f                   	outsl  %ds:(%rsi),(%dx)
 663:	6e                   	outsb  %ds:(%rsi),(%dx)
 664:	65 54                	gs push %rsp
 666:	61                   	(bad)
 667:	62                   	.byte 0x62
 668:	6c                   	insb   (%dx),%es:(%rdi)
 669:	65                   	gs
	...

Disassembly of section .gnu.version:

000000000000066c <.gnu.version>:
 66c:	00 00                	add    %al,(%rax)
 66e:	02 00                	add    (%rax),%al
 670:	03 00                	add    (%rax),%eax
 672:	01 00                	add    %eax,(%rax)
 674:	02 00                	add    (%rax),%al
 676:	04 00                	add    $0x0,%al
 678:	02 00                	add    (%rax),%al
 67a:	02 00                	add    (%rax),%al
 67c:	02 00                	add    (%rax),%al
 67e:	01 00                	add    %eax,(%rax)
 680:	02 00                	add    (%rax),%al
 682:	02 00                	add    (%rax),%al
 684:	02 00                	add    (%rax),%al
 686:	02 00                	add    (%rax),%al
 688:	01 00                	add    %eax,(%rax)
 68a:	02 00                	add    (%rax),%al
 68c:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000690 <.gnu.version_r>:
 690:	01 00                	add    %eax,(%rax)
 692:	03 00                	add    (%rax),%eax
 694:	73 00                	jae    696 <_init-0x96a>
 696:	00 00                	add    %al,(%rax)
 698:	10 00                	adc    %al,(%rax)
 69a:	00 00                	add    %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	00 00                	add    %al,(%rax)
 6a0:	14 69                	adc    $0x69,%al
 6a2:	69 0d 00 00 04 00 7d 	imul   $0x7d,0x40000(%rip),%ecx        # 406ac <_end+0x3c63c>
 6a9:	00 00 00 
 6ac:	10 00                	adc    %al,(%rax)
 6ae:	00 00                	add    %al,(%rax)
 6b0:	b4 91                	mov    $0x91,%ah
 6b2:	96                   	xchg   %eax,%esi
 6b3:	06                   	(bad)
 6b4:	00 00                	add    %al,(%rax)
 6b6:	03 00                	add    (%rax),%eax
 6b8:	87 00                	xchg   %eax,(%rax)
 6ba:	00 00                	add    %al,(%rax)
 6bc:	10 00                	adc    %al,(%rax)
 6be:	00 00                	add    %al,(%rax)
 6c0:	75 1a                	jne    6dc <_init-0x924>
 6c2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 6c8:	92                   	xchg   %eax,%edx
 6c9:	00 00                	add    %al,(%rax)
 6cb:	00 00                	add    %al,(%rax)
 6cd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000006d0 <.rela.dyn>:
 6d0:	d0 3d 00 00 00 00    	sarb   $1,0x0(%rip)        # 6d6 <_init-0x92a>
 6d6:	00 00                	add    %al,(%rax)
 6d8:	08 00                	or     %al,(%rax)
 6da:	00 00                	add    %al,(%rax)
 6dc:	00 00                	add    %al,(%rax)
 6de:	00 00                	add    %al,(%rax)
 6e0:	d0 11                	rclb   $1,(%rcx)
 6e2:	00 00                	add    %al,(%rax)
 6e4:	00 00                	add    %al,(%rax)
 6e6:	00 00                	add    %al,(%rax)
 6e8:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 6ee <_init-0x912>
 6ee:	00 00                	add    %al,(%rax)
 6f0:	08 00                	or     %al,(%rax)
 6f2:	00 00                	add    %al,(%rax)
 6f4:	00 00                	add    %al,(%rax)
 6f6:	00 00                	add    %al,(%rax)
 6f8:	80 11 00             	adcb   $0x0,(%rcx)
 6fb:	00 00                	add    %al,(%rax)
 6fd:	00 00                	add    %al,(%rax)
 6ff:	00 60 40             	add    %ah,0x40(%rax)
 702:	00 00                	add    %al,(%rax)
 704:	00 00                	add    %al,(%rax)
 706:	00 00                	add    %al,(%rax)
 708:	08 00                	or     %al,(%rax)
 70a:	00 00                	add    %al,(%rax)
 70c:	00 00                	add    %al,(%rax)
 70e:	00 00                	add    %al,(%rax)
 710:	60                   	(bad)
 711:	40 00 00             	rex add %al,(%rax)
 714:	00 00                	add    %al,(%rax)
 716:	00 00                	add    %al,(%rax)
 718:	c0 3f 00             	sarb   $0x0,(%rdi)
 71b:	00 00                	add    %al,(%rax)
 71d:	00 00                	add    %al,(%rax)
 71f:	00 06                	add    %al,(%rsi)
 721:	00 00                	add    %al,(%rax)
 723:	00 02                	add    %al,(%rdx)
	...
 72d:	00 00                	add    %al,(%rax)
 72f:	00 c8                	add    %cl,%al
 731:	3f                   	(bad)
 732:	00 00                	add    %al,(%rax)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	06                   	(bad)
 739:	00 00                	add    %al,(%rax)
 73b:	00 03                	add    %al,(%rbx)
	...
 745:	00 00                	add    %al,(%rax)
 747:	00 d0                	add    %dl,%al
 749:	3f                   	(bad)
 74a:	00 00                	add    %al,(%rax)
 74c:	00 00                	add    %al,(%rax)
 74e:	00 00                	add    %al,(%rax)
 750:	06                   	(bad)
 751:	00 00                	add    %al,(%rax)
 753:	00 09                	add    %cl,(%rcx)
	...
 75d:	00 00                	add    %al,(%rax)
 75f:	00 d8                	add    %bl,%al
 761:	3f                   	(bad)
 762:	00 00                	add    %al,(%rax)
 764:	00 00                	add    %al,(%rax)
 766:	00 00                	add    %al,(%rax)
 768:	06                   	(bad)
 769:	00 00                	add    %al,(%rax)
 76b:	00 0e                	add    %cl,(%rsi)
	...
 775:	00 00                	add    %al,(%rax)
 777:	00 e0                	add    %ah,%al
 779:	3f                   	(bad)
 77a:	00 00                	add    %al,(%rax)
 77c:	00 00                	add    %al,(%rax)
 77e:	00 00                	add    %al,(%rax)
 780:	06                   	(bad)
 781:	00 00                	add    %al,(%rax)
 783:	00 0f                	add    %cl,(%rdi)
	...

Disassembly of section .rela.plt:

0000000000000790 <.rela.plt>:
 790:	00 40 00             	add    %al,0x0(%rax)
 793:	00 00                	add    %al,(%rax)
 795:	00 00                	add    %al,(%rax)
 797:	00 07                	add    %al,(%rdi)
 799:	00 00                	add    %al,(%rax)
 79b:	00 01                	add    %al,(%rcx)
	...
 7a5:	00 00                	add    %al,(%rax)
 7a7:	00 08                	add    %cl,(%rax)
 7a9:	40 00 00             	rex add %al,(%rax)
 7ac:	00 00                	add    %al,(%rax)
 7ae:	00 00                	add    %al,(%rax)
 7b0:	07                   	(bad)
 7b1:	00 00                	add    %al,(%rax)
 7b3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 7be:	00 00                	add    %al,(%rax)
 7c0:	10 40 00             	adc    %al,0x0(%rax)
 7c3:	00 00                	add    %al,(%rax)
 7c5:	00 00                	add    %al,(%rax)
 7c7:	00 07                	add    %al,(%rdi)
 7c9:	00 00                	add    %al,(%rax)
 7cb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 7d1 <_init-0x82f>
 7d1:	00 00                	add    %al,(%rax)
 7d3:	00 00                	add    %al,(%rax)
 7d5:	00 00                	add    %al,(%rax)
 7d7:	00 18                	add    %bl,(%rax)
 7d9:	40 00 00             	rex add %al,(%rax)
 7dc:	00 00                	add    %al,(%rax)
 7de:	00 00                	add    %al,(%rax)
 7e0:	07                   	(bad)
 7e1:	00 00                	add    %al,(%rax)
 7e3:	00 06                	add    %al,(%rsi)
	...
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 20                	add    %ah,(%rax)
 7f1:	40 00 00             	rex add %al,(%rax)
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	07                   	(bad)
 7f9:	00 00                	add    %al,(%rax)
 7fb:	00 07                	add    %al,(%rdi)
	...
 805:	00 00                	add    %al,(%rax)
 807:	00 28                	add    %ch,(%rax)
 809:	40 00 00             	rex add %al,(%rax)
 80c:	00 00                	add    %al,(%rax)
 80e:	00 00                	add    %al,(%rax)
 810:	07                   	(bad)
 811:	00 00                	add    %al,(%rax)
 813:	00 08                	add    %cl,(%rax)
	...
 81d:	00 00                	add    %al,(%rax)
 81f:	00 30                	add    %dh,(%rax)
 821:	40 00 00             	rex add %al,(%rax)
 824:	00 00                	add    %al,(%rax)
 826:	00 00                	add    %al,(%rax)
 828:	07                   	(bad)
 829:	00 00                	add    %al,(%rax)
 82b:	00 0a                	add    %cl,(%rdx)
	...
 835:	00 00                	add    %al,(%rax)
 837:	00 38                	add    %bh,(%rax)
 839:	40 00 00             	rex add %al,(%rax)
 83c:	00 00                	add    %al,(%rax)
 83e:	00 00                	add    %al,(%rax)
 840:	07                   	(bad)
 841:	00 00                	add    %al,(%rax)
 843:	00 0b                	add    %cl,(%rbx)
	...
 84d:	00 00                	add    %al,(%rax)
 84f:	00 40 40             	add    %al,0x40(%rax)
 852:	00 00                	add    %al,(%rax)
 854:	00 00                	add    %al,(%rax)
 856:	00 00                	add    %al,(%rax)
 858:	07                   	(bad)
 859:	00 00                	add    %al,(%rax)
 85b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 866:	00 00                	add    %al,(%rax)
 868:	48                   	rex.W
 869:	40 00 00             	rex add %al,(%rax)
 86c:	00 00                	add    %al,(%rax)
 86e:	00 00                	add    %al,(%rax)
 870:	07                   	(bad)
 871:	00 00                	add    %al,(%rax)
 873:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 879 <_init-0x787>
 879:	00 00                	add    %al,(%rax)
 87b:	00 00                	add    %al,(%rax)
 87d:	00 00                	add    %al,(%rax)
 87f:	00 50 40             	add    %dl,0x40(%rax)
 882:	00 00                	add    %al,(%rax)
 884:	00 00                	add    %al,(%rax)
 886:	00 00                	add    %al,(%rax)
 888:	07                   	(bad)
 889:	00 00                	add    %al,(%rax)
 88b:	00 10                	add    %dl,(%rax)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <__stack_chk_fail@GLIBC_2.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <mmap@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <mmap@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <printf@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <gettimeofday@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <gettimeofday@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <malloc@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <malloc@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <munmap@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <munmap@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <atoi@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 4040 <atoi@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 4048 <exit@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <rand@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 4050 <rand@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # 122b <main>
    10ff:	ff 15 bb 2e 00 00    	call   *0x2ebb(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	48 8d 3d 51 2f 00 00 	lea    0x2f51(%rip),%rdi        # 4068 <__TMC_END__>
    1117:	48 8d 05 4a 2f 00 00 	lea    0x2f4a(%rip),%rax        # 4068 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <_start+0x58>
    1123:	48 8b 05 9e 2e 00 00 	mov    0x2e9e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <_start+0x58>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1140:	48 8d 3d 21 2f 00 00 	lea    0x2f21(%rip),%rdi        # 4068 <__TMC_END__>
    1147:	48 8d 35 1a 2f 00 00 	lea    0x2f1a(%rip),%rsi        # 4068 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    $1,%rsi
    1162:	74 14                	je     1178 <_start+0x98>
    1164:	48 8b 05 6d 2e 00 00 	mov    0x2e6d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <_start+0x98>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1180:	f3 0f 1e fa          	endbr64
    1184:	80 3d dd 2e 00 00 00 	cmpb   $0x0,0x2edd(%rip)        # 4068 <__TMC_END__>
    118b:	75 33                	jne    11c0 <_start+0xe0>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 4a 2e 00 00 	cmpq   $0x0,0x2e4a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0d                	je     11a8 <_start+0xc8>
    119b:	48 8b 3d be 2e 00 00 	mov    0x2ebe(%rip),%rdi        # 4060 <__dso_handle>
    11a2:	ff 15 38 2e 00 00    	call   *0x2e38(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    11a8:	e8 63 ff ff ff       	call   1110 <_start+0x30>
    11ad:	c6 05 b4 2e 00 00 01 	movb   $0x1,0x2eb4(%rip)        # 4068 <__TMC_END__>
    11b4:	5d                   	pop    %rbp
    11b5:	c3                   	ret
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	c3                   	ret
    11c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11c8:	00 00 00 00 
    11cc:	0f 1f 40 00          	nopl   0x0(%rax)
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	e9 67 ff ff ff       	jmp    1140 <_start+0x60>

00000000000011d9 <usage>:
#define TEN FIVE FIVE
#define FIFTY   TEN TEN TEN TEN TEN
#define HUNDRED FIFTY FIFTY

static void usage()
{
    11d9:	55                   	push   %rbp
    11da:	48 89 e5             	mov    %rsp,%rbp
    printf("Usage: ./mem-lat -b xxx -n xxx -s xxx\n");
    11dd:	48 8d 05 24 0e 00 00 	lea    0xe24(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    11e4:	48 89 c7             	mov    %rax,%rdi
    11e7:	e8 54 fe ff ff       	call   1040 <puts@plt>
    printf("   -b buffer size in KB\n");
    11ec:	48 8d 05 3b 0e 00 00 	lea    0xe3b(%rip),%rax        # 202e <_IO_stdin_used+0x2e>
    11f3:	48 89 c7             	mov    %rax,%rdi
    11f6:	e8 45 fe ff ff       	call   1040 <puts@plt>
    printf("   -n number of read\n\n");
    11fb:	48 8d 05 44 0e 00 00 	lea    0xe44(%rip),%rax        # 2046 <_IO_stdin_used+0x46>
    1202:	48 89 c7             	mov    %rax,%rdi
    1205:	e8 36 fe ff ff       	call   1040 <puts@plt>
    printf("   -s stride skipped before the next access\n\n");
    120a:	48 8d 05 4f 0e 00 00 	lea    0xe4f(%rip),%rax        # 2060 <_IO_stdin_used+0x60>
    1211:	48 89 c7             	mov    %rax,%rdi
    1214:	e8 27 fe ff ff       	call   1040 <puts@plt>
    printf("Please don't use non-decimal based number\n");
    1219:	48 8d 05 70 0e 00 00 	lea    0xe70(%rip),%rax        # 2090 <_IO_stdin_used+0x90>
    1220:	48 89 c7             	mov    %rax,%rdi
    1223:	e8 18 fe ff ff       	call   1040 <puts@plt>
}
    1228:	90                   	nop
    1229:	5d                   	pop    %rbp
    122a:	c3                   	ret

000000000000122b <main>:


int main(int argc, char* argv[])
{
    122b:	55                   	push   %rbp
    122c:	48 89 e5             	mov    %rsp,%rbp
    122f:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    1236:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
    123c:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
    1243:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    124a:	00 00 
    124c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1250:	31 c0                	xor    %eax,%eax
  unsigned long i, j, size, tmp;
    unsigned long memsize = 0x800000; /* 1/4 LLC size of skylake, 1/5 of broadwell */
    1252:	48 c7 45 80 00 00 80 	movq   $0x800000,-0x80(%rbp)
    1259:	00 
    unsigned long count = 1048576; /* memsize / 64 * 8 */
    125a:	48 c7 45 88 00 00 10 	movq   $0x100000,-0x78(%rbp)
    1261:	00 
    unsigned int stride = 64; /* skipped amount of memory before the next access */
    1262:	c7 85 74 ff ff ff 40 	movl   $0x40,-0x8c(%rbp)
    1269:	00 00 00 
    unsigned long sec, usec;
    struct timeval tv1, tv2;
    struct timezone tz;
    unsigned int *indices;

    while (argc-- > 0) {
    126c:	e9 dd 00 00 00       	jmp    134e <main+0x123>
        if ((*argv)[0] == '-') {  /* look at first char of next */
    1271:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1278:	48 8b 00             	mov    (%rax),%rax
    127b:	0f b6 00             	movzbl (%rax),%eax
    127e:	3c 2d                	cmp    $0x2d,%al
    1280:	0f 85 c0 00 00 00    	jne    1346 <main+0x11b>
            switch ((*argv)[1]) {   /* look at second */
    1286:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    128d:	48 8b 00             	mov    (%rax),%rax
    1290:	48 83 c0 01          	add    $0x1,%rax
    1294:	0f b6 00             	movzbl (%rax),%eax
    1297:	0f be c0             	movsbl %al,%eax
    129a:	83 f8 73             	cmp    $0x73,%eax
    129d:	74 6a                	je     1309 <main+0xde>
    129f:	83 f8 73             	cmp    $0x73,%eax
    12a2:	0f 8f 8a 00 00 00    	jg     1332 <main+0x107>
    12a8:	83 f8 62             	cmp    $0x62,%eax
    12ab:	74 07                	je     12b4 <main+0x89>
    12ad:	83 f8 6e             	cmp    $0x6e,%eax
    12b0:	74 2e                	je     12e0 <main+0xb5>
    12b2:	eb 7e                	jmp    1332 <main+0x107>
                case 'b':
                    argv++;
    12b4:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
    12bb:	08 
                    argc--;
    12bc:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    memsize = atoi(*argv) * 1024;
    12c3:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    12ca:	48 8b 00             	mov    (%rax),%rax
    12cd:	48 89 c7             	mov    %rax,%rdi
    12d0:	e8 db fd ff ff       	call   10b0 <atoi@plt>
    12d5:	c1 e0 0a             	shl    $0xa,%eax
    12d8:	48 98                	cltq
    12da:	48 89 45 80          	mov    %rax,-0x80(%rbp)
                    break;
    12de:	eb 66                	jmp    1346 <main+0x11b>

                case 'n':
                    argv++;
    12e0:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
    12e7:	08 
                    argc--;
    12e8:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    count = atoi(*argv);
    12ef:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    12f6:	48 8b 00             	mov    (%rax),%rax
    12f9:	48 89 c7             	mov    %rax,%rdi
    12fc:	e8 af fd ff ff       	call   10b0 <atoi@plt>
    1301:	48 98                	cltq
    1303:	48 89 45 88          	mov    %rax,-0x78(%rbp)
                    break;
    1307:	eb 3d                	jmp    1346 <main+0x11b>

                case 's':
                    argv++;
    1309:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
    1310:	08 
                    argc--;
    1311:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    stride = atoi(*argv);
    1318:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    131f:	48 8b 00             	mov    (%rax),%rax
    1322:	48 89 c7             	mov    %rax,%rdi
    1325:	e8 86 fd ff ff       	call   10b0 <atoi@plt>
    132a:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
                    break;
    1330:	eb 14                	jmp    1346 <main+0x11b>

                default:
                    usage();
    1332:	b8 00 00 00 00       	mov    $0x0,%eax
    1337:	e8 9d fe ff ff       	call   11d9 <usage>
                    exit(1);
    133c:	bf 01 00 00 00       	mov    $0x1,%edi
    1341:	e8 7a fd ff ff       	call   10c0 <exit@plt>
                    break;
            }
        }
        argv++;
    1346:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
    134d:	08 
    while (argc-- > 0) {
    134e:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
    1354:	8d 50 ff             	lea    -0x1(%rax),%edx
    1357:	89 95 6c ff ff ff    	mov    %edx,-0x94(%rbp)
    135d:	85 c0                	test   %eax,%eax
    135f:	0f 8f 0c ff ff ff    	jg     1271 <main+0x46>
    }


  char* mem = mmap(NULL, memsize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
    1365:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1369:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    136f:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    1375:	b9 22 00 00 00       	mov    $0x22,%ecx
    137a:	ba 03 00 00 00       	mov    $0x3,%edx
    137f:	48 89 c6             	mov    %rax,%rsi
    1382:	bf 00 00 00 00       	mov    $0x0,%edi
    1387:	e8 d4 fc ff ff       	call   1060 <mmap@plt>
    138c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    // trick3: init pointer chasing, per stride=8 byte
    size = memsize / stride;
    1390:	8b b5 74 ff ff ff    	mov    -0x8c(%rbp),%esi
    1396:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    139a:	ba 00 00 00 00       	mov    $0x0,%edx
    139f:	48 f7 f6             	div    %rsi
    13a2:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    indices = malloc(size * sizeof(int));
    13a6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    13aa:	48 c1 e0 02          	shl    $0x2,%rax
    13ae:	48 89 c7             	mov    %rax,%rdi
    13b1:	e8 da fc ff ff       	call   1090 <malloc@plt>
    13b6:	48 89 45 b0          	mov    %rax,-0x50(%rbp)

    for (i = 0; i < size; i++)
    13ba:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    13c1:	00 00 00 00 
    13c5:	eb 27                	jmp    13ee <main+0x1c3>
        indices[i] = i;
    13c7:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    13ce:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    13d5:	00 
    13d6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    13da:	48 01 d0             	add    %rdx,%rax
    13dd:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    13e4:	89 10                	mov    %edx,(%rax)
    for (i = 0; i < size; i++)
    13e6:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
    13ed:	01 
    13ee:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    13f5:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
    13f9:	72 cc                	jb     13c7 <main+0x19c>
    //shuffle indeaces  
    for (i = 0; i < size; i++) {
    13fb:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    1402:	00 00 00 00 
    1406:	e9 aa 00 00 00       	jmp    14b5 <main+0x28a>
         j = i +  rand() % (size - i);
    140b:	e8 c0 fc ff ff       	call   10d0 <rand@plt>
    1410:	48 98                	cltq
    1412:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    1416:	48 89 d6             	mov    %rdx,%rsi
    1419:	48 2b b5 78 ff ff ff 	sub    -0x88(%rbp),%rsi
    1420:	ba 00 00 00 00       	mov    $0x0,%edx
    1425:	48 f7 f6             	div    %rsi
    1428:	48 89 d1             	mov    %rdx,%rcx
    142b:	48 89 ca             	mov    %rcx,%rdx
    142e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1435:	48 01 d0             	add    %rdx,%rax
    1438:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
         if (i != j) {
    143c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1443:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
    1447:	74 64                	je     14ad <main+0x282>
             tmp = indices[i];
    1449:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1450:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1457:	00 
    1458:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    145c:	48 01 d0             	add    %rdx,%rax
    145f:	8b 00                	mov    (%rax),%eax
    1461:	89 c0                	mov    %eax,%eax
    1463:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
             indices[i] = indices[j];
    1467:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    146b:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1472:	00 
    1473:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1477:	48 01 d0             	add    %rdx,%rax
    147a:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
    1481:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    1488:	00 
    1489:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    148d:	48 01 ca             	add    %rcx,%rdx
    1490:	8b 00                	mov    (%rax),%eax
    1492:	89 02                	mov    %eax,(%rdx)
             indices[j] = tmp;
    1494:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1498:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    149f:	00 
    14a0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    14a4:	48 01 d0             	add    %rdx,%rax
    14a7:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    14ab:	89 10                	mov    %edx,(%rax)
    for (i = 0; i < size; i++) {
    14ad:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
    14b4:	01 
    14b5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    14bc:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
    14c0:	0f 82 45 ff ff ff    	jb     140b <main+0x1e0>
         }
     }
    // trick 2: fill mem with pointer references
    for (i = 0; i < size - 1; i++)
    14c6:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    14cd:	00 00 00 00 
    14d1:	eb 5f                	jmp    1532 <main+0x307>
        *(char **)&mem[indices[i]*stride]= (char*)&mem[indices[i+1]*stride];
    14d3:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    14da:	48 83 c0 01          	add    $0x1,%rax
    14de:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    14e5:	00 
    14e6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    14ea:	48 01 d0             	add    %rdx,%rax
    14ed:	8b 00                	mov    (%rax),%eax
    14ef:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
    14f6:	89 c1                	mov    %eax,%ecx
    14f8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    14ff:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1506:	00 
    1507:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    150b:	48 01 d0             	add    %rdx,%rax
    150e:	8b 00                	mov    (%rax),%eax
    1510:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
    1517:	89 c2                	mov    %eax,%edx
    1519:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    151d:	48 01 d0             	add    %rdx,%rax
    1520:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    1524:	48 01 ca             	add    %rcx,%rdx
    1527:	48 89 10             	mov    %rdx,(%rax)
    for (i = 0; i < size - 1; i++)
    152a:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
    1531:	01 
    1532:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1536:	48 83 e8 01          	sub    $0x1,%rax
    153a:	48 39 85 78 ff ff ff 	cmp    %rax,-0x88(%rbp)
    1541:	72 90                	jb     14d3 <main+0x2a8>
    *(char **)&mem[indices[size-1]*stride]= (char*)&mem[indices[0]*stride];
    1543:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1547:	8b 00                	mov    (%rax),%eax
    1549:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
    1550:	89 c1                	mov    %eax,%ecx
    1552:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1556:	48 c1 e0 02          	shl    $0x2,%rax
    155a:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    155e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1562:	48 01 d0             	add    %rdx,%rax
    1565:	8b 00                	mov    (%rax),%eax
    1567:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
    156e:	89 c2                	mov    %eax,%edx
    1570:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1574:	48 01 d0             	add    %rdx,%rax
    1577:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    157b:	48 01 ca             	add    %rcx,%rdx
    157e:	48 89 10             	mov    %rdx,(%rax)

    register char **p = (char **) mem;
    tmp = count / 100;
    1581:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1585:	48 c1 e8 02          	shr    $0x2,%rax
    1589:	48 ba c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rdx
    1590:	c2 f5 28 
    1593:	48 f7 e2             	mul    %rdx
    1596:	48 89 d0             	mov    %rdx,%rax
    1599:	48 c1 e8 02          	shr    $0x2,%rax
    159d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)

    gettimeofday (&tv1, &tz);
    15a1:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    15a5:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    15a9:	48 89 d6             	mov    %rdx,%rsi
    15ac:	48 89 c7             	mov    %rax,%rdi
    15af:	e8 cc fa ff ff       	call   1080 <gettimeofday@plt>
    for (i = 0; i < tmp; ++i) {
    15b4:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    15bb:	00 00 00 00 
    15bf:	eb 08                	jmp    15c9 <main+0x39e>
    15c1:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
    15c8:	01 
    15c9:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    15d0:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
    15d4:	72 eb                	jb     15c1 <main+0x396>
        HUNDRED;  //trick 1
    }
    gettimeofday (&tv2, &tz);
    15d6:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    15da:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    15de:	48 89 d6             	mov    %rdx,%rsi
    15e1:	48 89 c7             	mov    %rax,%rdi
    15e4:	e8 97 fa ff ff       	call   1080 <gettimeofday@plt>
    if (tv2.tv_usec < tv1.tv_usec) {
    15e9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    15ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15f1:	48 39 c2             	cmp    %rax,%rdx
    15f4:	7d 2b                	jge    1621 <main+0x3f6>
        usec = 1000000 + tv2.tv_usec - tv1.tv_usec;
    15f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15fa:	48 8d 90 40 42 0f 00 	lea    0xf4240(%rax),%rdx
    1601:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1605:	48 29 c2             	sub    %rax,%rdx
    1608:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
        sec = tv2.tv_sec - tv1.tv_sec - 1;
    160c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1610:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1614:	48 29 c2             	sub    %rax,%rdx
    1617:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    161b:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    161f:	eb 1e                	jmp    163f <main+0x414>
    } else {
        usec = tv2.tv_usec - tv1.tv_usec;
    1621:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1625:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1629:	48 29 c2             	sub    %rax,%rdx
    162c:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
        sec = tv2.tv_sec - tv1.tv_sec;
    1630:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1634:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1638:	48 29 c2             	sub    %rax,%rdx
    163b:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
    }

    printf("Buffer size: %ld KB, stride %d, time %d.%06d s, latency %.2f ns\n", 
            memsize/1024, stride, sec, usec, (sec * 1000000  + usec) * 1000.0 / (tmp *100));
    163f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1643:	48 69 d0 40 42 0f 00 	imul   $0xf4240,%rax,%rdx
    164a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    164e:	48 01 d0             	add    %rdx,%rax
    1651:	48 85 c0             	test   %rax,%rax
    1654:	78 0b                	js     1661 <main+0x436>
    1656:	66 0f ef c0          	pxor   %xmm0,%xmm0
    165a:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    165f:	eb 19                	jmp    167a <main+0x44f>
    1661:	48 89 c2             	mov    %rax,%rdx
    1664:	48 d1 ea             	shr    $1,%rdx
    1667:	83 e0 01             	and    $0x1,%eax
    166a:	48 09 c2             	or     %rax,%rdx
    166d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1671:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    1676:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    167a:	f2 0f 10 0d 86 0a 00 	movsd  0xa86(%rip),%xmm1        # 2108 <_IO_stdin_used+0x108>
    1681:	00 
    1682:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1686:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    168a:	48 89 d0             	mov    %rdx,%rax
    168d:	48 c1 e0 02          	shl    $0x2,%rax
    1691:	48 01 d0             	add    %rdx,%rax
    1694:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    169b:	00 
    169c:	48 01 d0             	add    %rdx,%rax
    169f:	48 c1 e0 02          	shl    $0x2,%rax
    printf("Buffer size: %ld KB, stride %d, time %d.%06d s, latency %.2f ns\n", 
    16a3:	48 85 c0             	test   %rax,%rax
    16a6:	78 0b                	js     16b3 <main+0x488>
    16a8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16ac:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    16b1:	eb 19                	jmp    16cc <main+0x4a1>
    16b3:	48 89 c2             	mov    %rax,%rdx
    16b6:	48 d1 ea             	shr    $1,%rdx
    16b9:	83 e0 01             	and    $0x1,%eax
    16bc:	48 09 c2             	or     %rax,%rdx
    16bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    16c3:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    16c8:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    16cc:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
    16d0:	66 48 0f 7e c9       	movq   %xmm1,%rcx
    16d5:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    16d9:	48 c1 e8 0a          	shr    $0xa,%rax
    16dd:	48 89 c6             	mov    %rax,%rsi
    16e0:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
    16e4:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    16e8:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
    16ee:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    16f3:	49 89 f8             	mov    %rdi,%r8
    16f6:	48 89 d1             	mov    %rdx,%rcx
    16f9:	89 c2                	mov    %eax,%edx
    16fb:	48 8d 05 be 09 00 00 	lea    0x9be(%rip),%rax        # 20c0 <_IO_stdin_used+0xc0>
    1702:	48 89 c7             	mov    %rax,%rdi
    1705:	b8 01 00 00 00       	mov    $0x1,%eax
    170a:	e8 61 f9 ff ff       	call   1070 <printf@plt>
    munmap(mem, memsize);
    170f:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
    1713:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1717:	48 89 d6             	mov    %rdx,%rsi
    171a:	48 89 c7             	mov    %rax,%rdi
    171d:	e8 7e f9 ff ff       	call   10a0 <munmap@plt>
    free(indices);
    1722:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1726:	48 89 c7             	mov    %rax,%rdi
    1729:	e8 02 f9 ff ff       	call   1030 <free@plt>
    172e:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1733:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1737:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    173e:	00 00 
    1740:	74 05                	je     1747 <main+0x51c>
    1742:	e8 09 f9 ff ff       	call   1050 <__stack_chk_fail@plt>
    1747:	c9                   	leave
    1748:	c3                   	ret

Disassembly of section .fini:

000000000000174c <_fini>:
    174c:	f3 0f 1e fa          	endbr64
    1750:	48 83 ec 08          	sub    $0x8,%rsp
    1754:	48 83 c4 08          	add    $0x8,%rsp
    1758:	c3                   	ret

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	00 00                	add    %al,(%rax)
    2006:	00 00                	add    %al,(%rax)
    2008:	55                   	push   %rbp
    2009:	73 61                	jae    206c <_IO_stdin_used+0x6c>
    200b:	67 65 3a 20          	cmp    %gs:(%eax),%ah
    200f:	2e 2f                	cs (bad)
    2011:	6d                   	insl   (%dx),%es:(%rdi)
    2012:	65 6d                	gs insl (%dx),%es:(%rdi)
    2014:	2d 6c 61 74 20       	sub    $0x2074616c,%eax
    2019:	2d 62 20 78 78       	sub    $0x78782062,%eax
    201e:	78 20                	js     2040 <_IO_stdin_used+0x40>
    2020:	2d 6e 20 78 78       	sub    $0x7878206e,%eax
    2025:	78 20                	js     2047 <_IO_stdin_used+0x47>
    2027:	2d 73 20 78 78       	sub    $0x78782073,%eax
    202c:	78 00                	js     202e <_IO_stdin_used+0x2e>
    202e:	20 20                	and    %ah,(%rax)
    2030:	20 2d 62 20 62 75    	and    %ch,0x75622062(%rip)        # 75624098 <_end+0x75620028>
    2036:	66 66 65 72 20       	data16 data16 gs jb 205b <_IO_stdin_used+0x5b>
    203b:	73 69                	jae    20a6 <_IO_stdin_used+0xa6>
    203d:	7a 65                	jp     20a4 <_IO_stdin_used+0xa4>
    203f:	20 69 6e             	and    %ch,0x6e(%rcx)
    2042:	20 4b 42             	and    %cl,0x42(%rbx)
    2045:	00 20                	add    %ah,(%rax)
    2047:	20 20                	and    %ah,(%rax)
    2049:	2d 6e 20 6e 75       	sub    $0x756e206e,%eax
    204e:	6d                   	insl   (%dx),%es:(%rdi)
    204f:	62 65 72 20 6f       	(bad)
    2054:	66 20 72 65          	data16 and %dh,0x65(%rdx)
    2058:	61                   	(bad)
    2059:	64 0a 00             	or     %fs:(%rax),%al
    205c:	00 00                	add    %al,(%rax)
    205e:	00 00                	add    %al,(%rax)
    2060:	20 20                	and    %ah,(%rax)
    2062:	20 2d 73 20 73 74    	and    %ch,0x74732073(%rip)        # 747340db <_end+0x7473006b>
    2068:	72 69                	jb     20d3 <_IO_stdin_used+0xd3>
    206a:	64 65 20 73 6b       	fs and %dh,%gs:0x6b(%rbx)
    206f:	69 70 70 65 64 20 62 	imul   $0x62206465,0x70(%rax),%esi
    2076:	65 66 6f             	outsw  %gs:(%rsi),(%dx)
    2079:	72 65                	jb     20e0 <_IO_stdin_used+0xe0>
    207b:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    207f:	20 6e 65             	and    %ch,0x65(%rsi)
    2082:	78 74                	js     20f8 <_IO_stdin_used+0xf8>
    2084:	20 61 63             	and    %ah,0x63(%rcx)
    2087:	63 65 73             	movsxd 0x73(%rbp),%esp
    208a:	73 0a                	jae    2096 <_IO_stdin_used+0x96>
    208c:	00 00                	add    %al,(%rax)
    208e:	00 00                	add    %al,(%rax)
    2090:	50                   	push   %rax
    2091:	6c                   	insb   (%dx),%es:(%rdi)
    2092:	65 61                	gs (bad)
    2094:	73 65                	jae    20fb <_IO_stdin_used+0xfb>
    2096:	20 64 6f 6e          	and    %ah,0x6e(%rdi,%rbp,2)
    209a:	27                   	(bad)
    209b:	74 20                	je     20bd <_IO_stdin_used+0xbd>
    209d:	75 73                	jne    2112 <__GNU_EH_FRAME_HDR+0x2>
    209f:	65 20 6e 6f          	and    %ch,%gs:0x6f(%rsi)
    20a3:	6e                   	outsb  %ds:(%rsi),(%dx)
    20a4:	2d 64 65 63 69       	sub    $0x69636564,%eax
    20a9:	6d                   	insl   (%dx),%es:(%rdi)
    20aa:	61                   	(bad)
    20ab:	6c                   	insb   (%dx),%es:(%rdi)
    20ac:	20 62 61             	and    %ah,0x61(%rdx)
    20af:	73 65                	jae    2116 <__GNU_EH_FRAME_HDR+0x6>
    20b1:	64 20 6e 75          	and    %ch,%fs:0x75(%rsi)
    20b5:	6d                   	insl   (%dx),%es:(%rdi)
    20b6:	62 65 72 00 00       	(bad)
    20bb:	00 00                	add    %al,(%rax)
    20bd:	00 00                	add    %al,(%rax)
    20bf:	00 42 75             	add    %al,0x75(%rdx)
    20c2:	66 66 65 72 20       	data16 data16 gs jb 20e7 <_IO_stdin_used+0xe7>
    20c7:	73 69                	jae    2132 <__GNU_EH_FRAME_HDR+0x22>
    20c9:	7a 65                	jp     2130 <__GNU_EH_FRAME_HDR+0x20>
    20cb:	3a 20                	cmp    (%rax),%ah
    20cd:	25 6c 64 20 4b       	and    $0x4b20646c,%eax
    20d2:	42 2c 20             	rex.X sub $0x20,%al
    20d5:	73 74                	jae    214b <__GNU_EH_FRAME_HDR+0x3b>
    20d7:	72 69                	jb     2142 <__GNU_EH_FRAME_HDR+0x32>
    20d9:	64 65 20 25 64 2c 20 	fs and %ah,%gs:0x74202c64(%rip)        # 74204d45 <_end+0x74200cd5>
    20e0:	74 
    20e1:	69 6d 65 20 25 64 2e 	imul   $0x2e642520,0x65(%rbp),%ebp
    20e8:	25 30 36 64 20       	and    $0x20643630,%eax
    20ed:	73 2c                	jae    211b <__GNU_EH_FRAME_HDR+0xb>
    20ef:	20 6c 61 74          	and    %ch,0x74(%rcx,%riz,2)
    20f3:	65 6e                	outsb  %gs:(%rsi),(%dx)
    20f5:	63 79 20             	movsxd 0x20(%rcx),%edi
    20f8:	25 2e 32 66 20       	and    $0x2066322e,%eax
    20fd:	6e                   	outsb  %ds:(%rsi),(%dx)
    20fe:	73 0a                	jae    210a <_IO_stdin_used+0x10a>
	...
    210c:	00 40 8f             	add    %al,-0x71(%rax)
    210f:	40                   	rex

Disassembly of section .eh_frame_hdr:

0000000000002110 <__GNU_EH_FRAME_HDR>:
    2110:	01 1b                	add    %ebx,(%rbx)
    2112:	03 3b                	add    (%rbx),%edi
    2114:	2c 00                	sub    $0x0,%al
    2116:	00 00                	add    %al,(%rax)
    2118:	04 00                	add    $0x0,%al
    211a:	00 00                	add    %al,(%rax)
    211c:	10 ef                	adc    %ch,%bh
    211e:	ff                   	(bad)
    211f:	ff 60 00             	jmp    *0x0(%rax)
    2122:	00 00                	add    %al,(%rax)
    2124:	d0 ef                	shr    $1,%bh
    2126:	ff                   	(bad)
    2127:	ff 48 00             	decl   0x0(%rax)
    212a:	00 00                	add    %al,(%rax)
    212c:	c9                   	leave
    212d:	f0 ff                	lock (bad)
    212f:	ff 88 00 00 00 1b    	decl   0x1b000000(%rax)
    2135:	f1                   	int1
    2136:	ff                   	(bad)
    2137:	ff                   	.byte 0xff
    2138:	a8 00                	test   $0x0,%al
	...

Disassembly of section .eh_frame:

0000000000002140 <.eh_frame>:
    2140:	14 00                	adc    $0x0,%al
    2142:	00 00                	add    %al,(%rax)
    2144:	00 00                	add    %al,(%rax)
    2146:	00 00                	add    %al,(%rax)
    2148:	01 7a 52             	add    %edi,0x52(%rdx)
    214b:	00 01                	add    %al,(%rcx)
    214d:	78 10                	js     215f <__GNU_EH_FRAME_HDR+0x4f>
    214f:	01 1b                	add    %ebx,(%rbx)
    2151:	0c 07                	or     $0x7,%al
    2153:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2159:	00 00                	add    %al,(%rax)
    215b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    215e:	00 00                	add    %al,(%rax)
    2160:	80 ef ff             	sub    $0xff,%bh
    2163:	ff 26                	jmp    *(%rsi)
    2165:	00 00                	add    %al,(%rax)
    2167:	00 00                	add    %al,(%rax)
    2169:	44 07                	rex.R (bad)
    216b:	10 00                	adc    %al,(%rax)
    216d:	00 00                	add    %al,(%rax)
    216f:	00 24 00             	add    %ah,(%rax,%rax,1)
    2172:	00 00                	add    %al,(%rax)
    2174:	34 00                	xor    $0x0,%al
    2176:	00 00                	add    %al,(%rax)
    2178:	a8 ee                	test   $0xee,%al
    217a:	ff                   	(bad)
    217b:	ff c0                	inc    %eax
    217d:	00 00                	add    %al,(%rax)
    217f:	00 00                	add    %al,(%rax)
    2181:	0e                   	(bad)
    2182:	10 46 0e             	adc    %al,0xe(%rsi)
    2185:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2188:	0b 77 08             	or     0x8(%rdi),%esi
    218b:	80 00 3f             	addb   $0x3f,(%rax)
    218e:	1a 3b                	sbb    (%rbx),%bh
    2190:	2a 33                	sub    (%rbx),%dh
    2192:	24 22                	and    $0x22,%al
    2194:	00 00                	add    %al,(%rax)
    2196:	00 00                	add    %al,(%rax)
    2198:	1c 00                	sbb    $0x0,%al
    219a:	00 00                	add    %al,(%rax)
    219c:	5c                   	pop    %rsp
    219d:	00 00                	add    %al,(%rax)
    219f:	00 39                	add    %bh,(%rcx)
    21a1:	f0 ff                	lock (bad)
    21a3:	ff 52 00             	call   *0x0(%rdx)
    21a6:	00 00                	add    %al,(%rax)
    21a8:	00 41 0e             	add    %al,0xe(%rcx)
    21ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    21b1:	02 4d 0c             	add    0xc(%rbp),%cl
    21b4:	07                   	(bad)
    21b5:	08 00                	or     %al,(%rax)
    21b7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    21ba:	00 00                	add    %al,(%rax)
    21bc:	7c 00                	jl     21be <__GNU_EH_FRAME_HDR+0xae>
    21be:	00 00                	add    %al,(%rax)
    21c0:	6b f0 ff             	imul   $0xffffffff,%eax,%esi
    21c3:	ff 1e                	lcall  *(%rsi)
    21c5:	05 00 00 00 41       	add    $0x41000000,%eax
    21ca:	0e                   	(bad)
    21cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    21d1:	03 19                	add    (%rcx),%ebx
    21d3:	05 0c 07 08 00       	add    $0x8070c,%eax
    21d8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.ABI-tag:

00000000000021dc <.note.ABI-tag>:
    21dc:	04 00                	add    $0x0,%al
    21de:	00 00                	add    %al,(%rax)
    21e0:	10 00                	adc    %al,(%rax)
    21e2:	00 00                	add    %al,(%rax)
    21e4:	01 00                	add    %eax,(%rax)
    21e6:	00 00                	add    %al,(%rax)
    21e8:	47                   	rex.RXB
    21e9:	4e 55                	rex.WRX push %rbp
    21eb:	00 00                	add    %al,(%rax)
    21ed:	00 00                	add    %al,(%rax)
    21ef:	00 04 00             	add    %al,(%rax,%rax,1)
    21f2:	00 00                	add    %al,(%rax)
    21f4:	04 00                	add    $0x0,%al
    21f6:	00 00                	add    %al,(%rax)
    21f8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003dd0 <.init_array>:
    3dd0:	d0 11                	rclb   $1,(%rcx)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003dd8 <.fini_array>:
    3dd8:	80 11 00             	adcb   $0x0,(%rcx)
    3ddb:	00 00                	add    %al,(%rax)
    3ddd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003de0 <_DYNAMIC>:
    3de0:	01 00                	add    %eax,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	73 00                	jae    3dea <_DYNAMIC+0xa>
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
    3dee:	00 00                	add    %al,(%rax)
    3df0:	0c 00                	or     $0x0,%al
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
    3df6:	00 00                	add    %al,(%rax)
    3df8:	00 10                	add    %dl,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	0d 00 00 00 00       	or     $0x0,%eax
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 4c 17 00          	add    %cl,0x0(%rdi,%rdx,1)
    3e0b:	00 00                	add    %al,(%rax)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 19                	add    %bl,(%rcx)
    3e11:	00 00                	add    %al,(%rax)
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 d0                	add    %dl,%al
    3e19:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	1b 00                	sbb    (%rax),%eax
    3e22:	00 00                	add    %al,(%rax)
    3e24:	00 00                	add    %al,(%rax)
    3e26:	00 00                	add    %al,(%rax)
    3e28:	08 00                	or     %al,(%rax)
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	1a 00                	sbb    (%rax),%al
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 3e3e <_DYNAMIC+0x5e>
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	1c 00                	sbb    $0x0,%al
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	08 00                	or     %al,(%rax)
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	f5                   	cmc
    3e51:	fe                   	(bad)
    3e52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 d0                	add    %dl,%al
    3e59:	03 00                	add    (%rax),%eax
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e65 <_DYNAMIC+0x85>
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 88 05 00 00 00    	add    %cl,0x5(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 06                	add    %al,(%rsi)
    3e71:	00 00                	add    %al,(%rax)
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 f0                	add    %dh,%al
    3e79:	03 00                	add    (%rax),%eax
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 0a                	add    %cl,(%rdx)
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 e3                	add    %ah,%bl
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 0b                	add    %cl,(%rbx)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 18                	add    %bl,(%rax)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ea5 <_DYNAMIC+0xc5>
	...
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 03                	add    %al,(%rbx)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 e8                	add    %ch,%al
    3eb9:	3f                   	(bad)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	02 00                	add    (%rax),%al
    3ec2:	00 00                	add    %al,(%rax)
    3ec4:	00 00                	add    %al,(%rax)
    3ec6:	00 00                	add    %al,(%rax)
    3ec8:	08 01                	or     %al,(%rcx)
    3eca:	00 00                	add    %al,(%rax)
    3ecc:	00 00                	add    %al,(%rax)
    3ece:	00 00                	add    %al,(%rax)
    3ed0:	14 00                	adc    $0x0,%al
    3ed2:	00 00                	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	07                   	(bad)
    3ed9:	00 00                	add    %al,(%rax)
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 17                	add    %dl,(%rdi)
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 90 07 00 00 00    	add    %dl,0x7(%rax)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 07                	add    %al,(%rdi)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 d0                	add    %dl,%al
    3ef9:	06                   	(bad)
    3efa:	00 00                	add    %al,(%rax)
    3efc:	00 00                	add    %al,(%rax)
    3efe:	00 00                	add    %al,(%rax)
    3f00:	08 00                	or     %al,(%rax)
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	c0 00 00             	rolb   $0x0,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 09                	add    %cl,(%rcx)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 18                	add    %bl,(%rax)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 fb                	add    %bh,%bl
    3f21:	ff                   	(bad)
    3f22:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 00                	add    %al,(%rax)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	08 00                	or     %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 fe                	add    %bh,%dh
    3f31:	ff                   	(bad)
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 90 06 00 00 00    	add    %dl,0x6(%rax)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 ff                	add    %bh,%bh
    3f41:	ff                   	(bad)
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 01                	add    %al,(%rcx)
    3f49:	00 00                	add    %al,(%rax)
    3f4b:	00 00                	add    %al,(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 f0                	add    %dh,%al
    3f51:	ff                   	(bad)
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 6c 06 00          	add    %ch,0x0(%rsi,%rax,1)
    3f5b:	00 00                	add    %al,(%rax)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 f9                	add    %bh,%cl
    3f61:	ff                   	(bad)
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fc0 <.got>:
	...

Disassembly of section .got.plt:

0000000000003fe8 <_GLOBAL_OFFSET_TABLE_>:
    3fe8:	e0 3d                	loopne 4027 <_GLOBAL_OFFSET_TABLE_+0x3f>
	...
    3ffe:	00 00                	add    %al,(%rax)
    4000:	36 10 00             	ss adc %al,(%rax)
    4003:	00 00                	add    %al,(%rax)
    4005:	00 00                	add    %al,(%rax)
    4007:	00 46 10             	add    %al,0x10(%rsi)
    400a:	00 00                	add    %al,(%rax)
    400c:	00 00                	add    %al,(%rax)
    400e:	00 00                	add    %al,(%rax)
    4010:	56                   	push   %rsi
    4011:	10 00                	adc    %al,(%rax)
    4013:	00 00                	add    %al,(%rax)
    4015:	00 00                	add    %al,(%rax)
    4017:	00 66 10             	add    %ah,0x10(%rsi)
    401a:	00 00                	add    %al,(%rax)
    401c:	00 00                	add    %al,(%rax)
    401e:	00 00                	add    %al,(%rax)
    4020:	76 10                	jbe    4032 <_GLOBAL_OFFSET_TABLE_+0x4a>
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
    4026:	00 00                	add    %al,(%rax)
    4028:	86 10                	xchg   %dl,(%rax)
    402a:	00 00                	add    %al,(%rax)
    402c:	00 00                	add    %al,(%rax)
    402e:	00 00                	add    %al,(%rax)
    4030:	96                   	xchg   %eax,%esi
    4031:	10 00                	adc    %al,(%rax)
    4033:	00 00                	add    %al,(%rax)
    4035:	00 00                	add    %al,(%rax)
    4037:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
    403d:	00 00                	add    %al,(%rax)
    403f:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
    4045:	00 00                	add    %al,(%rax)
    4047:	00 c6                	add    %al,%dh
    4049:	10 00                	adc    %al,(%rax)
    404b:	00 00                	add    %al,(%rax)
    404d:	00 00                	add    %al,(%rax)
    404f:	00 d6                	add    %dl,%dh
    4051:	10 00                	adc    %al,(%rax)
    4053:	00 00                	add    %al,(%rax)
    4055:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004058 <__data_start>:
	...

0000000000004060 <__dso_handle>:
    4060:	60                   	(bad)
    4061:	40 00 00             	rex add %al,(%rax)
    4064:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
   e:	32 2e                	xor    (%rsi),%ch
  10:	31 20                	xor    %esp,(%rax)
  12:	32 30                	xor    (%rax),%dh
  14:	32 35 30 32 30 37    	xor    0x37303230(%rip),%dh        # 3730324a <_end+0x372ff1da>
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	d9 11                	fsts   (%rcx)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	70 05                	jo     1f <_init-0xfe1>
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	2b 03                	sub    (%rbx),%eax
   2:	00 00                	add    %al,(%rax)
   4:	05 00 01 08 00       	add    $0x80100,%eax
   9:	00 00                	add    %al,(%rax)
   b:	00 0d 16 00 00 00    	add    %cl,0x16(%rip)        # 27 <_init-0xfd9>
  11:	1d 00 00 00 00       	sbb    $0x0,%eax
  16:	0a 00                	or     (%rax),%al
  18:	00 00                	add    %al,(%rax)
  1a:	d9 11                	fsts   (%rcx)
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 00                	add    %al,(%rax)
  22:	70 05                	jo     29 <_init-0xfd7>
	...
  2c:	00 00                	add    %al,(%rax)
  2e:	02 01                	add    (%rcx),%al
  30:	08 93 00 00 00 02    	or     %dl,0x2000000(%rbx)
  36:	02 07                	add    (%rdi),%al
  38:	66 00 00             	data16 add %al,(%rax)
  3b:	00 02                	add    %al,(%rdx)
  3d:	04 07                	add    $0x7,%al
  3f:	d7                   	xlat   %ds:(%rbx)
  40:	00 00                	add    %al,(%rax)
  42:	00 02                	add    %al,(%rdx)
  44:	08 07                	or     %al,(%rdi)
  46:	d2 00                	rolb   %cl,(%rax)
  48:	00 00                	add    %al,(%rax)
  4a:	02 01                	add    (%rcx),%al
  4c:	06                   	(bad)
  4d:	95                   	xchg   %eax,%ebp
  4e:	00 00                	add    %al,(%rax)
  50:	00 02                	add    %al,(%rdx)
  52:	02 05 a6 00 00 00    	add    0xa6(%rip),%al        # fe <_init-0xf02>
  58:	0e                   	(bad)
  59:	04 05                	add    $0x5,%al
  5b:	69 6e 74 00 02 08 05 	imul   $0x5080200,0x74(%rsi),%ebp
  62:	23 01                	and    (%rcx),%eax
  64:	00 00                	add    %al,(%rax)
  66:	06                   	(bad)
  67:	11 01                	adc    %eax,(%rcx)
  69:	00 00                	add    %al,(%rax)
  6b:	02 98 19 5f 00 00    	add    0x5f19(%rax),%bl
  71:	00 06                	add    %al,(%rsi)
  73:	07                   	(bad)
  74:	00 00                	add    %al,(%rax)
  76:	00 02                	add    %al,(%rdx)
  78:	a0 1a 5f 00 00 00 06 	movabs 0xe4060000005f1a,%al
  7f:	e4 00 
  81:	00 00                	add    %al,(%rax)
  83:	02 a2 1f 5f 00 00    	add    0x5f1f(%rdx),%ah
  89:	00 0f                	add    %cl,(%rdi)
  8b:	08 09                	or     %cl,(%rcx)
  8d:	8a 00                	mov    (%rax),%al
  8f:	00 00                	add    %al,(%rax)
  91:	05 96 00 00 00       	add    $0x96,%eax
  96:	02 01                	add    (%rcx),%al
  98:	06                   	(bad)
  99:	9c                   	pushf
  9a:	00 00                	add    %al,(%rax)
  9c:	00 10                	add    %dl,(%rax)
  9e:	96                   	xchg   %eax,%esi
  9f:	00 00                	add    %al,(%rax)
  a1:	00 06                	add    %al,(%rsi)
  a3:	00 00                	add    %al,(%rax)
  a5:	00 00                	add    %al,(%rax)
  a7:	03 d6                	add    %esi,%edx
  a9:	17                   	(bad)
  aa:	43 00 00             	rex.XB add %al,(%r8)
  ad:	00 0a                	add    %cl,(%rdx)
  af:	c5 00 00             	(bad)
  b2:	00 10                	add    %dl,(%rax)
  b4:	04 08                	add    $0x8,%al
  b6:	d5 00 00 00          	{rex2 0x0} add %al,(%rax)
  ba:	07                   	(bad)
  bb:	b0 00                	mov    $0x0,%al
  bd:	00 00                	add    %al,(%rax)
  bf:	04 0e                	add    $0xe,%al
  c1:	0c 72                	or     $0x72,%al
  c3:	00 00                	add    %al,(%rax)
  c5:	00 00                	add    %al,(%rax)
  c7:	07                   	(bad)
  c8:	f2 00 00             	repnz add %al,(%rax)
  cb:	00 04 0f             	add    %al,(%rdi,%rcx,1)
  ce:	11 7e 00             	adc    %edi,0x0(%rsi)
  d1:	00 00                	add    %al,(%rax)
  d3:	08 00                	or     %al,(%rax)
  d5:	02 08                	add    (%rax),%cl
  d7:	07                   	(bad)
  d8:	cd 00                	int    $0x0
  da:	00 00                	add    %al,(%rax)
  dc:	02 08                	add    (%rax),%cl
  de:	05 1e 01 00 00       	add    $0x11e,%eax
  e3:	05 9d 00 00 00       	add    $0x9d,%eax
  e8:	0a 4e 00             	or     0x0(%rsi),%cl
  eb:	00 00                	add    %al,(%rax)
  ed:	08 05 34 0f 01 00    	or     %al,0x10f34(%rip)        # 11027 <_end+0xcfb7>
  f3:	00 07                	add    %al,(%rdi)
  f5:	84 00                	test   %al,(%rax)
  f7:	00 00                	add    %al,(%rax)
  f9:	05 36 09 58 00       	add    $0x580936,%eax
  fe:	00 00                	add    %al,(%rax)
 100:	00 07                	add    %al,(%rdi)
 102:	79 00                	jns    104 <_init-0xefc>
 104:	00 00                	add    %al,(%rax)
 106:	05 37 09 58 00       	add    $0x580937,%eax
 10b:	00 00                	add    %al,(%rax)
 10d:	04 00                	add    $0x0,%al
 10f:	05 91 00 00 00       	add    $0x91,%eax
 114:	11 19                	adc    %ebx,(%rcx)
 116:	01 00                	add    %eax,(%rax)
 118:	00 08                	add    %cl,(%rax)
 11a:	af                   	scas   %es:(%rdi),%eax
 11b:	02 0d 27 01 00 00    	add    0x127(%rip),%cl        # 248 <_init-0xdb8>
 121:	01 8a 00 00 00 00    	add    %ecx,0x0(%rdx)
 127:	08 5f 00             	or     %bl,0x0(%rdi)
 12a:	00 00                	add    %al,(%rax)
 12c:	06                   	(bad)
 12d:	4c 0c 58             	rex.WR or $0x58,%al
 130:	00 00                	add    %al,(%rax)
 132:	00 42 01             	add    %al,0x1(%rdx)
 135:	00 00                	add    %al,(%rax)
 137:	01 8a 00 00 00 01    	add    %ecx,0x1000000(%rdx)
 13d:	a2 00 00 00 00 0b 31 	movabs %al,0x1310b00000000
 144:	01 00 
 146:	00 07                	add    %al,(%rdi)
 148:	6b 01 0c             	imul   $0xc,(%rcx),%eax
 14b:	58                   	pop    %rax
 14c:	00 00                	add    %al,(%rax)
 14e:	00 5a 01             	add    %bl,0x1(%rdx)
 151:	00 00                	add    %al,(%rax)
 153:	01 e3                	add    %esp,%ebx
 155:	00 00                	add    %al,(%rax)
 157:	00 12                	add    %dl,(%rdx)
 159:	00 08                	add    %cl,(%rax)
 15b:	ff 00                	incl   (%rax)
 15d:	00 00                	add    %al,(%rax)
 15f:	05 43 0c 58 00       	add    $0x580c43,%eax
 164:	00 00                	add    %al,(%rax)
 166:	75 01                	jne    169 <_init-0xe97>
 168:	00 00                	add    %al,(%rax)
 16a:	01 7a 01             	add    %edi,0x1(%rdx)
 16d:	00 00                	add    %al,(%rax)
 16f:	01 8c 00 00 00 00 05 	add    %ecx,0x5000000(%rax,%rax,1)
 176:	ae                   	scas   %es:(%rdi),%al
 177:	00 00                	add    %al,(%rax)
 179:	00 09                	add    %cl,(%rcx)
 17b:	75 01                	jne    17e <_init-0xe82>
 17d:	00 00                	add    %al,(%rax)
 17f:	13 50 01             	adc    0x1(%rax),%edx
 182:	00 00                	add    %al,(%rax)
 184:	08 3d 02 0c 58 00    	or     %bh,0x580c02(%rip)        # 580d8c <_end+0x57cd1c>
 18a:	00 00                	add    %al,(%rax)
 18c:	0b 49 01             	or     0x1(%rcx),%ecx
 18f:	00 00                	add    %al,(%rax)
 191:	08 a0 02 0e 8a 00    	or     %ah,0x8a0e02(%rax)
 197:	00 00                	add    %al,(%rax)
 199:	a3 01 00 00 01 43 00 	movabs %eax,0x4301000001
 1a0:	00 00 
 1a2:	00 08                	add    %cl,(%rax)
 1a4:	a1 00 00 00 06 39 0e 	movabs 0x8a0e3906000000,%eax
 1ab:	8a 00 
 1ad:	00 00                	add    %al,(%rax)
 1af:	d2 01                	rolb   %cl,(%rcx)
 1b1:	00 00                	add    %al,(%rax)
 1b3:	01 8a 00 00 00 01    	add    %ecx,0x1000000(%rdx)
 1b9:	a2 00 00 00 01 58 00 	movabs %al,0x5801000000
 1c0:	00 00 
 1c2:	01 58 00             	add    %ebx,0x0(%rax)
 1c5:	00 00                	add    %al,(%rax)
 1c7:	01 58 00             	add    %ebx,0x0(%rax)
 1ca:	00 00                	add    %al,(%rax)
 1cc:	01 66 00             	add    %esp,0x0(%rsi)
 1cf:	00 00                	add    %al,(%rax)
 1d1:	00 14 38             	add    %dl,(%rax,%rdi,1)
 1d4:	01 00                	add    %eax,(%rax)
 1d6:	00 08                	add    %cl,(%rax)
 1d8:	f4                   	hlt
 1d9:	02 0d e5 01 00 00    	add    0x1e5(%rip),%cl        # 3c4 <_init-0xc3c>
 1df:	01 58 00             	add    %ebx,0x0(%rax)
 1e2:	00 00                	add    %al,(%rax)
 1e4:	00 08                	add    %cl,(%rax)
 1e6:	fa                   	cli
 1e7:	00 00                	add    %al,(%rax)
 1e9:	00 08                	add    %cl,(%rax)
 1eb:	69 0c 58 00 00 00 fb 	imul   $0xfb000000,(%rax,%rbx,2),%ecx
 1f2:	01 00                	add    %eax,(%rax)
 1f4:	00 01                	add    %al,(%rcx)
 1f6:	e3 00                	jrcxz  1f8 <_init-0xe08>
 1f8:	00 00                	add    %al,(%rax)
 1fa:	00 15 2c 01 00 00    	add    %dl,0x12c(%rip)        # 32c <_init-0xcd4>
 200:	01 18                	add    %ebx,(%rax)
 202:	05 58 00 00 00       	add    $0x58,%eax
 207:	2b 12                	sub    (%rdx),%edx
 209:	00 00                	add    %al,(%rax)
 20b:	00 00                	add    %al,(%rax)
 20d:	00 00                	add    %al,(%rax)
 20f:	1e                   	(bad)
 210:	05 00 00 00 00       	add    $0x0,%eax
 215:	00 00                	add    %al,(%rax)
 217:	01 9c 0f 03 00 00 0c 	add    %ebx,0xc000003(%rdi,%rcx,1)
 21e:	0c 01                	or     $0x1,%al
 220:	00 00                	add    %al,(%rax)
 222:	0e                   	(bad)
 223:	58                   	pop    %rax
 224:	00 00                	add    %al,(%rax)
 226:	00 03                	add    %al,(%rbx)
 228:	91                   	xchg   %eax,%ecx
 229:	dc 7e 0c             	fdivrl 0xc(%rsi)
 22c:	3d 01 00 00 1a       	cmp    $0x1a000001,%eax
 231:	0f 01 00             	sgdt   (%rax)
 234:	00 03                	add    %al,(%rbx)
 236:	91                   	xchg   %eax,%ecx
 237:	d0 7e 03             	sarb   $1,0x3(%rsi)
 23a:	69 00 1a 11 43 00    	imul   $0x43111a,(%rax),%eax
 240:	00 00                	add    %al,(%rax)
 242:	03 91 e8 7e 03 6a    	add    0x6a037ee8(%rcx),%edx
 248:	00 1a                	add    %bl,(%rdx)
 24a:	14 43                	adc    $0x43,%al
 24c:	00 00                	add    %al,(%rax)
 24e:	00 03                	add    %al,(%rbx)
 250:	91                   	xchg   %eax,%ecx
 251:	b0 7f                	mov    $0x7f,%al
 253:	04 5a                	add    $0x5a,%al
 255:	00 00                	add    %al,(%rax)
 257:	00 1a                	add    %bl,(%rdx)
 259:	17                   	(bad)
 25a:	43 00 00             	rex.XB add %al,(%r8)
 25d:	00 03                	add    %al,(%rbx)
 25f:	91                   	xchg   %eax,%ecx
 260:	98                   	cwtl
 261:	7f 03                	jg     266 <_init-0xd9a>
 263:	74 6d                	je     2d2 <_init-0xd2e>
 265:	70 00                	jo     267 <_init-0xd99>
 267:	1a 1d 43 00 00 00    	sbb    0x43(%rip),%bl        # 2b0 <_init-0xd50>
 26d:	03 91 a8 7f 04 57    	add    0x57047fa8(%rcx),%edx
 273:	00 00                	add    %al,(%rax)
 275:	00 1b                	add    %bl,(%rbx)
 277:	13 43 00             	adc    0x0(%rbx),%eax
 27a:	00 00                	add    %al,(%rax)
 27c:	03 91 f0 7e 04 10    	add    0x10047ef0(%rcx),%edx
 282:	00 00                	add    %al,(%rax)
 284:	00 1c 13             	add    %bl,(%rbx,%rdx,1)
 287:	43 00 00             	rex.XB add %al,(%r8)
 28a:	00 03                	add    %al,(%rbx)
 28c:	91                   	xchg   %eax,%ecx
 28d:	f8                   	clc
 28e:	7e 04                	jle    294 <_init-0xd6c>
 290:	42 01 00             	rex.X add %eax,(%rax)
 293:	00 1d 12 3c 00 00    	add    %bl,0x3c12(%rip)        # 3eab <_DYNAMIC+0xcb>
 299:	00 03                	add    %al,(%rbx)
 29b:	91                   	xchg   %eax,%ecx
 29c:	e4 7e                	in     $0x7e,%al
 29e:	03 73 65             	add    0x65(%rbx),%esi
 2a1:	63 00                	movsxd (%rax),%eax
 2a3:	1e                   	(bad)
 2a4:	13 43 00             	adc    0x0(%rbx),%eax
 2a7:	00 00                	add    %al,(%rax)
 2a9:	03 91 80 7f 04 f5    	add    -0xafb8080(%rcx),%edx
 2af:	00 00                	add    %al,(%rax)
 2b1:	00 1e                	add    %bl,(%rsi)
 2b3:	18 43 00             	sbb    %al,0x0(%rbx)
 2b6:	00 00                	add    %al,(%rax)
 2b8:	03 91 88 7f 03 74    	add    0x74037f88(%rcx),%edx
 2be:	76 31                	jbe    2f1 <_init-0xd0f>
 2c0:	00 1f                	add    %bl,(%rdi)
 2c2:	14 ae                	adc    $0xae,%al
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 02                	add    %al,(%rdx)
 2c8:	91                   	xchg   %eax,%ecx
 2c9:	40 03 74 76 32       	rex add 0x32(%rsi,%rsi,2),%esi
 2ce:	00 1f                	add    %bl,(%rdi)
 2d0:	19 ae 00 00 00 02    	sbb    %ebp,0x2000000(%rsi)
 2d6:	91                   	xchg   %eax,%ecx
 2d7:	50                   	push   %rax
 2d8:	03 74 7a 00          	add    0x0(%rdx,%rdi,2),%esi
 2dc:	20 15 e8 00 00 00    	and    %dl,0xe8(%rip)        # 3ca <_init-0xc36>
 2e2:	03 91 b8 7f 04 bd    	add    -0x42fb8048(%rcx),%edx
 2e8:	00 00                	add    %al,(%rax)
 2ea:	00 21                	add    %ah,(%rcx)
 2ec:	13 0f                	adc    (%rdi),%ecx
 2ee:	03 00                	add    (%rax),%eax
 2f0:	00 03                	add    %al,(%rbx)
 2f2:	91                   	xchg   %eax,%ecx
 2f3:	a0 7f 03 6d 65 6d 00 	movabs 0x942006d656d037f,%al
 2fa:	42 09 
 2fc:	91                   	xchg   %eax,%ecx
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 03                	add    %al,(%rbx)
 301:	91                   	xchg   %eax,%ecx
 302:	90                   	nop
 303:	7f 16                	jg     31b <_init-0xce5>
 305:	70 00                	jo     307 <_init-0xcf9>
 307:	01 57 15             	add    %edx,0x15(%rdi)
 30a:	0f 01 00             	sgdt   (%rax)
 30d:	00 00                	add    %al,(%rax)
 30f:	05 3c 00 00 00       	add    $0x3c,%eax
 314:	17                   	(bad)
 315:	b7 00                	mov    $0x0,%bh
 317:	00 00                	add    %al,(%rax)
 319:	01 0e                	add    %ecx,(%rsi)
 31b:	0d d9 11 00 00       	or     $0x11d9,%eax
 320:	00 00                	add    %al,(%rax)
 322:	00 00                	add    %al,(%rax)
 324:	52                   	push   %rdx
 325:	00 00                	add    %al,(%rax)
 327:	00 00                	add    %al,(%rax)
 329:	00 00                	add    %al,(%rax)
 32b:	00 01                	add    %al,(%rcx)
 32d:	9c                   	pushf
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 05 00 49 13 00    	add    %eax,0x134900(%rip)        # 134906 <_end+0x130896>
   6:	00 02                	add    %al,(%rdx)
   8:	24 00                	and    $0x0,%al
   a:	0b 0b                	or     (%rbx),%ecx
   c:	3e 0b 03             	ds or  (%rbx),%eax
   f:	0e                   	(bad)
  10:	00 00                	add    %al,(%rax)
  12:	03 34 00             	add    (%rax,%rax,1),%esi
  15:	03 08                	add    (%rax),%ecx
  17:	3a 21                	cmp    (%rcx),%ah
  19:	01 3b                	add    %edi,(%rbx)
  1b:	0b 39                	or     (%rcx),%edi
  1d:	0b 49 13             	or     0x13(%rcx),%ecx
  20:	02 18                	add    (%rax),%bl
  22:	00 00                	add    %al,(%rax)
  24:	04 34                	add    $0x34,%al
  26:	00 03                	add    %al,(%rbx)
  28:	0e                   	(bad)
  29:	3a 21                	cmp    (%rcx),%ah
  2b:	01 3b                	add    %edi,(%rbx)
  2d:	0b 39                	or     (%rcx),%edi
  2f:	0b 49 13             	or     0x13(%rcx),%ecx
  32:	02 18                	add    (%rax),%bl
  34:	00 00                	add    %al,(%rax)
  36:	05 0f 00 0b 21       	add    $0x210b000f,%eax
  3b:	08 49 13             	or     %cl,0x13(%rcx)
  3e:	00 00                	add    %al,(%rax)
  40:	06                   	(bad)
  41:	16                   	(bad)
  42:	00 03                	add    %al,(%rbx)
  44:	0e                   	(bad)
  45:	3a 0b                	cmp    (%rbx),%cl
  47:	3b 0b                	cmp    (%rbx),%ecx
  49:	39 0b                	cmp    %ecx,(%rbx)
  4b:	49 13 00             	adc    (%r8),%rax
  4e:	00 07                	add    %al,(%rdi)
  50:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
  55:	0b 3b                	or     (%rbx),%edi
  57:	0b 39                	or     (%rcx),%edi
  59:	0b 49 13             	or     0x13(%rcx),%ecx
  5c:	38 0b                	cmp    %cl,(%rbx)
  5e:	00 00                	add    %al,(%rax)
  60:	08 2e                	or     %ch,(%rsi)
  62:	01 3f                	add    %edi,(%rdi)
  64:	19 03                	sbb    %eax,(%rbx)
  66:	0e                   	(bad)
  67:	3a 0b                	cmp    (%rbx),%cl
  69:	3b 0b                	cmp    (%rbx),%ecx
  6b:	39 0b                	cmp    %ecx,(%rbx)
  6d:	27                   	(bad)
  6e:	19 49 13             	sbb    %ecx,0x13(%rcx)
  71:	3c 19                	cmp    $0x19,%al
  73:	01 13                	add    %edx,(%rbx)
  75:	00 00                	add    %al,(%rax)
  77:	09 37                	or     %esi,(%rdi)
  79:	00 49 13             	add    %cl,0x13(%rcx)
  7c:	00 00                	add    %al,(%rax)
  7e:	0a 13                	or     (%rbx),%dl
  80:	01 03                	add    %eax,(%rbx)
  82:	0e                   	(bad)
  83:	0b 0b                	or     (%rbx),%ecx
  85:	3a 0b                	cmp    (%rbx),%cl
  87:	3b 0b                	cmp    (%rbx),%ecx
  89:	39 21                	cmp    %esp,(%rcx)
  8b:	08 01                	or     %al,(%rcx)
  8d:	13 00                	adc    (%rax),%eax
  8f:	00 0b                	add    %cl,(%rbx)
  91:	2e 01 3f             	cs add %edi,(%rdi)
  94:	19 03                	sbb    %eax,(%rbx)
  96:	0e                   	(bad)
  97:	3a 0b                	cmp    (%rbx),%cl
  99:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270bd8 <_end+0x1926cb68>
  9f:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
  a3:	01 13                	add    %edx,(%rbx)
  a5:	00 00                	add    %al,(%rax)
  a7:	0c 05                	or     $0x5,%al
  a9:	00 03                	add    %al,(%rbx)
  ab:	0e                   	(bad)
  ac:	3a 21                	cmp    (%rcx),%ah
  ae:	01 3b                	add    %edi,(%rbx)
  b0:	21 18                	and    %ebx,(%rax)
  b2:	39 0b                	cmp    %ecx,(%rbx)
  b4:	49 13 02             	adc    (%r10),%rax
  b7:	18 00                	sbb    %al,(%rax)
  b9:	00 0d 11 01 25 0e    	add    %cl,0xe250111(%rip)        # e2501d0 <_end+0xe24c160>
  bf:	13 0b                	adc    (%rbx),%ecx
  c1:	03 1f                	add    (%rdi),%ebx
  c3:	1b 1f                	sbb    (%rdi),%ebx
  c5:	11 01                	adc    %eax,(%rcx)
  c7:	12 07                	adc    (%rdi),%al
  c9:	10 17                	adc    %dl,(%rdi)
  cb:	00 00                	add    %al,(%rax)
  cd:	0e                   	(bad)
  ce:	24 00                	and    $0x0,%al
  d0:	0b 0b                	or     (%rbx),%ecx
  d2:	3e 0b 03             	ds or  (%rbx),%eax
  d5:	08 00                	or     %al,(%rax)
  d7:	00 0f                	add    %cl,(%rdi)
  d9:	0f 00 0b             	str    (%rbx)
  dc:	0b 00                	or     (%rax),%eax
  de:	00 10                	add    %dl,(%rax)
  e0:	26 00 49 13          	es add %cl,0x13(%rcx)
  e4:	00 00                	add    %al,(%rax)
  e6:	11 2e                	adc    %ebp,(%rsi)
  e8:	01 3f                	add    %edi,(%rdi)
  ea:	19 03                	sbb    %eax,(%rbx)
  ec:	0e                   	(bad)
  ed:	3a 0b                	cmp    (%rbx),%cl
  ef:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c2e <_end+0x1926cbbe>
  f5:	3c 19                	cmp    $0x19,%al
  f7:	01 13                	add    %edx,(%rbx)
  f9:	00 00                	add    %al,(%rax)
  fb:	12 18                	adc    (%rax),%bl
  fd:	00 00                	add    %al,(%rax)
  ff:	00 13                	add    %dl,(%rbx)
 101:	2e 00 3f             	cs add %bh,(%rdi)
 104:	19 03                	sbb    %eax,(%rbx)
 106:	0e                   	(bad)
 107:	3a 0b                	cmp    (%rbx),%cl
 109:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c48 <_end+0x1926cbd8>
 10f:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 113:	00 00                	add    %al,(%rax)
 115:	14 2e                	adc    $0x2e,%al
 117:	01 3f                	add    %edi,(%rdi)
 119:	19 03                	sbb    %eax,(%rbx)
 11b:	0e                   	(bad)
 11c:	3a 0b                	cmp    (%rbx),%cl
 11e:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270c5d <_end+0x1926cbed>
 124:	87 01                	xchg   %eax,(%rcx)
 126:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 129:	01 13                	add    %edx,(%rbx)
 12b:	00 00                	add    %al,(%rax)
 12d:	15 2e 01 3f 19       	adc    $0x193f012e,%eax
 132:	03 0e                	add    (%rsi),%ecx
 134:	3a 0b                	cmp    (%rbx),%cl
 136:	3b 0b                	cmp    (%rbx),%ecx
 138:	39 0b                	cmp    %ecx,(%rbx)
 13a:	27                   	(bad)
 13b:	19 49 13             	sbb    %ecx,0x13(%rcx)
 13e:	11 01                	adc    %eax,(%rcx)
 140:	12 07                	adc    (%rdi),%al
 142:	40 18 7c 19 01       	sbb    %dil,0x1(%rcx,%rbx,1)
 147:	13 00                	adc    (%rax),%eax
 149:	00 16                	add    %dl,(%rsi)
 14b:	34 00                	xor    $0x0,%al
 14d:	03 08                	add    (%rax),%ecx
 14f:	3a 0b                	cmp    (%rbx),%cl
 151:	3b 0b                	cmp    (%rbx),%ecx
 153:	39 0b                	cmp    %ecx,(%rbx)
 155:	49 13 00             	adc    (%r8),%rax
 158:	00 17                	add    %dl,(%rdi)
 15a:	2e 00 03             	cs add %al,(%rbx)
 15d:	0e                   	(bad)
 15e:	3a 0b                	cmp    (%rbx),%cl
 160:	3b 0b                	cmp    (%rbx),%ecx
 162:	39 0b                	cmp    %ecx,(%rbx)
 164:	11 01                	adc    %eax,(%rcx)
 166:	12 07                	adc    (%rdi),%al
 168:	40 18 7c 19 00       	sbb    %dil,0x0(%rcx,%rbx,1)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	35 02 00 00 05       	xor    $0x5000002,%eax
   5:	00 08                	add    %cl,(%rax)
   7:	00 61 00             	add    %ah,0x0(%rcx)
   a:	00 00                	add    %al,(%rax)
   c:	01 01                	add    %eax,(%rcx)
   e:	01 fb                	add    %edi,%ebx
  10:	0e                   	(bad)
  11:	0d 00 01 01 01       	or     $0x1010100,%eax
  16:	01 00                	add    %eax,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	01 00                	add    %eax,(%rax)
  1c:	00 01                	add    %al,(%rcx)
  1e:	01 01                	add    %eax,(%rcx)
  20:	1f                   	(bad)
  21:	06                   	(bad)
  22:	0a 00                	or     (%rax),%al
  24:	00 00                	add    %al,(%rax)
  26:	37                   	(bad)
  27:	00 00                	add    %al,(%rax)
  29:	00 49 00             	add    %cl,0x0(%rcx)
  2c:	00 00                	add    %al,(%rax)
  2e:	79 00                	jns    30 <_init-0xfd0>
  30:	00 00                	add    %al,(%rax)
  32:	91                   	xchg   %eax,%ecx
  33:	00 00                	add    %al,(%rax)
  35:	00 a2 00 00 00 02    	add    %ah,0x2000000(%rdx)
  3b:	01 1f                	add    %ebx,(%rdi)
  3d:	02 0f                	add    (%rdi),%cl
  3f:	09 00                	or     %eax,(%rax)
	...
  49:	00 af 00 00 00 01    	add    %ch,0x1000000(%rdi)
  4f:	b7 00                	mov    $0x0,%bh
  51:	00 00                	add    %al,(%rax)
  53:	02 c0                	add    %al,%al
  55:	00 00                	add    %al,(%rax)
  57:	00 03                	add    %al,(%rbx)
  59:	d1 00                	roll   $1,(%rax)
  5b:	00 00                	add    %al,(%rax)
  5d:	04 d8                	add    $0xd8,%al
  5f:	00 00                	add    %al,(%rax)
  61:	00 04 df             	add    %al,(%rdi,%rbx,8)
  64:	00 00                	add    %al,(%rax)
  66:	00 05 e7 00 00 00    	add    %al,0xe7(%rip)        # 153 <_init-0xead>
  6c:	05 05 01 00 09       	add    $0x9000105,%eax
  71:	02 d9                	add    %cl,%bl
  73:	11 00                	adc    %eax,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 00                	add    %al,(%rax)
  79:	00 03                	add    %al,(%rbx)
  7b:	0e                   	(bad)
  7c:	01 05 05 4b e5 e5    	add    %eax,-0x1a1ab4fb(%rip)        # ffffffffe5e54b87 <_end+0xffffffffe5e50b17>
  82:	e5 e5                	in     $0xe5,%eax
  84:	05 01 e5 40 08       	add    $0x840e501,%eax
  89:	74 05                	je     90 <_init-0xf70>
  8b:	13 e6                	adc    %esi,%esp
  8d:	83 05 12 83 05 0b a4 	addl   $0xffffffa4,0xb058312(%rip)        # b0583a6 <_end+0xb054336>
  94:	05 0e 59 05 14       	add    $0x1405590e,%eax
  99:	9e                   	sahf
  9a:	05 0c 3c 05 16       	add    $0x16053c0c,%eax
  9f:	83 05 1c 9e 05 0d 9e 	addl   $0xffffff9e,0xd059e1c(%rip)        # d059ec2 <_end+0xd055e52>
  a6:	05 19 08 92 83       	add    $0x83920819,%eax
  ab:	05 1f 75 05 2b       	add    $0x2b05751f,%eax
  b0:	00 02                	add    %al,(%rdx)
  b2:	04 01                	add    $0x1,%al
  b4:	08 20                	or     %ah,(%rax)
  b6:	05 1d 00 02 04       	add    $0x402001d,%eax
  bb:	01 3c 05 15 67 05 19 	add    %edi,0x19056715(,%rax,1)
  c2:	31 83 05 1d 75 05    	xor    %eax,0x5751d05(%rbx)
  c8:	1b 00                	sbb    (%rax),%eax
  ca:	02 04 01             	add    (%rcx,%rax,1),%al
  cd:	08 20                	or     %ah,(%rax)
  cf:	05 15 67 05 19       	add    $0x19056715,%eax
  d4:	31 83 05 1e 75 05    	xor    %eax,0x5751e05(%rbx)
  da:	1c 00                	sbb    $0x0,%al
  dc:	02 04 01             	add    (%rcx,%rax,1),%al
  df:	08 20                	or     %ah,(%rax)
  e1:	05 15 67 31 9f       	add    $0x9f316715,%eax
  e6:	05 0d a2 05 10       	add    $0x1005a20d,%eax
  eb:	03 65 82             	add    -0x7e(%rbp),%esp
  ee:	05 13 e4 05 0f       	add    $0xf05e413,%eax
  f3:	03 1f                	add    (%rdi),%ebx
  f5:	82                   	(bad)
  f6:	05 14 02 2b 14       	add    $0x142b0214,%eax
  fb:	05 0a 66 05 0f       	add    $0xf05660a,%eax
 100:	f3 05 0c 08 3e 05    	repz add $0x53e080c,%eax
 106:	05 ac 05 10 2f       	add    $0x2f1005ac,%eax
 10b:	05 14 08 58 05       	add    $0x5580814,%eax
 110:	1c 00                	sbb    $0x0,%al
 112:	02 04 03             	add    (%rbx,%rax,1),%al
 115:	8f 05 13 00 02 04    	pop    0x4020013(%rip)        # 402012e <_end+0x401c0be>
 11b:	01 82 05 0c cb 05    	add    %eax,0x5cb0c05(%rdx)
 121:	05 ac 05 13 59       	add    $0x591305ac,%eax
 126:	00 02                	add    %al,(%rdx)
 128:	04 01                	add    $0x1,%al
 12a:	06                   	(bad)
 12b:	58                   	pop    %rax
 12c:	05 22 00 02 04       	add    $0x4020022,%eax
 131:	01 06                	add    %eax,(%rsi)
 133:	2e 05 1a 00 02 04    	cs add $0x402001a,%eax
 139:	01 d6                	add    %edx,%esi
 13b:	05 0c 00 02 04       	add    $0x402000c,%eax
 140:	01 d6                	add    %edx,%esi
 142:	05 0d d7 05 1b       	add    $0x1b05d70d,%eax
 147:	c9                   	leave
 148:	05 12 08 74 05       	add    $0x5740812,%eax
 14d:	22 67 05             	and    0x5(%rdi),%ah
 150:	15 08 2e 05 22       	adc    $0x22052e08,%eax
 155:	08 58 05             	or     %bl,0x5(%rax)
 158:	19 2e                	sbb    %ebp,(%rsi)
 15a:	05 15 2f 05 19       	add    $0x19052f15,%eax
 15f:	08 2e                	or     %ch,(%rsi)
 161:	05 1c 00 02 04       	add    $0x402001c,%eax
 166:	02 61 05             	add    0x5(%rcx),%ah
 169:	13 00                	adc    (%rax),%eax
 16b:	02 04 01             	add    (%rcx,%rax,1),%al
 16e:	82                   	(bad)
 16f:	05 0c 03 09 08       	add    $0x809030c,%eax
 174:	12 05 05 ac 05 3f    	adc    0x3f05ac05(%rip),%al        # 3f05ad7f <_end+0x3f056d0f>
 17a:	2f                   	(bad)
 17b:	05 44 08 ac 05       	add    $0x5ac0844,%eax
 180:	1f                   	(bad)
 181:	90                   	nop
 182:	05 22 08 74 05       	add    $0x5740822,%eax
 187:	13 90 05 2c 74 05    	adc    0x5742c05(%rax),%edx
 18d:	2a 74 05 20          	sub    0x20(%rbp,%rax,1),%dh
 191:	00 02                	add    %al,(%rdx)
 193:	04 03                	add    $0x3,%al
 195:	3b 05 1a 00 02 04    	cmp    0x402001a(%rip),%eax        # 40201b5 <_end+0x401c145>
 19b:	01 82 05 13 00 02    	add    %eax,0x2001305(%rdx)
 1a1:	04 01                	add    $0x1,%al
 1a3:	82                   	(bad)
 1a4:	05 40 92 05 43       	add    $0x43059240,%eax
 1a9:	66 05 1b 90          	add    $0x901b,%ax
 1ad:	05 23 08 4a 05       	add    $0x54a0823,%eax
 1b2:	0f 90 05 2d 74 05 2b 	seto   0x2b05742d(%rip)        # 2b0575e6 <_end+0x2b053576>
 1b9:	74 05                	je     1c0 <_init-0xe40>
 1bb:	09 3f                	or     %edi,(%rdi)
 1bd:	05 05 08 e6 05       	add    $0x5e60805,%eax
 1c2:	0c 08                	or     $0x8,%al
 1c4:	2f                   	(bad)
 1c5:	05 05 ac 05 1a       	add    $0x1a05ac05,%eax
 1ca:	00 02                	add    %al,(%rdx)
 1cc:	04 03                	add    $0x3,%al
 1ce:	2e 05 13 00 02 04    	cs add $0x4020013,%eax
 1d4:	01 82 05 05 cb 05    	add    %eax,0x5cb0505(%rdx)
 1da:	0c 08                	or     $0x8,%al
 1dc:	2f                   	(bad)
 1dd:	05 1a 4a 05 08       	add    $0x8054a1a,%eax
 1e2:	4a 05 1d 59 05 18    	rex.WX add $0x1805591d,%rax
 1e8:	4a 05 2b 74 05 26    	rex.WX add $0x2605742b,%rax
 1ee:	4a 05 0e 3c 05 12    	rex.WX add $0x12053c0e,%rax
 1f4:	4b 05 1f 4a 05 1a    	rex.WXB add $0x1a054a1f,%rax
 1fa:	4a 05 27 3c 05 0d    	rex.WX add $0xd053c27,%rax
 200:	4a 05 13 68 05 21    	rex.WX add $0x21056813,%rax
 206:	4a 05 1c 4a 05 0e    	rex.WX add $0xe054a1c,%rax
 20c:	3c 05                	cmp    $0x5,%al
 20e:	12 4b 05             	adc    0x5(%rbx),%cl
 211:	1f                   	(bad)
 212:	4a 05 1a 4a 05 0d    	rex.WX add $0xd054a1a,%rax
 218:	3c 05                	cmp    $0x5,%al
 21a:	33 4e 05             	xor    0x5(%rsi),%ecx
 21d:	3e ac                	lods   %ds:(%rsi),%al
 21f:	05 46 74 05 56       	add    $0x56057446,%eax
 224:	02 35 12 05 05 08    	add    0x8050512(%rip),%dh        # 805073c <_end+0x804c6cc>
 22a:	b9 02 6c 14 08       	mov    $0x8146c02,%ecx
 22f:	2f                   	(bad)
 230:	05 01 08 13 02       	add    $0x2130801,%eax
 235:	16                   	(bad)
 236:	00 01                	add    %al,(%rcx)
 238:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	73 69                	jae    6b <_init-0xf95>
   2:	7a 65                	jp     69 <_init-0xf97>
   4:	5f                   	pop    %rdi
   5:	74 00                	je     7 <_init-0xff9>
   7:	5f                   	pop    %rdi
   8:	5f                   	pop    %rdi
   9:	74 69                	je     74 <_init-0xf8c>
   b:	6d                   	insl   (%dx),%es:(%rdi)
   c:	65 5f                	gs pop %rdi
   e:	74 00                	je     10 <_init-0xff0>
  10:	63 6f 75             	movsxd 0x75(%rdi),%ebp
  13:	6e                   	outsb  %ds:(%rsi),(%dx)
  14:	74 00                	je     16 <_init-0xfea>
  16:	47                   	rex.RXB
  17:	4e 55                	rex.WRX push %rbp
  19:	20 43 31             	and    %al,0x31(%rbx)
  1c:	37                   	(bad)
  1d:	20 31                	and    %dh,(%rcx)
  1f:	34 2e                	xor    $0x2e,%al
  21:	32 2e                	xor    (%rsi),%ch
  23:	31 20                	xor    %esp,(%rax)
  25:	32 30                	xor    (%rax),%dh
  27:	32 35 30 32 30 37    	xor    0x37303230(%rip),%dh        # 3730325d <_end+0x372ff1ed>
  2d:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e7574a0 <_end+0x6e753430>
  33:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  39:	72 69                	jb     a4 <_init-0xf5c>
  3b:	63 20                	movsxd (%rax),%esp
  3d:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  42:	68 3d 78 38 36       	push   $0x3638783d
  47:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  4c:	67 00 74 69 6d       	add    %dh,0x6d(%ecx,%ebp,2)
  51:	65 7a 6f             	gs jp  c3 <_init-0xf3d>
  54:	6e                   	outsb  %ds:(%rsi),(%dx)
  55:	65 00 6d 65          	add    %ch,%gs:0x65(%rbp)
  59:	6d                   	insl   (%dx),%es:(%rdi)
  5a:	73 69                	jae    c5 <_init-0xf3b>
  5c:	7a 65                	jp     c3 <_init-0xf3d>
  5e:	00 6d 75             	add    %ch,0x75(%rbp)
  61:	6e                   	outsb  %ds:(%rsi),(%dx)
  62:	6d                   	insl   (%dx),%es:(%rdi)
  63:	61                   	(bad)
  64:	70 00                	jo     66 <_init-0xf9a>
  66:	73 68                	jae    d0 <_init-0xf30>
  68:	6f                   	outsl  %ds:(%rsi),(%dx)
  69:	72 74                	jb     df <_init-0xf21>
  6b:	20 75 6e             	and    %dh,0x6e(%rbp)
  6e:	73 69                	jae    d9 <_init-0xf27>
  70:	67 6e                	outsb  %ds:(%esi),(%dx)
  72:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  77:	74 00                	je     79 <_init-0xf87>
  79:	74 7a                	je     f5 <_init-0xf0b>
  7b:	5f                   	pop    %rdi
  7c:	64 73 74             	fs jae f3 <_init-0xf0d>
  7f:	74 69                	je     ea <_init-0xf16>
  81:	6d                   	insl   (%dx),%es:(%rdi)
  82:	65 00 74 7a 5f       	add    %dh,%gs:0x5f(%rdx,%rdi,2)
  87:	6d                   	insl   (%dx),%es:(%rdi)
  88:	69 6e 75 74 65 73 77 	imul   $0x77736574,0x75(%rsi),%ebp
  8f:	65 73 74             	gs jae 106 <_init-0xefa>
  92:	00 75 6e             	add    %dh,0x6e(%rbp)
  95:	73 69                	jae    100 <_init-0xf00>
  97:	67 6e                	outsb  %ds:(%esi),(%dx)
  99:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  9e:	61                   	(bad)
  9f:	72 00                	jb     a1 <_init-0xf5f>
  a1:	6d                   	insl   (%dx),%es:(%rdi)
  a2:	6d                   	insl   (%dx),%es:(%rdi)
  a3:	61                   	(bad)
  a4:	70 00                	jo     a6 <_init-0xf5a>
  a6:	73 68                	jae    110 <_init-0xef0>
  a8:	6f                   	outsl  %ds:(%rsi),(%dx)
  a9:	72 74                	jb     11f <_init-0xee1>
  ab:	20 69 6e             	and    %ch,0x6e(%rcx)
  ae:	74 00                	je     b0 <_init-0xf50>
  b0:	74 76                	je     128 <_init-0xed8>
  b2:	5f                   	pop    %rdi
  b3:	73 65                	jae    11a <_init-0xee6>
  b5:	63 00                	movsxd (%rax),%eax
  b7:	75 73                	jne    12c <_init-0xed4>
  b9:	61                   	(bad)
  ba:	67 65 00 69 6e       	add    %ch,%gs:0x6e(%ecx)
  bf:	64 69 63 65 73 00 74 	imul   $0x69740073,%fs:0x65(%rbx),%esp
  c6:	69 
  c7:	6d                   	insl   (%dx),%es:(%rdi)
  c8:	65 76 61             	gs jbe 12c <_init-0xed4>
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
  d0:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  d5:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  d9:	73 69                	jae    144 <_init-0xebc>
  db:	67 6e                	outsb  %ds:(%esi),(%dx)
  dd:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  e2:	74 00                	je     e4 <_init-0xf1c>
  e4:	5f                   	pop    %rdi
  e5:	5f                   	pop    %rdi
  e6:	73 75                	jae    15d <_init-0xea3>
  e8:	73 65                	jae    14f <_init-0xeb1>
  ea:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
  ed:	64 73 5f             	fs jae 14f <_init-0xeb1>
  f0:	74 00                	je     f2 <_init-0xf0e>
  f2:	74 76                	je     16a <_init-0xe96>
  f4:	5f                   	pop    %rdi
  f5:	75 73                	jne    16a <_init-0xe96>
  f7:	65 63 00             	movsxd %gs:(%rax),%eax
  fa:	61                   	(bad)
  fb:	74 6f                	je     16c <_init-0xe94>
  fd:	69 00 67 65 74 74    	imul   $0x74746567,(%rax),%eax
 103:	69 6d 65 6f 66 64 61 	imul   $0x6164666f,0x65(%rbp),%ebp
 10a:	79 00                	jns    10c <_init-0xef4>
 10c:	61                   	(bad)
 10d:	72 67                	jb     176 <_init-0xe8a>
 10f:	63 00                	movsxd (%rax),%eax
 111:	5f                   	pop    %rdi
 112:	5f                   	pop    %rdi
 113:	6f                   	outsl  %ds:(%rsi),(%dx)
 114:	66 66 5f             	data16 pop %di
 117:	74 00                	je     119 <_init-0xee7>
 119:	66 72 65             	data16 jb 181 <_init-0xe7f>
 11c:	65 00 6c 6f 6e       	add    %ch,%gs:0x6e(%rdi,%rbp,2)
 121:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 126:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 12a:	74 00                	je     12c <_init-0xed4>
 12c:	6d                   	insl   (%dx),%es:(%rdi)
 12d:	61                   	(bad)
 12e:	69 6e 00 70 72 69 6e 	imul   $0x6e697270,0x0(%rsi),%ebp
 135:	74 66                	je     19d <_init-0xe63>
 137:	00 65 78             	add    %ah,0x78(%rbp)
 13a:	69 74 00 61 72 67 76 	imul   $0x766772,0x61(%rax,%rax,1),%esi
 141:	00 
 142:	73 74                	jae    1b8 <_init-0xe48>
 144:	72 69                	jb     1af <_init-0xe51>
 146:	64 65 00 6d 61       	fs add %ch,%gs:0x61(%rbp)
 14b:	6c                   	insb   (%dx),%es:(%rdi)
 14c:	6c                   	insb   (%dx),%es:(%rdi)
 14d:	6f                   	outsl  %ds:(%rsi),(%dx)
 14e:	63 00                	movsxd (%rax),%eax
 150:	72 61                	jb     1b3 <_init-0xe4d>
 152:	6e                   	outsb  %ds:(%rsi),(%dx)
 153:	64                   	fs
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6c                   	insb   (%dx),%es:(%rdi)
   1:	61                   	(bad)
   2:	74 65                	je     69 <_init-0xf97>
   4:	6e                   	outsb  %ds:(%rsi),(%dx)
   5:	63 79 2e             	movsxd 0x2e(%rcx),%edi
   8:	63 00                	movsxd (%rax),%eax
   a:	2f                   	(bad)
   b:	68 6f 6d 65 2f       	push   $0x2f656d6f
  10:	61                   	(bad)
  11:	76 2f                	jbe    42 <_init-0xfbe>
  13:	53                   	push   %rbx
  14:	63 68 6f             	movsxd 0x6f(%rax),%ebp
  17:	6f                   	outsl  %ds:(%rsi),(%dx)
  18:	6c                   	insb   (%dx),%es:(%rdi)
  19:	2f                   	(bad)
  1a:	63 61 63             	movsxd 0x63(%rcx),%esp
  1d:	68 65 5f 62 65       	push   $0x65625f65
  22:	6e                   	outsb  %ds:(%rsi),(%dx)
  23:	63 68 6d             	movsxd 0x6d(%rax),%ebp
  26:	61                   	(bad)
  27:	72 6b                	jb     94 <_init-0xf6c>
  29:	69 6e 67 2f 72 65 66 	imul   $0x6665722f,0x67(%rsi),%ebp
  30:	65 72 65             	gs jb  98 <_init-0xf68>
  33:	6e                   	outsb  %ds:(%rsi),(%dx)
  34:	63 65 00             	movsxd 0x0(%rbp),%esp
  37:	2f                   	(bad)
  38:	75 73                	jne    ad <_init-0xf53>
  3a:	72 2f                	jb     6b <_init-0xf95>
  3c:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  43:	2f                   	(bad)
  44:	62 69 74 73 00       	(bad)
  49:	2f                   	(bad)
  4a:	75 73                	jne    bf <_init-0xf41>
  4c:	72 2f                	jb     7d <_init-0xf83>
  4e:	6c                   	insb   (%dx),%es:(%rdi)
  4f:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  56:	78 38                	js     90 <_init-0xf70>
  58:	36 5f                	ss pop %rdi
  5a:	36 34 2d             	ss xor $0x2d,%al
  5d:	70 63                	jo     c2 <_init-0xf3e>
  5f:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  64:	78 2d                	js     93 <_init-0xf6d>
  66:	67 6e                	outsb  %ds:(%esi),(%dx)
  68:	75 2f                	jne    99 <_init-0xf67>
  6a:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  6d:	32 2e                	xor    (%rsi),%ch
  6f:	31 2f                	xor    %ebp,(%rdi)
  71:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  78:	00 2f                	add    %ch,(%rdi)
  7a:	75 73                	jne    ef <_init-0xf11>
  7c:	72 2f                	jb     ad <_init-0xf53>
  7e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  85:	2f                   	(bad)
  86:	62 69 74 73 2f       	(bad)
  8b:	74 79                	je     106 <_init-0xefa>
  8d:	70 65                	jo     f4 <_init-0xf0c>
  8f:	73 00                	jae    91 <_init-0xf6f>
  91:	2f                   	(bad)
  92:	75 73                	jne    107 <_init-0xef9>
  94:	72 2f                	jb     c5 <_init-0xf3b>
  96:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  9d:	2f                   	(bad)
  9e:	73 79                	jae    119 <_init-0xee7>
  a0:	73 00                	jae    a2 <_init-0xf5e>
  a2:	2f                   	(bad)
  a3:	75 73                	jne    118 <_init-0xee8>
  a5:	72 2f                	jb     d6 <_init-0xf2a>
  a7:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  ae:	00 74 79 70          	add    %dh,0x70(%rcx,%rdi,2)
  b2:	65 73 2e             	gs jae e3 <_init-0xf1d>
  b5:	68 00 73 74 64       	push   $0x64747300
  ba:	64 65 66 2e 68 00 73 	fs gs cs pushw $0x7300
  c1:	74 72                	je     135 <_init-0xecb>
  c3:	75 63                	jne    128 <_init-0xed8>
  c5:	74 5f                	je     126 <_init-0xeda>
  c7:	74 69                	je     132 <_init-0xece>
  c9:	6d                   	insl   (%dx),%es:(%rdi)
  ca:	65 76 61             	gs jbe 12e <_init-0xed2>
  cd:	6c                   	insb   (%dx),%es:(%rdi)
  ce:	2e 68 00 74 69 6d    	cs push $0x6d697400
  d4:	65 2e 68 00 6d 6d 61 	gs cs push $0x616d6d00
  db:	6e                   	outsb  %ds:(%rsi),(%dx)
  dc:	2e 68 00 73 74 64    	cs push $0x64747300
  e2:	69 6f 2e 68 00 73 74 	imul   $0x74730068,0x2e(%rdi),%ebp
  e9:	64 6c                	fs insb (%dx),%es:(%rdi)
  eb:	69                   	.byte 0x69
  ec:	62                   	.byte 0x62
  ed:	2e                   	cs
  ee:	68                   	.byte 0x68
	...
