0804846b <main>:
 804846b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804846f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048472:	ff 71 fc             	pushl  -0x4(%ecx)
 8048475:	55                   	push   %ebp
 8048476:	89 e5                	mov    %esp,%ebp
 8048478:	57                   	push   %edi
 8048479:	53                   	push   %ebx
 804847a:	51                   	push   %ecx
 804847b:	81 ec 3c 01 00 00    	sub    $0x13c,%esp
 8048481:	89 cb                	mov    %ecx,%ebx
 8048483:	8d 95 bc fe ff ff    	lea    -0x144(%ebp),%edx
 8048489:	b8 00 00 00 00       	mov    $0x0,%eax
 804848e:	b9 4b 00 00 00       	mov    $0x4b,%ecx
 8048493:	89 d7                	mov    %edx,%edi
 8048495:	f3 ab                	rep stos %eax,%es:(%edi)
 8048497:	83 ec 08             	sub    $0x8,%esp
 804849a:	8d 85 bc fe ff ff    	lea    -0x144(%ebp),%eax
 80484a0:	50                   	push   %eax
 80484a1:	68 70 85 04 08       	push   $0x8048570
 80484a6:	e8 75 fe ff ff       	call   8048320 <printf@plt>
 80484ab:	83 c4 10             	add    $0x10,%esp
 80484ae:	8b 43 04             	mov    0x4(%ebx),%eax
 80484b1:	83 c0 04             	add    $0x4,%eax
 80484b4:	8b 00                	mov    (%eax),%eax
 80484b6:	83 ec 08             	sub    $0x8,%esp
 80484b9:	50                   	push   %eax
 80484ba:	8d 85 bc fe ff ff    	lea    -0x144(%ebp),%eax
 80484c0:	50                   	push   %eax
 80484c1:	e8 6a fe ff ff       	call   8048330 <strcpy@plt>
 80484c6:	83 c4 10             	add    $0x10,%esp
 80484c9:	83 ec 0c             	sub    $0xc,%esp
 80484cc:	8d 85 bc fe ff ff    	lea    -0x144(%ebp),%eax
 80484d2:	50                   	push   %eax
 80484d3:	e8 68 fe ff ff       	call   8048340 <puts@plt>
 80484d8:	83 c4 10             	add    $0x10,%esp
 80484db:	b8 00 00 00 00       	mov    $0x0,%eax
 80484e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80484e3:	59                   	pop    %ecx
 80484e4:	5b                   	pop    %ebx
 80484e5:	5f                   	pop    %edi
 80484e6:	5d                   	pop    %ebp
 80484e7:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484ea:	c3                   	ret    
 80484eb:	66 90                	xchg   %ax,%ax
 80484ed:	66 90                	xchg   %ax,%ax
 80484ef:	90                   	nop

