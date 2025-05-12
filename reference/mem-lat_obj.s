
mem-lat.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <usage>:
#define TEN FIVE FIVE
#define FIFTY   TEN TEN TEN TEN TEN
#define HUNDRED FIFTY FIFTY

static void usage()
{
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
    printf("Usage: ./mem-lat -b xxx -n xxx -s xxx\n");
   4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # b <usage+0xb>
   b:	48 89 c7             	mov    %rax,%rdi
   e:	e8 00 00 00 00       	call   13 <usage+0x13>
    printf("   -b buffer size in KB\n");
  13:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1a <usage+0x1a>
  1a:	48 89 c7             	mov    %rax,%rdi
  1d:	e8 00 00 00 00       	call   22 <usage+0x22>
    printf("   -n number of read\n\n");
  22:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 29 <usage+0x29>
  29:	48 89 c7             	mov    %rax,%rdi
  2c:	e8 00 00 00 00       	call   31 <usage+0x31>
    printf("   -s stride skipped before the next access\n\n");
  31:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 38 <usage+0x38>
  38:	48 89 c7             	mov    %rax,%rdi
  3b:	e8 00 00 00 00       	call   40 <usage+0x40>
    printf("Please don't use non-decimal based number\n");
  40:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 47 <usage+0x47>
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	e8 00 00 00 00       	call   4f <usage+0x4f>
}
  4f:	90                   	nop
  50:	5d                   	pop    %rbp
  51:	c3                   	ret

0000000000000052 <main>:


int main(int argc, char* argv[])
{
  52:	55                   	push   %rbp
  53:	48 89 e5             	mov    %rsp,%rbp
  56:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  5d:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
  63:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
  6a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  71:	00 00 
  73:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  77:	31 c0                	xor    %eax,%eax
  unsigned long i, j, size, tmp;
    unsigned long memsize = 0x800000; /* 1/4 LLC size of skylake, 1/5 of broadwell */
  79:	48 c7 45 80 00 00 80 	movq   $0x800000,-0x80(%rbp)
  80:	00 
    unsigned long count = 1048576; /* memsize / 64 * 8 */
  81:	48 c7 45 88 00 00 10 	movq   $0x100000,-0x78(%rbp)
  88:	00 
    unsigned int stride = 64; /* skipped amount of memory before the next access */
  89:	c7 85 74 ff ff ff 40 	movl   $0x40,-0x8c(%rbp)
  90:	00 00 00 
    unsigned long sec, usec;
    struct timeval tv1, tv2;
    struct timezone tz;
    unsigned int *indices;

    while (argc-- > 0) {
  93:	e9 dd 00 00 00       	jmp    175 <main+0x123>
        if ((*argv)[0] == '-') {  /* look at first char of next */
  98:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  9f:	48 8b 00             	mov    (%rax),%rax
  a2:	0f b6 00             	movzbl (%rax),%eax
  a5:	3c 2d                	cmp    $0x2d,%al
  a7:	0f 85 c0 00 00 00    	jne    16d <main+0x11b>
            switch ((*argv)[1]) {   /* look at second */
  ad:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  b4:	48 8b 00             	mov    (%rax),%rax
  b7:	48 83 c0 01          	add    $0x1,%rax
  bb:	0f b6 00             	movzbl (%rax),%eax
  be:	0f be c0             	movsbl %al,%eax
  c1:	83 f8 73             	cmp    $0x73,%eax
  c4:	74 6a                	je     130 <main+0xde>
  c6:	83 f8 73             	cmp    $0x73,%eax
  c9:	0f 8f 8a 00 00 00    	jg     159 <main+0x107>
  cf:	83 f8 62             	cmp    $0x62,%eax
  d2:	74 07                	je     db <main+0x89>
  d4:	83 f8 6e             	cmp    $0x6e,%eax
  d7:	74 2e                	je     107 <main+0xb5>
  d9:	eb 7e                	jmp    159 <main+0x107>
                case 'b':
                    argv++;
  db:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
  e2:	08 
                    argc--;
  e3:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    memsize = atoi(*argv) * 1024;
  ea:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  f1:	48 8b 00             	mov    (%rax),%rax
  f4:	48 89 c7             	mov    %rax,%rdi
  f7:	e8 00 00 00 00       	call   fc <main+0xaa>
  fc:	c1 e0 0a             	shl    $0xa,%eax
  ff:	48 98                	cltq
 101:	48 89 45 80          	mov    %rax,-0x80(%rbp)
                    break;
 105:	eb 66                	jmp    16d <main+0x11b>

                case 'n':
                    argv++;
 107:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
 10e:	08 
                    argc--;
 10f:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    count = atoi(*argv);
 116:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
 11d:	48 8b 00             	mov    (%rax),%rax
 120:	48 89 c7             	mov    %rax,%rdi
 123:	e8 00 00 00 00       	call   128 <main+0xd6>
 128:	48 98                	cltq
 12a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
                    break;
 12e:	eb 3d                	jmp    16d <main+0x11b>

                case 's':
                    argv++;
 130:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
 137:	08 
                    argc--;
 138:	83 ad 6c ff ff ff 01 	subl   $0x1,-0x94(%rbp)
                    stride = atoi(*argv);
 13f:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
 146:	48 8b 00             	mov    (%rax),%rax
 149:	48 89 c7             	mov    %rax,%rdi
 14c:	e8 00 00 00 00       	call   151 <main+0xff>
 151:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
                    break;
 157:	eb 14                	jmp    16d <main+0x11b>

                default:
                    usage();
 159:	b8 00 00 00 00       	mov    $0x0,%eax
 15e:	e8 9d fe ff ff       	call   0 <usage>
                    exit(1);
 163:	bf 01 00 00 00       	mov    $0x1,%edi
 168:	e8 00 00 00 00       	call   16d <main+0x11b>
                    break;
            }
        }
        argv++;
 16d:	48 83 85 60 ff ff ff 	addq   $0x8,-0xa0(%rbp)
 174:	08 
    while (argc-- > 0) {
 175:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
 17b:	8d 50 ff             	lea    -0x1(%rax),%edx
 17e:	89 95 6c ff ff ff    	mov    %edx,-0x94(%rbp)
 184:	85 c0                	test   %eax,%eax
 186:	0f 8f 0c ff ff ff    	jg     98 <main+0x46>
    }


  char* mem = mmap(NULL, memsize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
 18c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
 190:	41 b9 00 00 00 00    	mov    $0x0,%r9d
 196:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
 19c:	b9 22 00 00 00       	mov    $0x22,%ecx
 1a1:	ba 03 00 00 00       	mov    $0x3,%edx
 1a6:	48 89 c6             	mov    %rax,%rsi
 1a9:	bf 00 00 00 00       	mov    $0x0,%edi
 1ae:	e8 00 00 00 00       	call   1b3 <main+0x161>
 1b3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    // trick3: init pointer chasing, per stride=8 byte
    size = memsize / stride;
 1b7:	8b b5 74 ff ff ff    	mov    -0x8c(%rbp),%esi
 1bd:	48 8b 45 80          	mov    -0x80(%rbp),%rax
 1c1:	ba 00 00 00 00       	mov    $0x0,%edx
 1c6:	48 f7 f6             	div    %rsi
 1c9:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    indices = malloc(size * sizeof(int));
 1cd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 1d1:	48 c1 e0 02          	shl    $0x2,%rax
 1d5:	48 89 c7             	mov    %rax,%rdi
 1d8:	e8 00 00 00 00       	call   1dd <main+0x18b>
 1dd:	48 89 45 b0          	mov    %rax,-0x50(%rbp)

    for (i = 0; i < size; i++)
 1e1:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
 1e8:	00 00 00 00 
 1ec:	eb 27                	jmp    215 <main+0x1c3>
        indices[i] = i;
 1ee:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 1f5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 1fc:	00 
 1fd:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 201:	48 01 d0             	add    %rdx,%rax
 204:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
 20b:	89 10                	mov    %edx,(%rax)
    for (i = 0; i < size; i++)
 20d:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
 214:	01 
 215:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 21c:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
 220:	72 cc                	jb     1ee <main+0x19c>
    //shuffle indeaces  
    for (i = 0; i < size; i++) {
 222:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
 229:	00 00 00 00 
 22d:	e9 aa 00 00 00       	jmp    2dc <main+0x28a>
         j = i +  rand() % (size - i);
 232:	e8 00 00 00 00       	call   237 <main+0x1e5>
 237:	48 98                	cltq
 239:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
 23d:	48 89 d6             	mov    %rdx,%rsi
 240:	48 2b b5 78 ff ff ff 	sub    -0x88(%rbp),%rsi
 247:	ba 00 00 00 00       	mov    $0x0,%edx
 24c:	48 f7 f6             	div    %rsi
 24f:	48 89 d1             	mov    %rdx,%rcx
 252:	48 89 ca             	mov    %rcx,%rdx
 255:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 25c:	48 01 d0             	add    %rdx,%rax
 25f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
         if (i != j) {
 263:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 26a:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
 26e:	74 64                	je     2d4 <main+0x282>
             tmp = indices[i];
 270:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 277:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 27e:	00 
 27f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 283:	48 01 d0             	add    %rdx,%rax
 286:	8b 00                	mov    (%rax),%eax
 288:	89 c0                	mov    %eax,%eax
 28a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
             indices[i] = indices[j];
 28e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 292:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 299:	00 
 29a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 29e:	48 01 d0             	add    %rdx,%rax
 2a1:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
 2a8:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
 2af:	00 
 2b0:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
 2b4:	48 01 ca             	add    %rcx,%rdx
 2b7:	8b 00                	mov    (%rax),%eax
 2b9:	89 02                	mov    %eax,(%rdx)
             indices[j] = tmp;
 2bb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
 2bf:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 2c6:	00 
 2c7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 2cb:	48 01 d0             	add    %rdx,%rax
 2ce:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 2d2:	89 10                	mov    %edx,(%rax)
    for (i = 0; i < size; i++) {
 2d4:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
 2db:	01 
 2dc:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 2e3:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
 2e7:	0f 82 45 ff ff ff    	jb     232 <main+0x1e0>
         }
     }
    // trick 2: fill mem with pointer references
    for (i = 0; i < size - 1; i++)
 2ed:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
 2f4:	00 00 00 00 
 2f8:	eb 5f                	jmp    359 <main+0x307>
        *(char **)&mem[indices[i]*stride]= (char*)&mem[indices[i+1]*stride];
 2fa:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 301:	48 83 c0 01          	add    $0x1,%rax
 305:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 30c:	00 
 30d:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 311:	48 01 d0             	add    %rdx,%rax
 314:	8b 00                	mov    (%rax),%eax
 316:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
 31d:	89 c1                	mov    %eax,%ecx
 31f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 326:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 32d:	00 
 32e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 332:	48 01 d0             	add    %rdx,%rax
 335:	8b 00                	mov    (%rax),%eax
 337:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
 33e:	89 c2                	mov    %eax,%edx
 340:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 344:	48 01 d0             	add    %rdx,%rax
 347:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
 34b:	48 01 ca             	add    %rcx,%rdx
 34e:	48 89 10             	mov    %rdx,(%rax)
    for (i = 0; i < size - 1; i++)
 351:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
 358:	01 
 359:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 35d:	48 83 e8 01          	sub    $0x1,%rax
 361:	48 39 85 78 ff ff ff 	cmp    %rax,-0x88(%rbp)
 368:	72 90                	jb     2fa <main+0x2a8>
    *(char **)&mem[indices[size-1]*stride]= (char*)&mem[indices[0]*stride];
 36a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 36e:	8b 00                	mov    (%rax),%eax
 370:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
 377:	89 c1                	mov    %eax,%ecx
 379:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 37d:	48 c1 e0 02          	shl    $0x2,%rax
 381:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
 385:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 389:	48 01 d0             	add    %rdx,%rax
 38c:	8b 00                	mov    (%rax),%eax
 38e:	0f af 85 74 ff ff ff 	imul   -0x8c(%rbp),%eax
 395:	89 c2                	mov    %eax,%edx
 397:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 39b:	48 01 d0             	add    %rdx,%rax
 39e:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
 3a2:	48 01 ca             	add    %rcx,%rdx
 3a5:	48 89 10             	mov    %rdx,(%rax)

    register char **p = (char **) mem;
    tmp = count / 100;
 3a8:	48 8b 45 88          	mov    -0x78(%rbp),%rax
 3ac:	48 c1 e8 02          	shr    $0x2,%rax
 3b0:	48 ba c3 f5 28 5c 8f 	movabs $0x28f5c28f5c28f5c3,%rdx
 3b7:	c2 f5 28 
 3ba:	48 f7 e2             	mul    %rdx
 3bd:	48 89 d0             	mov    %rdx,%rax
 3c0:	48 c1 e8 02          	shr    $0x2,%rax
 3c4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)

    gettimeofday (&tv1, &tz);
 3c8:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
 3cc:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 3d0:	48 89 d6             	mov    %rdx,%rsi
 3d3:	48 89 c7             	mov    %rax,%rdi
 3d6:	e8 00 00 00 00       	call   3db <main+0x389>
    for (i = 0; i < tmp; ++i) {
 3db:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
 3e2:	00 00 00 00 
 3e6:	eb 08                	jmp    3f0 <main+0x39e>
 3e8:	48 83 85 78 ff ff ff 	addq   $0x1,-0x88(%rbp)
 3ef:	01 
 3f0:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
 3f7:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
 3fb:	72 eb                	jb     3e8 <main+0x396>
        HUNDRED;  //trick 1
    }
    gettimeofday (&tv2, &tz);
 3fd:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
 401:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 405:	48 89 d6             	mov    %rdx,%rsi
 408:	48 89 c7             	mov    %rax,%rdi
 40b:	e8 00 00 00 00       	call   410 <main+0x3be>
    if (tv2.tv_usec < tv1.tv_usec) {
 410:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 414:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 418:	48 39 c2             	cmp    %rax,%rdx
 41b:	7d 2b                	jge    448 <main+0x3f6>
        usec = 1000000 + tv2.tv_usec - tv1.tv_usec;
 41d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 421:	48 8d 90 40 42 0f 00 	lea    0xf4240(%rax),%rdx
 428:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 42c:	48 29 c2             	sub    %rax,%rdx
 42f:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
        sec = tv2.tv_sec - tv1.tv_sec - 1;
 433:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 437:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 43b:	48 29 c2             	sub    %rax,%rdx
 43e:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
 442:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 446:	eb 1e                	jmp    466 <main+0x414>
    } else {
        usec = tv2.tv_usec - tv1.tv_usec;
 448:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 44c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 450:	48 29 c2             	sub    %rax,%rdx
 453:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
        sec = tv2.tv_sec - tv1.tv_sec;
 457:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 45b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 45f:	48 29 c2             	sub    %rax,%rdx
 462:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
    }

    printf("Buffer size: %ld KB, stride %d, time %d.%06d s, latency %.2f ns\n", 
            memsize/1024, stride, sec, usec, (sec * 1000000  + usec) * 1000.0 / (tmp *100));
 466:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 46a:	48 69 d0 40 42 0f 00 	imul   $0xf4240,%rax,%rdx
 471:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 475:	48 01 d0             	add    %rdx,%rax
 478:	48 85 c0             	test   %rax,%rax
 47b:	78 0b                	js     488 <main+0x436>
 47d:	66 0f ef c0          	pxor   %xmm0,%xmm0
 481:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
 486:	eb 19                	jmp    4a1 <main+0x44f>
 488:	48 89 c2             	mov    %rax,%rdx
 48b:	48 d1 ea             	shr    $1,%rdx
 48e:	83 e0 01             	and    $0x1,%eax
 491:	48 09 c2             	or     %rax,%rdx
 494:	66 0f ef c0          	pxor   %xmm0,%xmm0
 498:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
 49d:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
 4a1:	f2 0f 10 0d 00 00 00 	movsd  0x0(%rip),%xmm1        # 4a9 <main+0x457>
 4a8:	00 
 4a9:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
 4ad:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
 4b1:	48 89 d0             	mov    %rdx,%rax
 4b4:	48 c1 e0 02          	shl    $0x2,%rax
 4b8:	48 01 d0             	add    %rdx,%rax
 4bb:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
 4c2:	00 
 4c3:	48 01 d0             	add    %rdx,%rax
 4c6:	48 c1 e0 02          	shl    $0x2,%rax
    printf("Buffer size: %ld KB, stride %d, time %d.%06d s, latency %.2f ns\n", 
 4ca:	48 85 c0             	test   %rax,%rax
 4cd:	78 0b                	js     4da <main+0x488>
 4cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
 4d3:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
 4d8:	eb 19                	jmp    4f3 <main+0x4a1>
 4da:	48 89 c2             	mov    %rax,%rdx
 4dd:	48 d1 ea             	shr    $1,%rdx
 4e0:	83 e0 01             	and    $0x1,%eax
 4e3:	48 09 c2             	or     %rax,%rdx
 4e6:	66 0f ef c0          	pxor   %xmm0,%xmm0
 4ea:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
 4ef:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
 4f3:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
 4f7:	66 48 0f 7e c9       	movq   %xmm1,%rcx
 4fc:	48 8b 45 80          	mov    -0x80(%rbp),%rax
 500:	48 c1 e8 0a          	shr    $0xa,%rax
 504:	48 89 c6             	mov    %rax,%rsi
 507:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
 50b:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
 50f:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
 515:	66 48 0f 6e c1       	movq   %rcx,%xmm0
 51a:	49 89 f8             	mov    %rdi,%r8
 51d:	48 89 d1             	mov    %rdx,%rcx
 520:	89 c2                	mov    %eax,%edx
 522:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 529 <main+0x4d7>
 529:	48 89 c7             	mov    %rax,%rdi
 52c:	b8 01 00 00 00       	mov    $0x1,%eax
 531:	e8 00 00 00 00       	call   536 <main+0x4e4>
    munmap(mem, memsize);
 536:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
 53a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 53e:	48 89 d6             	mov    %rdx,%rsi
 541:	48 89 c7             	mov    %rax,%rdi
 544:	e8 00 00 00 00       	call   549 <main+0x4f7>
    free(indices);
 549:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 54d:	48 89 c7             	mov    %rax,%rdi
 550:	e8 00 00 00 00       	call   555 <main+0x503>
 555:	b8 00 00 00 00       	mov    $0x0,%eax
}
 55a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 55e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 565:	00 00 
 567:	74 05                	je     56e <main+0x51c>
 569:	e8 00 00 00 00       	call   56e <main+0x51c>
 56e:	c9                   	leave
 56f:	c3                   	ret
