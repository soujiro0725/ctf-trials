
4a2181aaf70b04ec984c233fbe50a1fe600f90062a58d6b69ea15b85531b9652:     ファイル形式 elf64-x86-64


セクション .init の逆アセンブル:

00000000000006f8 <_init>:
 6f8:	50                   	push   %rax
 6f9:	e8 fb 01 00 00       	callq  8f9 <__register_frame_info@plt+0x191>
 6fe:	e8 99 07 00 00       	callq  e9c <__register_frame_info@plt+0x734>
 703:	58                   	pop    %rax
 704:	c3                   	retq   

セクション .plt の逆アセンブル:

0000000000000710 <.plt>:
 710:	ff 35 6a 18 20 00    	pushq  0x20186a(%rip)        # 201f80 <_fini+0x2010bf>
 716:	ff 25 6c 18 20 00    	jmpq   *0x20186c(%rip)        # 201f88 <_fini+0x2010c7>
 71c:	0f 1f 40 00          	nopl   0x0(%rax)

セクション .plt.got の逆アセンブル:

0000000000000720 <printf@plt>:
 720:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201f90 <printf>
 726:	66 90                	xchg   %ax,%ax

0000000000000728 <fgets@plt>:
 728:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201f98 <fgets>
 72e:	66 90                	xchg   %ax,%ax

0000000000000730 <puts@plt>:
 730:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fa0 <puts>
 736:	66 90                	xchg   %ax,%ax

0000000000000738 <__cxa_finalize@plt>:
 738:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fa8 <__cxa_finalize>
 73e:	66 90                	xchg   %ax,%ax

0000000000000740 <fflush@plt>:
 740:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 201fb0 <fflush>
 746:	66 90                	xchg   %ax,%ax

0000000000000748 <calloc@plt>:
 748:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fc0 <calloc>
 74e:	66 90                	xchg   %ax,%ax

0000000000000750 <__deregister_frame_info@plt>:
 750:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 201fc8 <__deregister_frame_info>
 756:	66 90                	xchg   %ax,%ax

0000000000000758 <exit@plt>:
 758:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fe0 <exit>
 75e:	66 90                	xchg   %ax,%ax

0000000000000760 <__libc_start_main@plt>:
 760:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 201fe8 <__libc_start_main>
 766:	66 90                	xchg   %ax,%ax

0000000000000768 <__register_frame_info@plt>:
 768:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 201ff8 <__register_frame_info>
 76e:	66 90                	xchg   %ax,%ax

セクション .text の逆アセンブル:

0000000000000770 <.text>:
 770:	53                   	push   %rbx
 771:	be 51 00 00 00       	mov    $0x51,%esi
 776:	bf 01 00 00 00       	mov    $0x1,%edi
 77b:	e8 c8 ff ff ff       	callq  748 <calloc@plt>
 780:	48 8d 3d 42 07 00 00 	lea    0x742(%rip),%rdi        # ec9 <_fini+0x8>
 787:	48 89 c3             	mov    %rax,%rbx
 78a:	e8 a1 ff ff ff       	callq  730 <puts@plt>
 78f:	48 8b 3d 8a 18 20 00 	mov    0x20188a(%rip),%rdi        # 202020 <stdout>
 796:	e8 a5 ff ff ff       	callq  740 <fflush@plt>
 79b:	48 8b 15 86 18 20 00 	mov    0x201886(%rip),%rdx        # 202028 <stdin>
 7a2:	be 50 00 00 00       	mov    $0x50,%esi
 7a7:	48 89 df             	mov    %rbx,%rdi
 7aa:	e8 79 ff ff ff       	callq  728 <fgets@plt>
 7af:	48 89 df             	mov    %rbx,%rdi
 7b2:	e8 b5 04 00 00       	callq  c6c <__register_frame_info@plt+0x504>
 7b7:	48 8d 3d 17 07 00 00 	lea    0x717(%rip),%rdi        # ed5 <_fini+0x14>
 7be:	48 89 c6             	mov    %rax,%rsi
 7c1:	31 c0                	xor    %eax,%eax
 7c3:	e8 58 ff ff ff       	callq  720 <printf@plt>
 7c8:	31 c0                	xor    %eax,%eax
 7ca:	5b                   	pop    %rbx
 7cb:	c3                   	retq   
 7cc:	48 31 ed             	xor    %rbp,%rbp
 7cf:	48 89 e7             	mov    %rsp,%rdi
 7d2:	48 8d 35 4f 16 20 00 	lea    0x20164f(%rip),%rsi        # 201e28 <_fini+0x200f67>
 7d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 7dd:	e8 00 00 00 00       	callq  7e2 <__register_frame_info@plt+0x7a>
 7e2:	48 83 ec 08          	sub    $0x8,%rsp
 7e6:	48 8d 57 08          	lea    0x8(%rdi),%rdx
 7ea:	48 8b 37             	mov    (%rdi),%rsi
 7ed:	4c 8d 05 cd 06 00 00 	lea    0x6cd(%rip),%r8        # ec1 <_fini>
 7f4:	48 8b 0d bd 17 20 00 	mov    0x2017bd(%rip),%rcx        # 201fb8 <_fini+0x2010f7>
 7fb:	45 31 c9             	xor    %r9d,%r9d
 7fe:	48 8d 3d 6b ff ff ff 	lea    -0x95(%rip),%rdi        # 770 <__register_frame_info@plt+0x8>
 805:	e8 56 ff ff ff       	callq  760 <__libc_start_main@plt>
 80a:	48 8d 3d f7 17 20 00 	lea    0x2017f7(%rip),%rdi        # 202008 <_edata>
 811:	48 8d 05 f7 17 20 00 	lea    0x2017f7(%rip),%rax        # 20200f <_edata+0x7>
 818:	55                   	push   %rbp
 819:	48 29 f8             	sub    %rdi,%rax
 81c:	48 89 e5             	mov    %rsp,%rbp
 81f:	48 83 f8 0e          	cmp    $0xe,%rax
 823:	76 0f                	jbe    834 <__register_frame_info@plt+0xcc>
 825:	48 8b 05 ac 17 20 00 	mov    0x2017ac(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 82c:	48 85 c0             	test   %rax,%rax
 82f:	74 03                	je     834 <__register_frame_info@plt+0xcc>
 831:	5d                   	pop    %rbp
 832:	ff e0                	jmpq   *%rax
 834:	5d                   	pop    %rbp
 835:	c3                   	retq   
 836:	48 8d 3d cb 17 20 00 	lea    0x2017cb(%rip),%rdi        # 202008 <_edata>
 83d:	48 8d 35 c4 17 20 00 	lea    0x2017c4(%rip),%rsi        # 202008 <_edata>
 844:	b9 02 00 00 00       	mov    $0x2,%ecx
 849:	55                   	push   %rbp
 84a:	48 29 fe             	sub    %rdi,%rsi
 84d:	48 c1 fe 03          	sar    $0x3,%rsi
 851:	48 89 e5             	mov    %rsp,%rbp
 854:	48 89 f0             	mov    %rsi,%rax
 857:	48 99                	cqto   
 859:	48 f7 f9             	idiv   %rcx
 85c:	48 85 c0             	test   %rax,%rax
 85f:	74 12                	je     873 <__register_frame_info@plt+0x10b>
 861:	48 89 c6             	mov    %rax,%rsi
 864:	48 8b 05 65 17 20 00 	mov    0x201765(%rip),%rax        # 201fd0 <_ITM_registerTMCloneTable>
 86b:	48 85 c0             	test   %rax,%rax
 86e:	74 03                	je     873 <__register_frame_info@plt+0x10b>
 870:	5d                   	pop    %rbp
 871:	ff e0                	jmpq   *%rax
 873:	5d                   	pop    %rbp
 874:	c3                   	retq   
 875:	80 3d c4 17 20 00 00 	cmpb   $0x0,0x2017c4(%rip)        # 202040 <stdin+0x18>
 87c:	75 7a                	jne    8f8 <__register_frame_info@plt+0x190>
 87e:	48 83 3d 22 17 20 00 	cmpq   $0x0,0x201722(%rip)        # 201fa8 <__cxa_finalize>
 885:	00 
 886:	55                   	push   %rbp
 887:	48 89 e5             	mov    %rsp,%rbp
 88a:	41 54                	push   %r12
 88c:	53                   	push   %rbx
 88d:	74 0c                	je     89b <__register_frame_info@plt+0x133>
 88f:	48 8b 3d 6a 17 20 00 	mov    0x20176a(%rip),%rdi        # 202000 <_fini+0x20113f>
 896:	e8 9d fe ff ff       	callq  738 <__cxa_finalize@plt>
 89b:	48 8d 05 6e 15 20 00 	lea    0x20156e(%rip),%rax        # 201e10 <_fini+0x200f4f>
 8a2:	48 8d 1d 6f 15 20 00 	lea    0x20156f(%rip),%rbx        # 201e18 <_fini+0x200f57>
 8a9:	48 29 c3             	sub    %rax,%rbx
 8ac:	49 89 c4             	mov    %rax,%r12
 8af:	48 c1 fb 03          	sar    $0x3,%rbx
 8b3:	48 ff cb             	dec    %rbx
 8b6:	48 8b 05 8b 17 20 00 	mov    0x20178b(%rip),%rax        # 202048 <stdin+0x20>
 8bd:	48 39 c3             	cmp    %rax,%rbx
 8c0:	76 10                	jbe    8d2 <__register_frame_info@plt+0x16a>
 8c2:	48 ff c0             	inc    %rax
 8c5:	48 89 05 7c 17 20 00 	mov    %rax,0x20177c(%rip)        # 202048 <stdin+0x20>
 8cc:	41 ff 14 c4          	callq  *(%r12,%rax,8)
 8d0:	eb e4                	jmp    8b6 <__register_frame_info@plt+0x14e>
 8d2:	e8 33 ff ff ff       	callq  80a <__register_frame_info@plt+0xa2>
 8d7:	48 83 3d e9 16 20 00 	cmpq   $0x0,0x2016e9(%rip)        # 201fc8 <__deregister_frame_info>
 8de:	00 
 8df:	74 0c                	je     8ed <__register_frame_info@plt+0x185>
 8e1:	48 8d 3d 58 07 00 00 	lea    0x758(%rip),%rdi        # 1040 <_fini+0x17f>
 8e8:	e8 63 fe ff ff       	callq  750 <__deregister_frame_info@plt>
 8ed:	5b                   	pop    %rbx
 8ee:	41 5c                	pop    %r12
 8f0:	5d                   	pop    %rbp
 8f1:	c6 05 48 17 20 00 01 	movb   $0x1,0x201748(%rip)        # 202040 <stdin+0x18>
 8f8:	c3                   	retq   
 8f9:	48 83 3d f7 16 20 00 	cmpq   $0x0,0x2016f7(%rip)        # 201ff8 <__register_frame_info>
 900:	00 
 901:	55                   	push   %rbp
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	74 13                	je     91a <__register_frame_info@plt+0x1b2>
 907:	48 8d 35 52 17 20 00 	lea    0x201752(%rip),%rsi        # 202060 <stdin+0x38>
 90e:	48 8d 3d 2b 07 00 00 	lea    0x72b(%rip),%rdi        # 1040 <_fini+0x17f>
 915:	e8 4e fe ff ff       	callq  768 <__register_frame_info@plt>
 91a:	48 8d 3d ff 14 20 00 	lea    0x2014ff(%rip),%rdi        # 201e20 <_fini+0x200f5f>
 921:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 925:	74 0e                	je     935 <__register_frame_info@plt+0x1cd>
 927:	48 8b 05 c2 16 20 00 	mov    0x2016c2(%rip),%rax        # 201ff0 <_Jv_RegisterClasses>
 92e:	48 85 c0             	test   %rax,%rax
 931:	74 02                	je     935 <__register_frame_info@plt+0x1cd>
 933:	ff d0                	callq  *%rax
 935:	5d                   	pop    %rbp
 936:	e9 fb fe ff ff       	jmpq   836 <__register_frame_info@plt+0xce>
 93b:	48 83 ff 79          	cmp    $0x79,%rdi
 93f:	74 0e                	je     94f <__register_frame_info@plt+0x1e7>
 941:	48 83 ec 08          	sub    $0x8,%rsp
 945:	bf 01 00 00 00       	mov    $0x1,%edi
 94a:	e8 09 fe ff ff       	callq  758 <exit@plt>
 94f:	b8 a7 00 00 00       	mov    $0xa7,%eax
 954:	c3                   	retq   
 955:	48 83 ff 65          	cmp    $0x65,%rdi
 959:	74 0e                	je     969 <__register_frame_info@plt+0x201>
 95b:	48 83 ec 08          	sub    $0x8,%rsp
 95f:	bf 02 00 00 00       	mov    $0x2,%edi
 964:	e8 ef fd ff ff       	callq  758 <exit@plt>
 969:	48 c7 c0 9b ff ff ff 	mov    $0xffffffffffffff9b,%rax
 970:	c3                   	retq   
 971:	48 83 ff 73          	cmp    $0x73,%rdi
 975:	74 0e                	je     985 <__register_frame_info@plt+0x21d>
 977:	48 83 ec 08          	sub    $0x8,%rsp
 97b:	bf 03 00 00 00       	mov    $0x3,%edi
 980:	e8 d3 fd ff ff       	callq  758 <exit@plt>
 985:	b8 a0 00 00 00       	mov    $0xa0,%eax
 98a:	c3                   	retq   
 98b:	48 83 ff 20          	cmp    $0x20,%rdi
 98f:	74 0e                	je     99f <__register_frame_info@plt+0x237>
 991:	48 83 ec 08          	sub    $0x8,%rsp
 995:	bf 04 00 00 00       	mov    $0x4,%edi
 99a:	e8 b9 fd ff ff       	callq  758 <exit@plt>
 99f:	b8 16 00 00 00       	mov    $0x16,%eax
 9a4:	c3                   	retq   
 9a5:	48 83 ff 61          	cmp    $0x61,%rdi
 9a9:	74 0e                	je     9b9 <__register_frame_info@plt+0x251>
 9ab:	48 83 ec 08          	sub    $0x8,%rsp
 9af:	bf 05 00 00 00       	mov    $0x5,%edi
 9b4:	e8 9f fd ff ff       	callq  758 <exit@plt>
 9b9:	48 c7 c0 f0 ff ff ff 	mov    $0xfffffffffffffff0,%rax
 9c0:	c3                   	retq   
 9c1:	48 83 ff 6e          	cmp    $0x6e,%rdi
 9c5:	74 0e                	je     9d5 <__register_frame_info@plt+0x26d>
 9c7:	48 83 ec 08          	sub    $0x8,%rsp
 9cb:	bf 06 00 00 00       	mov    $0x6,%edi
 9d0:	e8 83 fd ff ff       	callq  758 <exit@plt>
 9d5:	b8 90 01 00 00       	mov    $0x190,%eax
 9da:	c3                   	retq   
 9db:	48 83 ff 64          	cmp    $0x64,%rdi
 9df:	74 0e                	je     9ef <__register_frame_info@plt+0x287>
 9e1:	48 83 ec 08          	sub    $0x8,%rsp
 9e5:	bf 07 00 00 00       	mov    $0x7,%edi
 9ea:	e8 69 fd ff ff       	callq  758 <exit@plt>
 9ef:	b8 1d 00 00 00       	mov    $0x1d,%eax
 9f4:	c3                   	retq   
 9f5:	48 83 ff 20          	cmp    $0x20,%rdi
 9f9:	74 0e                	je     a09 <__register_frame_info@plt+0x2a1>
 9fb:	48 83 ec 08          	sub    $0x8,%rsp
 9ff:	bf 08 00 00 00       	mov    $0x8,%edi
 a04:	e8 4f fd ff ff       	callq  758 <exit@plt>
 a09:	b8 c5 00 00 00       	mov    $0xc5,%eax
 a0e:	c3                   	retq   
 a0f:	48 83 ff 68          	cmp    $0x68,%rdi
 a13:	74 0e                	je     a23 <__register_frame_info@plt+0x2bb>
 a15:	48 83 ec 08          	sub    $0x8,%rsp
 a19:	bf 09 00 00 00       	mov    $0x9,%edi
 a1e:	e8 35 fd ff ff       	callq  758 <exit@plt>
 a23:	b8 04 00 00 00       	mov    $0x4,%eax
 a28:	c3                   	retq   
 a29:	48 83 ff 69          	cmp    $0x69,%rdi
 a2d:	74 0e                	je     a3d <__register_frame_info@plt+0x2d5>
 a2f:	48 83 ec 08          	sub    $0x8,%rsp
 a33:	bf 0a 00 00 00       	mov    $0xa,%edi
 a38:	e8 1b fd ff ff       	callq  758 <exit@plt>
 a3d:	b8 c1 00 00 00       	mov    $0xc1,%eax
 a42:	c3                   	retq   
 a43:	48 83 ff 73          	cmp    $0x73,%rdi
 a47:	74 0e                	je     a57 <__register_frame_info@plt+0x2ef>
 a49:	48 83 ec 08          	sub    $0x8,%rsp
 a4d:	bf 0b 00 00 00       	mov    $0xb,%edi
 a52:	e8 01 fd ff ff       	callq  758 <exit@plt>
 a57:	b8 0e 01 00 00       	mov    $0x10e,%eax
 a5c:	c3                   	retq   
 a5d:	48 83 ff 20          	cmp    $0x20,%rdi
 a61:	74 0e                	je     a71 <__register_frame_info@plt+0x309>
 a63:	48 83 ec 08          	sub    $0x8,%rsp
 a67:	bf 0c 00 00 00       	mov    $0xc,%edi
 a6c:	e8 e7 fc ff ff       	callq  758 <exit@plt>
 a71:	48 c7 c0 4e ff ff ff 	mov    $0xffffffffffffff4e,%rax
 a78:	c3                   	retq   
 a79:	48 83 ff 68          	cmp    $0x68,%rdi
 a7d:	74 0e                	je     a8d <__register_frame_info@plt+0x325>
 a7f:	48 83 ec 08          	sub    $0x8,%rsp
 a83:	bf 0d 00 00 00       	mov    $0xd,%edi
 a88:	e8 cb fc ff ff       	callq  758 <exit@plt>
 a8d:	b8 23 00 00 00       	mov    $0x23,%eax
 a92:	c3                   	retq   
 a93:	48 83 ff 61          	cmp    $0x61,%rdi
 a97:	74 0e                	je     aa7 <__register_frame_info@plt+0x33f>
 a99:	48 83 ec 08          	sub    $0x8,%rsp
 a9d:	bf 0e 00 00 00       	mov    $0xe,%edi
 aa2:	e8 b1 fc ff ff       	callq  758 <exit@plt>
 aa7:	b8 ae 00 00 00       	mov    $0xae,%eax
 aac:	c3                   	retq   
 aad:	48 83 ff 6e          	cmp    $0x6e,%rdi
 ab1:	74 0e                	je     ac1 <__register_frame_info@plt+0x359>
 ab3:	48 83 ec 08          	sub    $0x8,%rsp
 ab7:	bf 0f 00 00 00       	mov    $0xf,%edi
 abc:	e8 97 fc ff ff       	callq  758 <exit@plt>
 ac1:	b8 58 00 00 00       	mov    $0x58,%eax
 ac6:	c3                   	retq   
 ac7:	48 83 ff 64          	cmp    $0x64,%rdi
 acb:	74 0e                	je     adb <__register_frame_info@plt+0x373>
 acd:	48 83 ec 08          	sub    $0x8,%rsp
 ad1:	bf 10 00 00 00       	mov    $0x10,%edi
 ad6:	e8 7d fc ff ff       	callq  758 <exit@plt>
 adb:	b8 0b 00 00 00       	mov    $0xb,%eax
 ae0:	c3                   	retq   
 ae1:	48 83 ff 73          	cmp    $0x73,%rdi
 ae5:	74 0e                	je     af5 <__register_frame_info@plt+0x38d>
 ae7:	48 83 ec 08          	sub    $0x8,%rsp
 aeb:	bf 11 00 00 00       	mov    $0x11,%edi
 af0:	e8 63 fc ff ff       	callq  758 <exit@plt>
 af5:	b8 2b 00 00 00       	mov    $0x2b,%eax
 afa:	c3                   	retq   
 afb:	48 83 ff 20          	cmp    $0x20,%rdi
 aff:	74 0e                	je     b0f <__register_frame_info@plt+0x3a7>
 b01:	48 83 ec 08          	sub    $0x8,%rsp
 b05:	bf 12 00 00 00       	mov    $0x12,%edi
 b0a:	e8 49 fc ff ff       	callq  758 <exit@plt>
 b0f:	48 c7 c0 6d ff ff ff 	mov    $0xffffffffffffff6d,%rax
 b16:	c3                   	retq   
 b17:	48 83 ff 73          	cmp    $0x73,%rdi
 b1b:	74 0e                	je     b2b <__register_frame_info@plt+0x3c3>
 b1d:	48 83 ec 08          	sub    $0x8,%rsp
 b21:	bf 13 00 00 00       	mov    $0x13,%edi
 b26:	e8 2d fc ff ff       	callq  758 <exit@plt>
 b2b:	b8 6b 00 00 00       	mov    $0x6b,%eax
 b30:	c3                   	retq   
 b31:	48 83 ff 68          	cmp    $0x68,%rdi
 b35:	74 0e                	je     b45 <__register_frame_info@plt+0x3dd>
 b37:	48 83 ec 08          	sub    $0x8,%rsp
 b3b:	bf 14 00 00 00       	mov    $0x14,%edi
 b40:	e8 13 fc ff ff       	callq  758 <exit@plt>
 b45:	b8 10 00 00 00       	mov    $0x10,%eax
 b4a:	c3                   	retq   
 b4b:	48 83 ff 6f          	cmp    $0x6f,%rdi
 b4f:	74 0e                	je     b5f <__register_frame_info@plt+0x3f7>
 b51:	48 83 ec 08          	sub    $0x8,%rsp
 b55:	bf 15 00 00 00       	mov    $0x15,%edi
 b5a:	e8 f9 fb ff ff       	callq  758 <exit@plt>
 b5f:	b8 8e 01 00 00       	mov    $0x18e,%eax
 b64:	c3                   	retq   
 b65:	48 83 ff 6f          	cmp    $0x6f,%rdi
 b69:	74 0e                	je     b79 <__register_frame_info@plt+0x411>
 b6b:	48 83 ec 08          	sub    $0x8,%rsp
 b6f:	bf 16 00 00 00       	mov    $0x16,%edi
 b74:	e8 df fb ff ff       	callq  758 <exit@plt>
 b79:	b8 91 00 00 00       	mov    $0x91,%eax
 b7e:	c3                   	retq   
 b7f:	48 83 ff 6b          	cmp    $0x6b,%rdi
 b83:	74 0e                	je     b93 <__register_frame_info@plt+0x42b>
 b85:	48 83 ec 08          	sub    $0x8,%rsp
 b89:	bf 17 00 00 00       	mov    $0x17,%edi
 b8e:	e8 c5 fb ff ff       	callq  758 <exit@plt>
 b93:	b8 ce 00 00 00       	mov    $0xce,%eax
 b98:	c3                   	retq   
 b99:	48 83 ff 20          	cmp    $0x20,%rdi
 b9d:	74 0e                	je     bad <__register_frame_info@plt+0x445>
 b9f:	48 83 ec 08          	sub    $0x8,%rsp
 ba3:	bf 18 00 00 00       	mov    $0x18,%edi
 ba8:	e8 ab fb ff ff       	callq  758 <exit@plt>
 bad:	48 c7 c0 17 ff ff ff 	mov    $0xffffffffffffff17,%rax
 bb4:	c3                   	retq   
 bb5:	48 83 ff 77          	cmp    $0x77,%rdi
 bb9:	74 0e                	je     bc9 <__register_frame_info@plt+0x461>
 bbb:	48 83 ec 08          	sub    $0x8,%rsp
 bbf:	bf 19 00 00 00       	mov    $0x19,%edi
 bc4:	e8 8f fb ff ff       	callq  758 <exit@plt>
 bc9:	b8 ab 00 00 00       	mov    $0xab,%eax
 bce:	c3                   	retq   
 bcf:	48 83 ff 69          	cmp    $0x69,%rdi
 bd3:	74 0e                	je     be3 <__register_frame_info@plt+0x47b>
 bd5:	48 83 ec 08          	sub    $0x8,%rsp
 bd9:	bf 1a 00 00 00       	mov    $0x1a,%edi
 bde:	e8 75 fb ff ff       	callq  758 <exit@plt>
 be3:	b8 66 01 00 00       	mov    $0x166,%eax
 be8:	c3                   	retq   
 be9:	48 83 ff 74          	cmp    $0x74,%rdi
 bed:	74 0e                	je     bfd <__register_frame_info@plt+0x495>
 bef:	48 83 ec 08          	sub    $0x8,%rsp
 bf3:	bf 1b 00 00 00       	mov    $0x1b,%edi
 bf8:	e8 5b fb ff ff       	callq  758 <exit@plt>
 bfd:	48 c7 c0 e8 ff ff ff 	mov    $0xffffffffffffffe8,%rax
 c04:	c3                   	retq   
 c05:	48 83 ff 68          	cmp    $0x68,%rdi
 c09:	74 0e                	je     c19 <__register_frame_info@plt+0x4b1>
 c0b:	48 83 ec 08          	sub    $0x8,%rsp
 c0f:	bf 1c 00 00 00       	mov    $0x1c,%edi
 c14:	e8 3f fb ff ff       	callq  758 <exit@plt>
 c19:	b8 53 00 00 00       	mov    $0x53,%eax
 c1e:	c3                   	retq   
 c1f:	48 83 ff 20          	cmp    $0x20,%rdi
 c23:	74 0e                	je     c33 <__register_frame_info@plt+0x4cb>
 c25:	48 83 ec 08          	sub    $0x8,%rsp
 c29:	bf 1d 00 00 00       	mov    $0x1d,%edi
 c2e:	e8 25 fb ff ff       	callq  758 <exit@plt>
 c33:	48 c7 c0 b1 ff ff ff 	mov    $0xffffffffffffffb1,%rax
 c3a:	c3                   	retq   
 c3b:	48 83 ff 65          	cmp    $0x65,%rdi
 c3f:	74 0e                	je     c4f <__register_frame_info@plt+0x4e7>
 c41:	48 83 ec 08          	sub    $0x8,%rsp
 c45:	bf 1e 00 00 00       	mov    $0x1e,%edi
 c4a:	e8 09 fb ff ff       	callq  758 <exit@plt>
 c4f:	31 c0                	xor    %eax,%eax
 c51:	c3                   	retq   
 c52:	48 83 ff 78          	cmp    $0x78,%rdi
 c56:	74 0e                	je     c66 <__register_frame_info@plt+0x4fe>
 c58:	48 83 ec 08          	sub    $0x8,%rsp
 c5c:	bf 1f 00 00 00       	mov    $0x1f,%edi
 c61:	e8 f2 fa ff ff       	callq  758 <exit@plt>
 c66:	b8 9e 00 00 00       	mov    $0x9e,%eax
 c6b:	c3                   	retq   
 c6c:	55                   	push   %rbp
 c6d:	53                   	push   %rbx
 c6e:	48 89 fd             	mov    %rdi,%rbp
 c71:	48 83 ec 08          	sub    $0x8,%rsp
 c75:	48 0f be 3f          	movsbq (%rdi),%rdi
 c79:	e8 bd fc ff ff       	callq  93b <__register_frame_info@plt+0x1d3>
 c7e:	48 0f be 7d 01       	movsbq 0x1(%rbp),%rdi
 c83:	48 c1 f8 03          	sar    $0x3,%rax
 c87:	48 89 c3             	mov    %rax,%rbx
 c8a:	e8 c6 fc ff ff       	callq  955 <__register_frame_info@plt+0x1ed>
 c8f:	48 0f be 7d 02       	movsbq 0x2(%rbp),%rdi
 c94:	48 01 c3             	add    %rax,%rbx
 c97:	48 c1 fb 03          	sar    $0x3,%rbx
 c9b:	e8 d1 fc ff ff       	callq  971 <__register_frame_info@plt+0x209>
 ca0:	48 0f be 7d 03       	movsbq 0x3(%rbp),%rdi
 ca5:	48 01 c3             	add    %rax,%rbx
 ca8:	48 c1 fb 03          	sar    $0x3,%rbx
 cac:	e8 da fc ff ff       	callq  98b <__register_frame_info@plt+0x223>
 cb1:	48 0f be 7d 04       	movsbq 0x4(%rbp),%rdi
 cb6:	48 01 c3             	add    %rax,%rbx
 cb9:	48 c1 fb 03          	sar    $0x3,%rbx
 cbd:	e8 e3 fc ff ff       	callq  9a5 <__register_frame_info@plt+0x23d>
 cc2:	48 0f be 7d 05       	movsbq 0x5(%rbp),%rdi
 cc7:	48 01 c3             	add    %rax,%rbx
 cca:	48 c1 fb 03          	sar    $0x3,%rbx
 cce:	e8 ee fc ff ff       	callq  9c1 <__register_frame_info@plt+0x259>
 cd3:	48 0f be 7d 06       	movsbq 0x6(%rbp),%rdi
 cd8:	48 01 c3             	add    %rax,%rbx
 cdb:	48 c1 fb 03          	sar    $0x3,%rbx
 cdf:	e8 f7 fc ff ff       	callq  9db <__register_frame_info@plt+0x273>
 ce4:	48 0f be 7d 07       	movsbq 0x7(%rbp),%rdi
 ce9:	48 01 c3             	add    %rax,%rbx
 cec:	48 c1 fb 03          	sar    $0x3,%rbx
 cf0:	e8 00 fd ff ff       	callq  9f5 <__register_frame_info@plt+0x28d>
 cf5:	48 0f be 7d 08       	movsbq 0x8(%rbp),%rdi
 cfa:	48 01 c3             	add    %rax,%rbx
 cfd:	48 c1 fb 03          	sar    $0x3,%rbx
 d01:	e8 09 fd ff ff       	callq  a0f <__register_frame_info@plt+0x2a7>
 d06:	48 0f be 7d 09       	movsbq 0x9(%rbp),%rdi
 d0b:	48 01 c3             	add    %rax,%rbx
 d0e:	48 c1 fb 03          	sar    $0x3,%rbx
 d12:	e8 12 fd ff ff       	callq  a29 <__register_frame_info@plt+0x2c1>
 d17:	48 0f be 7d 0a       	movsbq 0xa(%rbp),%rdi
 d1c:	48 01 c3             	add    %rax,%rbx
 d1f:	48 c1 fb 03          	sar    $0x3,%rbx
 d23:	e8 1b fd ff ff       	callq  a43 <__register_frame_info@plt+0x2db>
 d28:	48 0f be 7d 0b       	movsbq 0xb(%rbp),%rdi
 d2d:	48 01 c3             	add    %rax,%rbx
 d30:	48 c1 fb 03          	sar    $0x3,%rbx
 d34:	e8 24 fd ff ff       	callq  a5d <__register_frame_info@plt+0x2f5>
 d39:	48 0f be 7d 0c       	movsbq 0xc(%rbp),%rdi
 d3e:	48 01 c3             	add    %rax,%rbx
 d41:	48 c1 fb 03          	sar    $0x3,%rbx
 d45:	e8 2f fd ff ff       	callq  a79 <__register_frame_info@plt+0x311>
 d4a:	48 0f be 7d 0d       	movsbq 0xd(%rbp),%rdi
 d4f:	48 01 c3             	add    %rax,%rbx
 d52:	48 c1 fb 03          	sar    $0x3,%rbx
 d56:	e8 38 fd ff ff       	callq  a93 <__register_frame_info@plt+0x32b>
 d5b:	48 0f be 7d 0e       	movsbq 0xe(%rbp),%rdi
 d60:	48 01 c3             	add    %rax,%rbx
 d63:	48 c1 fb 03          	sar    $0x3,%rbx
 d67:	e8 41 fd ff ff       	callq  aad <__register_frame_info@plt+0x345>
 d6c:	48 0f be 7d 0f       	movsbq 0xf(%rbp),%rdi
 d71:	48 01 c3             	add    %rax,%rbx
 d74:	48 c1 fb 03          	sar    $0x3,%rbx
 d78:	e8 4a fd ff ff       	callq  ac7 <__register_frame_info@plt+0x35f>
 d7d:	48 0f be 7d 10       	movsbq 0x10(%rbp),%rdi
 d82:	48 01 c3             	add    %rax,%rbx
 d85:	48 c1 fb 03          	sar    $0x3,%rbx
 d89:	e8 53 fd ff ff       	callq  ae1 <__register_frame_info@plt+0x379>
 d8e:	48 0f be 7d 11       	movsbq 0x11(%rbp),%rdi
 d93:	48 01 c3             	add    %rax,%rbx
 d96:	48 c1 fb 03          	sar    $0x3,%rbx
 d9a:	e8 5c fd ff ff       	callq  afb <__register_frame_info@plt+0x393>
 d9f:	48 0f be 7d 12       	movsbq 0x12(%rbp),%rdi
 da4:	48 01 c3             	add    %rax,%rbx
 da7:	48 c1 fb 03          	sar    $0x3,%rbx
 dab:	e8 67 fd ff ff       	callq  b17 <__register_frame_info@plt+0x3af>
 db0:	48 0f be 7d 13       	movsbq 0x13(%rbp),%rdi
 db5:	48 01 c3             	add    %rax,%rbx
 db8:	48 c1 fb 03          	sar    $0x3,%rbx
 dbc:	e8 70 fd ff ff       	callq  b31 <__register_frame_info@plt+0x3c9>
 dc1:	48 0f be 7d 14       	movsbq 0x14(%rbp),%rdi
 dc6:	48 01 c3             	add    %rax,%rbx
 dc9:	48 c1 fb 03          	sar    $0x3,%rbx
 dcd:	e8 79 fd ff ff       	callq  b4b <__register_frame_info@plt+0x3e3>
 dd2:	48 0f be 7d 15       	movsbq 0x15(%rbp),%rdi
 dd7:	48 01 c3             	add    %rax,%rbx
 dda:	48 c1 fb 03          	sar    $0x3,%rbx
 dde:	e8 82 fd ff ff       	callq  b65 <__register_frame_info@plt+0x3fd>
 de3:	48 0f be 7d 16       	movsbq 0x16(%rbp),%rdi
 de8:	48 01 c3             	add    %rax,%rbx
 deb:	48 c1 fb 03          	sar    $0x3,%rbx
 def:	e8 8b fd ff ff       	callq  b7f <__register_frame_info@plt+0x417>
 df4:	48 0f be 7d 17       	movsbq 0x17(%rbp),%rdi
 df9:	48 01 c3             	add    %rax,%rbx
 dfc:	48 c1 fb 03          	sar    $0x3,%rbx
 e00:	e8 94 fd ff ff       	callq  b99 <__register_frame_info@plt+0x431>
 e05:	48 0f be 7d 18       	movsbq 0x18(%rbp),%rdi
 e0a:	48 01 c3             	add    %rax,%rbx
 e0d:	48 c1 fb 03          	sar    $0x3,%rbx
 e11:	e8 9f fd ff ff       	callq  bb5 <__register_frame_info@plt+0x44d>
 e16:	48 0f be 7d 19       	movsbq 0x19(%rbp),%rdi
 e1b:	48 01 c3             	add    %rax,%rbx
 e1e:	48 c1 fb 03          	sar    $0x3,%rbx
 e22:	e8 a8 fd ff ff       	callq  bcf <__register_frame_info@plt+0x467>
 e27:	48 0f be 7d 1a       	movsbq 0x1a(%rbp),%rdi
 e2c:	48 01 c3             	add    %rax,%rbx
 e2f:	48 c1 fb 03          	sar    $0x3,%rbx
 e33:	e8 b1 fd ff ff       	callq  be9 <__register_frame_info@plt+0x481>
 e38:	48 0f be 7d 1b       	movsbq 0x1b(%rbp),%rdi
 e3d:	48 01 c3             	add    %rax,%rbx
 e40:	48 c1 fb 03          	sar    $0x3,%rbx
 e44:	e8 bc fd ff ff       	callq  c05 <__register_frame_info@plt+0x49d>
 e49:	48 0f be 7d 1c       	movsbq 0x1c(%rbp),%rdi
 e4e:	48 01 c3             	add    %rax,%rbx
 e51:	48 c1 fb 03          	sar    $0x3,%rbx
 e55:	e8 c5 fd ff ff       	callq  c1f <__register_frame_info@plt+0x4b7>
 e5a:	48 0f be 7d 1d       	movsbq 0x1d(%rbp),%rdi
 e5f:	48 01 c3             	add    %rax,%rbx
 e62:	48 c1 fb 03          	sar    $0x3,%rbx
 e66:	e8 d0 fd ff ff       	callq  c3b <__register_frame_info@plt+0x4d3>
 e6b:	48 0f be 7d 1e       	movsbq 0x1e(%rbp),%rdi
 e70:	48 01 c3             	add    %rax,%rbx
 e73:	48 c1 fb 03          	sar    $0x3,%rbx
 e77:	e8 d6 fd ff ff       	callq  c52 <__register_frame_info@plt+0x4ea>
 e7c:	48 01 c3             	add    %rax,%rbx
 e7f:	48 c1 fb 03          	sar    $0x3,%rbx
 e83:	48 83 fb 13          	cmp    $0x13,%rbx
 e87:	74 0a                	je     e93 <__register_frame_info@plt+0x72b>
 e89:	bf fa 00 00 00       	mov    $0xfa,%edi
 e8e:	e8 c5 f8 ff ff       	callq  758 <exit@plt>
 e93:	5a                   	pop    %rdx
 e94:	b8 13 00 00 00       	mov    $0x13,%eax
 e99:	5b                   	pop    %rbx
 e9a:	5d                   	pop    %rbp
 e9b:	c3                   	retq   
 e9c:	55                   	push   %rbp
 e9d:	48 89 e5             	mov    %rsp,%rbp
 ea0:	53                   	push   %rbx
 ea1:	48 8d 1d 60 0f 20 00 	lea    0x200f60(%rip),%rbx        # 201e08 <_fini+0x200f47>
 ea8:	48 83 ec 08          	sub    $0x8,%rsp
 eac:	48 83 eb 08          	sub    $0x8,%rbx
 eb0:	48 8b 03             	mov    (%rbx),%rax
 eb3:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
 eb7:	74 04                	je     ebd <__register_frame_info@plt+0x755>
 eb9:	ff d0                	callq  *%rax
 ebb:	eb ef                	jmp    eac <__register_frame_info@plt+0x744>
 ebd:	58                   	pop    %rax
 ebe:	5b                   	pop    %rbx
 ebf:	5d                   	pop    %rbp
 ec0:	c3                   	retq   

セクション .fini の逆アセンブル:

0000000000000ec1 <_fini>:
 ec1:	50                   	push   %rax
 ec2:	e8 ae f9 ff ff       	callq  875 <__register_frame_info@plt+0x10d>
 ec7:	58                   	pop    %rax
 ec8:	c3                   	retq   
