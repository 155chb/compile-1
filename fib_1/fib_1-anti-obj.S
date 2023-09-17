
fib_1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  13:	00 00 
  15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  19:	31 c0                	xor    %eax,%eax
  1b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  22:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  29:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  2d:	48 89 c6             	mov    %rax,%rsi
  30:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 37 <main+0x37>
  37:	48 89 c7             	mov    %rax,%rdi
  3a:	b8 00 00 00 00       	mov    $0x0,%eax
  3f:	e8 00 00 00 00       	call   44 <main+0x44>
  44:	8b 45 f0             	mov    -0x10(%rbp),%eax
  47:	89 c7                	mov    %eax,%edi
  49:	e8 00 00 00 00       	call   4e <main+0x4e>
  4e:	89 45 f4             	mov    %eax,-0xc(%rbp)
  51:	8b 45 f4             	mov    -0xc(%rbp),%eax
  54:	89 c6                	mov    %eax,%esi
  56:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5d <main+0x5d>
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	b8 00 00 00 00       	mov    $0x0,%eax
  65:	e8 00 00 00 00       	call   6a <main+0x6a>
  6a:	b8 00 00 00 00       	mov    $0x0,%eax
  6f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  73:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  7a:	00 00 
  7c:	74 05                	je     83 <main+0x83>
  7e:	e8 00 00 00 00       	call   83 <main+0x83>
  83:	c9                   	leave  
  84:	c3                   	ret    

0000000000000085 <fib>:
  85:	f3 0f 1e fa          	endbr64 
  89:	55                   	push   %rbp
  8a:	48 89 e5             	mov    %rsp,%rbp
  8d:	53                   	push   %rbx
  8e:	48 83 ec 28          	sub    $0x28,%rsp
  92:	89 7d dc             	mov    %edi,-0x24(%rbp)
  95:	83 7d dc 02          	cmpl   $0x2,-0x24(%rbp)
  99:	7f 07                	jg     a2 <fib+0x1d>
  9b:	b8 01 00 00 00       	mov    $0x1,%eax
  a0:	eb 2b                	jmp    cd <fib+0x48>
  a2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  a9:	8b 45 dc             	mov    -0x24(%rbp),%eax
  ac:	83 e8 01             	sub    $0x1,%eax
  af:	89 c7                	mov    %eax,%edi
  b1:	e8 00 00 00 00       	call   b6 <fib+0x31>
  b6:	89 c3                	mov    %eax,%ebx
  b8:	8b 45 dc             	mov    -0x24(%rbp),%eax
  bb:	83 e8 02             	sub    $0x2,%eax
  be:	89 c7                	mov    %eax,%edi
  c0:	e8 00 00 00 00       	call   c5 <fib+0x40>
  c5:	01 d8                	add    %ebx,%eax
  c7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
  cd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  d1:	c9                   	leave  
  d2:	c3                   	ret    
