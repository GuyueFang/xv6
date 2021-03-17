
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 16 52 00 	movl   $0x5216,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 a3 3e 00 00       	call   3ec0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 2a 52 00 00 	movl   $0x522a,(%esp)
      2c:	e8 71 3d 00 00       	call   3da2 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 19                	js     4e <main+0x4e>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 94 59 00 	movl   $0x5994,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 77 3e 00 00       	call   3ec0 <printf>
    exit();
      49:	e8 14 3d 00 00       	call   3d62 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      4e:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      55:	00 
      56:	c7 04 24 2a 52 00 00 	movl   $0x522a,(%esp)
      5d:	e8 40 3d 00 00       	call   3da2 <open>
      62:	89 04 24             	mov    %eax,(%esp)
      65:	e8 20 3d 00 00       	call   3d8a <close>

  argptest();
      6a:	e8 31 3a 00 00       	call   3aa0 <argptest>
  createdelete();
      6f:	e8 dc 12 00 00       	call   1350 <createdelete>
  linkunlink();
      74:	e8 87 1c 00 00       	call   1d00 <linkunlink>
  concreate();
      79:	e8 52 19 00 00       	call   19d0 <concreate>
      7e:	66 90                	xchg   %ax,%ax
  fourfiles();
      80:	e8 9b 10 00 00       	call   1120 <fourfiles>
  sharedfd();
      85:	e8 a6 0e 00 00       	call   f30 <sharedfd>

  bigargtest();
      8a:	e8 61 36 00 00       	call   36f0 <bigargtest>
      8f:	90                   	nop
  bigwrite();
      90:	e8 6b 26 00 00       	call   2700 <bigwrite>
  bigargtest();
      95:	e8 56 36 00 00       	call   36f0 <bigargtest>
  bsstest();
      9a:	e8 d1 35 00 00       	call   3670 <bsstest>
      9f:	90                   	nop
  sbrktest();
      a0:	e8 8b 30 00 00       	call   3130 <sbrktest>
  validatetest();
      a5:	e8 06 35 00 00       	call   35b0 <validatetest>

  opentest();
      aa:	e8 61 03 00 00       	call   410 <opentest>
      af:	90                   	nop
  writetest();
      b0:	e8 fb 03 00 00       	call   4b0 <writetest>
  writetest1();
      b5:	e8 06 06 00 00       	call   6c0 <writetest1>
  createtest();
      ba:	e8 f1 07 00 00       	call   8b0 <createtest>
      bf:	90                   	nop

  openiputtest();
      c0:	e8 3b 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      c5:	e8 46 01 00 00       	call   210 <exitiputtest>
  iputtest();
      ca:	e8 61 00 00 00       	call   130 <iputtest>
      cf:	90                   	nop

  mem();
      d0:	e8 7b 0d 00 00       	call   e50 <mem>
  pipe1();
      d5:	e8 b6 09 00 00       	call   a90 <pipe1>
  preempt();
      da:	e8 71 0b 00 00       	call   c50 <preempt>
      df:	90                   	nop
  exitwait();
      e0:	e8 db 0c 00 00       	call   dc0 <exitwait>

  rmdot();
      e5:	e8 76 2a 00 00       	call   2b60 <rmdot>
  fourteen();
      ea:	e8 11 29 00 00       	call   2a00 <fourteen>
      ef:	90                   	nop
  bigfile();
      f0:	e8 0b 27 00 00       	call   2800 <bigfile>
  subdir();
      f5:	e8 76 1e 00 00       	call   1f70 <subdir>
  linktest();
      fa:	e8 71 16 00 00       	call   1770 <linktest>
      ff:	90                   	nop
  unlinkread();
     100:	e8 9b 14 00 00       	call   15a0 <unlinkread>
  dirfile();
     105:	e8 e6 2b 00 00       	call   2cf0 <dirfile>
  iref();
     10a:	e8 21 2e 00 00       	call   2f30 <iref>
     10f:	90                   	nop
  forktest();
     110:	e8 3b 2f 00 00       	call   3050 <forktest>
  bigdir(); // slow
     115:	e8 06 1d 00 00       	call   1e20 <bigdir>

  uio();
     11a:	e8 f1 38 00 00       	call   3a10 <uio>
     11f:	90                   	nop

  exectest();
     120:	e8 1b 09 00 00       	call   a40 <exectest>

  exit();
     125:	e8 38 3c 00 00       	call   3d62 <exit>
     12a:	66 90                	xchg   %ax,%ax
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     136:	a1 a4 62 00 00       	mov    0x62a4,%eax
     13b:	c7 44 24 04 bc 42 00 	movl   $0x42bc,0x4(%esp)
     142:	00 
     143:	89 04 24             	mov    %eax,(%esp)
     146:	e8 75 3d 00 00       	call   3ec0 <printf>
  if(mkdir("iputdir") < 0){
     14b:	c7 04 24 4f 42 00 00 	movl   $0x424f,(%esp)
     152:	e8 73 3c 00 00       	call   3dca <mkdir>
     157:	85 c0                	test   %eax,%eax
     159:	78 4b                	js     1a6 <iputtest+0x76>
  if(chdir("iputdir") < 0){
     15b:	c7 04 24 4f 42 00 00 	movl   $0x424f,(%esp)
     162:	e8 6b 3c 00 00       	call   3dd2 <chdir>
     167:	85 c0                	test   %eax,%eax
     169:	0f 88 85 00 00 00    	js     1f4 <iputtest+0xc4>
  if(unlink("../iputdir") < 0){
     16f:	c7 04 24 4c 42 00 00 	movl   $0x424c,(%esp)
     176:	e8 37 3c 00 00       	call   3db2 <unlink>
     17b:	85 c0                	test   %eax,%eax
     17d:	78 5b                	js     1da <iputtest+0xaa>
  if(chdir("/") < 0){
     17f:	c7 04 24 71 42 00 00 	movl   $0x4271,(%esp)
     186:	e8 47 3c 00 00       	call   3dd2 <chdir>
     18b:	85 c0                	test   %eax,%eax
     18d:	78 31                	js     1c0 <iputtest+0x90>
  printf(stdout, "iput test ok\n");
     18f:	a1 a4 62 00 00       	mov    0x62a4,%eax
     194:	c7 44 24 04 f4 42 00 	movl   $0x42f4,0x4(%esp)
     19b:	00 
     19c:	89 04 24             	mov    %eax,(%esp)
     19f:	e8 1c 3d 00 00       	call   3ec0 <printf>
}
     1a4:	c9                   	leave  
     1a5:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1a6:	a1 a4 62 00 00       	mov    0x62a4,%eax
     1ab:	c7 44 24 04 28 42 00 	movl   $0x4228,0x4(%esp)
     1b2:	00 
     1b3:	89 04 24             	mov    %eax,(%esp)
     1b6:	e8 05 3d 00 00       	call   3ec0 <printf>
    exit();
     1bb:	e8 a2 3b 00 00       	call   3d62 <exit>
    printf(stdout, "chdir / failed\n");
     1c0:	a1 a4 62 00 00       	mov    0x62a4,%eax
     1c5:	c7 44 24 04 73 42 00 	movl   $0x4273,0x4(%esp)
     1cc:	00 
     1cd:	89 04 24             	mov    %eax,(%esp)
     1d0:	e8 eb 3c 00 00       	call   3ec0 <printf>
    exit();
     1d5:	e8 88 3b 00 00       	call   3d62 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1da:	a1 a4 62 00 00       	mov    0x62a4,%eax
     1df:	c7 44 24 04 57 42 00 	movl   $0x4257,0x4(%esp)
     1e6:	00 
     1e7:	89 04 24             	mov    %eax,(%esp)
     1ea:	e8 d1 3c 00 00       	call   3ec0 <printf>
    exit();
     1ef:	e8 6e 3b 00 00       	call   3d62 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1f4:	a1 a4 62 00 00       	mov    0x62a4,%eax
     1f9:	c7 44 24 04 36 42 00 	movl   $0x4236,0x4(%esp)
     200:	00 
     201:	89 04 24             	mov    %eax,(%esp)
     204:	e8 b7 3c 00 00       	call   3ec0 <printf>
    exit();
     209:	e8 54 3b 00 00       	call   3d62 <exit>
     20e:	66 90                	xchg   %ax,%ax

00000210 <exitiputtest>:
{
     210:	55                   	push   %ebp
     211:	89 e5                	mov    %esp,%ebp
     213:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exitiput test\n");
     216:	a1 a4 62 00 00       	mov    0x62a4,%eax
     21b:	c7 44 24 04 83 42 00 	movl   $0x4283,0x4(%esp)
     222:	00 
     223:	89 04 24             	mov    %eax,(%esp)
     226:	e8 95 3c 00 00       	call   3ec0 <printf>
  pid = fork();
     22b:	e8 2a 3b 00 00       	call   3d5a <fork>
  if(pid < 0){
     230:	85 c0                	test   %eax,%eax
     232:	78 7e                	js     2b2 <exitiputtest+0xa2>
  if(pid == 0){
     234:	75 3a                	jne    270 <exitiputtest+0x60>
    if(mkdir("iputdir") < 0){
     236:	c7 04 24 4f 42 00 00 	movl   $0x424f,(%esp)
     23d:	e8 88 3b 00 00       	call   3dca <mkdir>
     242:	85 c0                	test   %eax,%eax
     244:	0f 88 9c 00 00 00    	js     2e6 <exitiputtest+0xd6>
    if(chdir("iputdir") < 0){
     24a:	c7 04 24 4f 42 00 00 	movl   $0x424f,(%esp)
     251:	e8 7c 3b 00 00       	call   3dd2 <chdir>
     256:	85 c0                	test   %eax,%eax
     258:	78 72                	js     2cc <exitiputtest+0xbc>
    if(unlink("../iputdir") < 0){
     25a:	c7 04 24 4c 42 00 00 	movl   $0x424c,(%esp)
     261:	e8 4c 3b 00 00       	call   3db2 <unlink>
     266:	85 c0                	test   %eax,%eax
     268:	78 2e                	js     298 <exitiputtest+0x88>
    exit();
     26a:	e8 f3 3a 00 00       	call   3d62 <exit>
     26f:	90                   	nop
  wait(0);
     270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     277:	e8 ee 3a 00 00       	call   3d6a <wait>
  printf(stdout, "exitiput test ok\n");
     27c:	a1 a4 62 00 00       	mov    0x62a4,%eax
     281:	c7 44 24 04 a6 42 00 	movl   $0x42a6,0x4(%esp)
     288:	00 
     289:	89 04 24             	mov    %eax,(%esp)
     28c:	e8 2f 3c 00 00       	call   3ec0 <printf>
}
     291:	c9                   	leave  
     292:	c3                   	ret    
     293:	90                   	nop
     294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	a1 a4 62 00 00       	mov    0x62a4,%eax
     29d:	c7 44 24 04 57 42 00 	movl   $0x4257,0x4(%esp)
     2a4:	00 
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 13 3c 00 00       	call   3ec0 <printf>
      exit();
     2ad:	e8 b0 3a 00 00       	call   3d62 <exit>
    printf(stdout, "fork failed\n");
     2b2:	a1 a4 62 00 00       	mov    0x62a4,%eax
     2b7:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
     2be:	00 
     2bf:	89 04 24             	mov    %eax,(%esp)
     2c2:	e8 f9 3b 00 00       	call   3ec0 <printf>
    exit();
     2c7:	e8 96 3a 00 00       	call   3d62 <exit>
      printf(stdout, "child chdir failed\n");
     2cc:	a1 a4 62 00 00       	mov    0x62a4,%eax
     2d1:	c7 44 24 04 92 42 00 	movl   $0x4292,0x4(%esp)
     2d8:	00 
     2d9:	89 04 24             	mov    %eax,(%esp)
     2dc:	e8 df 3b 00 00       	call   3ec0 <printf>
      exit();
     2e1:	e8 7c 3a 00 00       	call   3d62 <exit>
      printf(stdout, "mkdir failed\n");
     2e6:	a1 a4 62 00 00       	mov    0x62a4,%eax
     2eb:	c7 44 24 04 28 42 00 	movl   $0x4228,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 c5 3b 00 00       	call   3ec0 <printf>
      exit();
     2fb:	e8 62 3a 00 00       	call   3d62 <exit>

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     306:	a1 a4 62 00 00       	mov    0x62a4,%eax
     30b:	c7 44 24 04 b8 42 00 	movl   $0x42b8,0x4(%esp)
     312:	00 
     313:	89 04 24             	mov    %eax,(%esp)
     316:	e8 a5 3b 00 00       	call   3ec0 <printf>
  if(mkdir("oidir") < 0){
     31b:	c7 04 24 c7 42 00 00 	movl   $0x42c7,(%esp)
     322:	e8 a3 3a 00 00       	call   3dca <mkdir>
     327:	85 c0                	test   %eax,%eax
     329:	0f 88 a6 00 00 00    	js     3d5 <openiputtest+0xd5>
  pid = fork();
     32f:	e8 26 3a 00 00       	call   3d5a <fork>
  if(pid < 0){
     334:	85 c0                	test   %eax,%eax
     336:	0f 88 b3 00 00 00    	js     3ef <openiputtest+0xef>
     33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     340:	75 36                	jne    378 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     342:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     349:	00 
     34a:	c7 04 24 c7 42 00 00 	movl   $0x42c7,(%esp)
     351:	e8 4c 3a 00 00       	call   3da2 <open>
    if(fd >= 0){
     356:	85 c0                	test   %eax,%eax
     358:	78 76                	js     3d0 <openiputtest+0xd0>
      printf(stdout, "open directory for write succeeded\n");
     35a:	a1 a4 62 00 00       	mov    0x62a4,%eax
     35f:	c7 44 24 04 4c 52 00 	movl   $0x524c,0x4(%esp)
     366:	00 
     367:	89 04 24             	mov    %eax,(%esp)
     36a:	e8 51 3b 00 00       	call   3ec0 <printf>
      exit();
     36f:	e8 ee 39 00 00       	call   3d62 <exit>
     374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     378:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     37f:	e8 6e 3a 00 00       	call   3df2 <sleep>
  if(unlink("oidir") != 0){
     384:	c7 04 24 c7 42 00 00 	movl   $0x42c7,(%esp)
     38b:	e8 22 3a 00 00       	call   3db2 <unlink>
     390:	85 c0                	test   %eax,%eax
     392:	75 23                	jne    3b7 <openiputtest+0xb7>
  wait(0);
     394:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     39b:	e8 ca 39 00 00       	call   3d6a <wait>
  printf(stdout, "openiput test ok\n");
     3a0:	a1 a4 62 00 00       	mov    0x62a4,%eax
     3a5:	c7 44 24 04 f0 42 00 	movl   $0x42f0,0x4(%esp)
     3ac:	00 
     3ad:	89 04 24             	mov    %eax,(%esp)
     3b0:	e8 0b 3b 00 00       	call   3ec0 <printf>
}
     3b5:	c9                   	leave  
     3b6:	c3                   	ret    
    printf(stdout, "unlink failed\n");
     3b7:	a1 a4 62 00 00       	mov    0x62a4,%eax
     3bc:	c7 44 24 04 e1 42 00 	movl   $0x42e1,0x4(%esp)
     3c3:	00 
     3c4:	89 04 24             	mov    %eax,(%esp)
     3c7:	e8 f4 3a 00 00       	call   3ec0 <printf>
     3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit();
     3d0:	e8 8d 39 00 00       	call   3d62 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3d5:	a1 a4 62 00 00       	mov    0x62a4,%eax
     3da:	c7 44 24 04 cd 42 00 	movl   $0x42cd,0x4(%esp)
     3e1:	00 
     3e2:	89 04 24             	mov    %eax,(%esp)
     3e5:	e8 d6 3a 00 00       	call   3ec0 <printf>
    exit();
     3ea:	e8 73 39 00 00       	call   3d62 <exit>
    printf(stdout, "fork failed\n");
     3ef:	a1 a4 62 00 00       	mov    0x62a4,%eax
     3f4:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
     3fb:	00 
     3fc:	89 04 24             	mov    %eax,(%esp)
     3ff:	e8 bc 3a 00 00       	call   3ec0 <printf>
    exit();
     404:	e8 59 39 00 00       	call   3d62 <exit>
     409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000410 <opentest>:
{
     410:	55                   	push   %ebp
     411:	89 e5                	mov    %esp,%ebp
     413:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     416:	a1 a4 62 00 00       	mov    0x62a4,%eax
     41b:	c7 44 24 04 02 43 00 	movl   $0x4302,0x4(%esp)
     422:	00 
     423:	89 04 24             	mov    %eax,(%esp)
     426:	e8 95 3a 00 00       	call   3ec0 <printf>
  fd = open("echo", 0);
     42b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     432:	00 
     433:	c7 04 24 0d 43 00 00 	movl   $0x430d,(%esp)
     43a:	e8 63 39 00 00       	call   3da2 <open>
  if(fd < 0){
     43f:	85 c0                	test   %eax,%eax
     441:	78 37                	js     47a <opentest+0x6a>
  close(fd);
     443:	89 04 24             	mov    %eax,(%esp)
     446:	e8 3f 39 00 00       	call   3d8a <close>
  fd = open("doesnotexist", 0);
     44b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     452:	00 
     453:	c7 04 24 25 43 00 00 	movl   $0x4325,(%esp)
     45a:	e8 43 39 00 00       	call   3da2 <open>
  if(fd >= 0){
     45f:	85 c0                	test   %eax,%eax
     461:	79 31                	jns    494 <opentest+0x84>
  printf(stdout, "open test ok\n");
     463:	a1 a4 62 00 00       	mov    0x62a4,%eax
     468:	c7 44 24 04 50 43 00 	movl   $0x4350,0x4(%esp)
     46f:	00 
     470:	89 04 24             	mov    %eax,(%esp)
     473:	e8 48 3a 00 00       	call   3ec0 <printf>
}
     478:	c9                   	leave  
     479:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     47a:	a1 a4 62 00 00       	mov    0x62a4,%eax
     47f:	c7 44 24 04 12 43 00 	movl   $0x4312,0x4(%esp)
     486:	00 
     487:	89 04 24             	mov    %eax,(%esp)
     48a:	e8 31 3a 00 00       	call   3ec0 <printf>
    exit();
     48f:	e8 ce 38 00 00       	call   3d62 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     494:	a1 a4 62 00 00       	mov    0x62a4,%eax
     499:	c7 44 24 04 32 43 00 	movl   $0x4332,0x4(%esp)
     4a0:	00 
     4a1:	89 04 24             	mov    %eax,(%esp)
     4a4:	e8 17 3a 00 00       	call   3ec0 <printf>
    exit();
     4a9:	e8 b4 38 00 00       	call   3d62 <exit>
     4ae:	66 90                	xchg   %ax,%ax

000004b0 <writetest>:
{
     4b0:	55                   	push   %ebp
     4b1:	89 e5                	mov    %esp,%ebp
     4b3:	56                   	push   %esi
     4b4:	53                   	push   %ebx
     4b5:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     4b8:	a1 a4 62 00 00       	mov    0x62a4,%eax
     4bd:	c7 44 24 04 5e 43 00 	movl   $0x435e,0x4(%esp)
     4c4:	00 
     4c5:	89 04 24             	mov    %eax,(%esp)
     4c8:	e8 f3 39 00 00       	call   3ec0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4cd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4d4:	00 
     4d5:	c7 04 24 6f 43 00 00 	movl   $0x436f,(%esp)
     4dc:	e8 c1 38 00 00       	call   3da2 <open>
  if(fd >= 0){
     4e1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4e3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4e5:	0f 88 b1 01 00 00    	js     69c <writetest+0x1ec>
    printf(stdout, "creat small succeeded; ok\n");
     4eb:	a1 a4 62 00 00       	mov    0x62a4,%eax
  for(i = 0; i < 100; i++){
     4f0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4f2:	c7 44 24 04 75 43 00 	movl   $0x4375,0x4(%esp)
     4f9:	00 
     4fa:	89 04 24             	mov    %eax,(%esp)
     4fd:	e8 be 39 00 00       	call   3ec0 <printf>
     502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     508:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     50f:	00 
     510:	c7 44 24 04 ac 43 00 	movl   $0x43ac,0x4(%esp)
     517:	00 
     518:	89 34 24             	mov    %esi,(%esp)
     51b:	e8 62 38 00 00       	call   3d82 <write>
     520:	83 f8 0a             	cmp    $0xa,%eax
     523:	0f 85 e9 00 00 00    	jne    612 <writetest+0x162>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     529:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     530:	00 
     531:	c7 44 24 04 b7 43 00 	movl   $0x43b7,0x4(%esp)
     538:	00 
     539:	89 34 24             	mov    %esi,(%esp)
     53c:	e8 41 38 00 00       	call   3d82 <write>
     541:	83 f8 0a             	cmp    $0xa,%eax
     544:	0f 85 e6 00 00 00    	jne    630 <writetest+0x180>
  for(i = 0; i < 100; i++){
     54a:	83 c3 01             	add    $0x1,%ebx
     54d:	83 fb 64             	cmp    $0x64,%ebx
     550:	75 b6                	jne    508 <writetest+0x58>
  printf(stdout, "writes ok\n");
     552:	a1 a4 62 00 00       	mov    0x62a4,%eax
     557:	c7 44 24 04 c2 43 00 	movl   $0x43c2,0x4(%esp)
     55e:	00 
     55f:	89 04 24             	mov    %eax,(%esp)
     562:	e8 59 39 00 00       	call   3ec0 <printf>
  close(fd);
     567:	89 34 24             	mov    %esi,(%esp)
     56a:	e8 1b 38 00 00       	call   3d8a <close>
  fd = open("small", O_RDONLY);
     56f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     576:	00 
     577:	c7 04 24 6f 43 00 00 	movl   $0x436f,(%esp)
     57e:	e8 1f 38 00 00       	call   3da2 <open>
  if(fd >= 0){
     583:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     585:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     587:	0f 88 c1 00 00 00    	js     64e <writetest+0x19e>
    printf(stdout, "open small succeeded ok\n");
     58d:	a1 a4 62 00 00       	mov    0x62a4,%eax
     592:	c7 44 24 04 cd 43 00 	movl   $0x43cd,0x4(%esp)
     599:	00 
     59a:	89 04 24             	mov    %eax,(%esp)
     59d:	e8 1e 39 00 00       	call   3ec0 <printf>
  i = read(fd, buf, 2000);
     5a2:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     5a9:	00 
     5aa:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     5b1:	00 
     5b2:	89 1c 24             	mov    %ebx,(%esp)
     5b5:	e8 c0 37 00 00       	call   3d7a <read>
  if(i == 2000){
     5ba:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     5bf:	0f 85 a3 00 00 00    	jne    668 <writetest+0x1b8>
    printf(stdout, "read succeeded ok\n");
     5c5:	a1 a4 62 00 00       	mov    0x62a4,%eax
     5ca:	c7 44 24 04 01 44 00 	movl   $0x4401,0x4(%esp)
     5d1:	00 
     5d2:	89 04 24             	mov    %eax,(%esp)
     5d5:	e8 e6 38 00 00       	call   3ec0 <printf>
  close(fd);
     5da:	89 1c 24             	mov    %ebx,(%esp)
     5dd:	e8 a8 37 00 00       	call   3d8a <close>
  if(unlink("small") < 0){
     5e2:	c7 04 24 6f 43 00 00 	movl   $0x436f,(%esp)
     5e9:	e8 c4 37 00 00       	call   3db2 <unlink>
     5ee:	85 c0                	test   %eax,%eax
     5f0:	0f 88 8c 00 00 00    	js     682 <writetest+0x1d2>
  printf(stdout, "small file test ok\n");
     5f6:	a1 a4 62 00 00       	mov    0x62a4,%eax
     5fb:	c7 44 24 04 29 44 00 	movl   $0x4429,0x4(%esp)
     602:	00 
     603:	89 04 24             	mov    %eax,(%esp)
     606:	e8 b5 38 00 00       	call   3ec0 <printf>
}
     60b:	83 c4 10             	add    $0x10,%esp
     60e:	5b                   	pop    %ebx
     60f:	5e                   	pop    %esi
     610:	5d                   	pop    %ebp
     611:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     612:	a1 a4 62 00 00       	mov    0x62a4,%eax
     617:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     61b:	c7 44 24 04 70 52 00 	movl   $0x5270,0x4(%esp)
     622:	00 
     623:	89 04 24             	mov    %eax,(%esp)
     626:	e8 95 38 00 00       	call   3ec0 <printf>
      exit();
     62b:	e8 32 37 00 00       	call   3d62 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     630:	a1 a4 62 00 00       	mov    0x62a4,%eax
     635:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     639:	c7 44 24 04 94 52 00 	movl   $0x5294,0x4(%esp)
     640:	00 
     641:	89 04 24             	mov    %eax,(%esp)
     644:	e8 77 38 00 00       	call   3ec0 <printf>
      exit();
     649:	e8 14 37 00 00       	call   3d62 <exit>
    printf(stdout, "error: open small failed!\n");
     64e:	a1 a4 62 00 00       	mov    0x62a4,%eax
     653:	c7 44 24 04 e6 43 00 	movl   $0x43e6,0x4(%esp)
     65a:	00 
     65b:	89 04 24             	mov    %eax,(%esp)
     65e:	e8 5d 38 00 00       	call   3ec0 <printf>
    exit();
     663:	e8 fa 36 00 00       	call   3d62 <exit>
    printf(stdout, "read failed\n");
     668:	a1 a4 62 00 00       	mov    0x62a4,%eax
     66d:	c7 44 24 04 2d 47 00 	movl   $0x472d,0x4(%esp)
     674:	00 
     675:	89 04 24             	mov    %eax,(%esp)
     678:	e8 43 38 00 00       	call   3ec0 <printf>
    exit();
     67d:	e8 e0 36 00 00       	call   3d62 <exit>
    printf(stdout, "unlink small failed\n");
     682:	a1 a4 62 00 00       	mov    0x62a4,%eax
     687:	c7 44 24 04 14 44 00 	movl   $0x4414,0x4(%esp)
     68e:	00 
     68f:	89 04 24             	mov    %eax,(%esp)
     692:	e8 29 38 00 00       	call   3ec0 <printf>
    exit();
     697:	e8 c6 36 00 00       	call   3d62 <exit>
    printf(stdout, "error: creat small failed!\n");
     69c:	a1 a4 62 00 00       	mov    0x62a4,%eax
     6a1:	c7 44 24 04 90 43 00 	movl   $0x4390,0x4(%esp)
     6a8:	00 
     6a9:	89 04 24             	mov    %eax,(%esp)
     6ac:	e8 0f 38 00 00       	call   3ec0 <printf>
    exit();
     6b1:	e8 ac 36 00 00       	call   3d62 <exit>
     6b6:	8d 76 00             	lea    0x0(%esi),%esi
     6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <writetest1>:
{
     6c0:	55                   	push   %ebp
     6c1:	89 e5                	mov    %esp,%ebp
     6c3:	56                   	push   %esi
     6c4:	53                   	push   %ebx
     6c5:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     6c8:	a1 a4 62 00 00       	mov    0x62a4,%eax
     6cd:	c7 44 24 04 3d 44 00 	movl   $0x443d,0x4(%esp)
     6d4:	00 
     6d5:	89 04 24             	mov    %eax,(%esp)
     6d8:	e8 e3 37 00 00       	call   3ec0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     6dd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     6e4:	00 
     6e5:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     6ec:	e8 b1 36 00 00       	call   3da2 <open>
  if(fd < 0){
     6f1:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     6f3:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6f5:	0f 88 7a 01 00 00    	js     875 <writetest1+0x1b5>
     6fb:	31 db                	xor    %ebx,%ebx
     6fd:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     700:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     707:	00 
     708:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     70f:	00 
     710:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     713:	89 1d 80 8a 00 00    	mov    %ebx,0x8a80
    if(write(fd, buf, 512) != 512){
     719:	e8 64 36 00 00       	call   3d82 <write>
     71e:	3d 00 02 00 00       	cmp    $0x200,%eax
     723:	0f 85 b2 00 00 00    	jne    7db <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     729:	83 c3 01             	add    $0x1,%ebx
     72c:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     732:	75 cc                	jne    700 <writetest1+0x40>
  close(fd);
     734:	89 34 24             	mov    %esi,(%esp)
     737:	e8 4e 36 00 00       	call   3d8a <close>
  fd = open("big", O_RDONLY);
     73c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     743:	00 
     744:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     74b:	e8 52 36 00 00       	call   3da2 <open>
  if(fd < 0){
     750:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     752:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     754:	0f 88 01 01 00 00    	js     85b <writetest1+0x19b>
     75a:	31 db                	xor    %ebx,%ebx
     75c:	eb 1d                	jmp    77b <writetest1+0xbb>
     75e:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     760:	3d 00 02 00 00       	cmp    $0x200,%eax
     765:	0f 85 b0 00 00 00    	jne    81b <writetest1+0x15b>
    if(((int*)buf)[0] != n){
     76b:	a1 80 8a 00 00       	mov    0x8a80,%eax
     770:	39 d8                	cmp    %ebx,%eax
     772:	0f 85 81 00 00 00    	jne    7f9 <writetest1+0x139>
    n++;
     778:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     77b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     782:	00 
     783:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     78a:	00 
     78b:	89 34 24             	mov    %esi,(%esp)
     78e:	e8 e7 35 00 00       	call   3d7a <read>
    if(i == 0){
     793:	85 c0                	test   %eax,%eax
     795:	75 c9                	jne    760 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     797:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     79d:	0f 84 96 00 00 00    	je     839 <writetest1+0x179>
  close(fd);
     7a3:	89 34 24             	mov    %esi,(%esp)
     7a6:	e8 df 35 00 00       	call   3d8a <close>
  if(unlink("big") < 0){
     7ab:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     7b2:	e8 fb 35 00 00       	call   3db2 <unlink>
     7b7:	85 c0                	test   %eax,%eax
     7b9:	0f 88 d0 00 00 00    	js     88f <writetest1+0x1cf>
  printf(stdout, "big files ok\n");
     7bf:	a1 a4 62 00 00       	mov    0x62a4,%eax
     7c4:	c7 44 24 04 de 44 00 	movl   $0x44de,0x4(%esp)
     7cb:	00 
     7cc:	89 04 24             	mov    %eax,(%esp)
     7cf:	e8 ec 36 00 00       	call   3ec0 <printf>
}
     7d4:	83 c4 10             	add    $0x10,%esp
     7d7:	5b                   	pop    %ebx
     7d8:	5e                   	pop    %esi
     7d9:	5d                   	pop    %ebp
     7da:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     7db:	a1 a4 62 00 00       	mov    0x62a4,%eax
     7e0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7e4:	c7 44 24 04 67 44 00 	movl   $0x4467,0x4(%esp)
     7eb:	00 
     7ec:	89 04 24             	mov    %eax,(%esp)
     7ef:	e8 cc 36 00 00       	call   3ec0 <printf>
      exit();
     7f4:	e8 69 35 00 00       	call   3d62 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7f9:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7fd:	a1 a4 62 00 00       	mov    0x62a4,%eax
     802:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     806:	c7 44 24 04 b8 52 00 	movl   $0x52b8,0x4(%esp)
     80d:	00 
     80e:	89 04 24             	mov    %eax,(%esp)
     811:	e8 aa 36 00 00       	call   3ec0 <printf>
      exit();
     816:	e8 47 35 00 00       	call   3d62 <exit>
      printf(stdout, "read failed %d\n", i);
     81b:	89 44 24 08          	mov    %eax,0x8(%esp)
     81f:	a1 a4 62 00 00       	mov    0x62a4,%eax
     824:	c7 44 24 04 bb 44 00 	movl   $0x44bb,0x4(%esp)
     82b:	00 
     82c:	89 04 24             	mov    %eax,(%esp)
     82f:	e8 8c 36 00 00       	call   3ec0 <printf>
      exit();
     834:	e8 29 35 00 00       	call   3d62 <exit>
        printf(stdout, "read only %d blocks from big", n);
     839:	a1 a4 62 00 00       	mov    0x62a4,%eax
     83e:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     845:	00 
     846:	c7 44 24 04 9e 44 00 	movl   $0x449e,0x4(%esp)
     84d:	00 
     84e:	89 04 24             	mov    %eax,(%esp)
     851:	e8 6a 36 00 00       	call   3ec0 <printf>
        exit();
     856:	e8 07 35 00 00       	call   3d62 <exit>
    printf(stdout, "error: open big failed!\n");
     85b:	a1 a4 62 00 00       	mov    0x62a4,%eax
     860:	c7 44 24 04 85 44 00 	movl   $0x4485,0x4(%esp)
     867:	00 
     868:	89 04 24             	mov    %eax,(%esp)
     86b:	e8 50 36 00 00       	call   3ec0 <printf>
    exit();
     870:	e8 ed 34 00 00       	call   3d62 <exit>
    printf(stdout, "error: creat big failed!\n");
     875:	a1 a4 62 00 00       	mov    0x62a4,%eax
     87a:	c7 44 24 04 4d 44 00 	movl   $0x444d,0x4(%esp)
     881:	00 
     882:	89 04 24             	mov    %eax,(%esp)
     885:	e8 36 36 00 00       	call   3ec0 <printf>
    exit();
     88a:	e8 d3 34 00 00       	call   3d62 <exit>
    printf(stdout, "unlink big failed\n");
     88f:	a1 a4 62 00 00       	mov    0x62a4,%eax
     894:	c7 44 24 04 cb 44 00 	movl   $0x44cb,0x4(%esp)
     89b:	00 
     89c:	89 04 24             	mov    %eax,(%esp)
     89f:	e8 1c 36 00 00       	call   3ec0 <printf>
    exit();
     8a4:	e8 b9 34 00 00       	call   3d62 <exit>
     8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008b0 <createtest>:
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	53                   	push   %ebx
  name[2] = '\0';
     8b4:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     8b9:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     8bc:	a1 a4 62 00 00       	mov    0x62a4,%eax
     8c1:	c7 44 24 04 d8 52 00 	movl   $0x52d8,0x4(%esp)
     8c8:	00 
     8c9:	89 04 24             	mov    %eax,(%esp)
     8cc:	e8 ef 35 00 00       	call   3ec0 <printf>
  name[0] = 'a';
     8d1:	c6 05 80 aa 00 00 61 	movb   $0x61,0xaa80
  name[2] = '\0';
     8d8:	c6 05 82 aa 00 00 00 	movb   $0x0,0xaa82
     8df:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     8e0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     8e7:	00 
     8e8:	c7 04 24 80 aa 00 00 	movl   $0xaa80,(%esp)
    name[1] = '0' + i;
     8ef:	88 1d 81 aa 00 00    	mov    %bl,0xaa81
     8f5:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     8f8:	e8 a5 34 00 00       	call   3da2 <open>
    close(fd);
     8fd:	89 04 24             	mov    %eax,(%esp)
     900:	e8 85 34 00 00       	call   3d8a <close>
  for(i = 0; i < 52; i++){
     905:	80 fb 64             	cmp    $0x64,%bl
     908:	75 d6                	jne    8e0 <createtest+0x30>
  name[0] = 'a';
     90a:	c6 05 80 aa 00 00 61 	movb   $0x61,0xaa80
  name[2] = '\0';
     911:	bb 30 00 00 00       	mov    $0x30,%ebx
     916:	c6 05 82 aa 00 00 00 	movb   $0x0,0xaa82
     91d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     920:	88 1d 81 aa 00 00    	mov    %bl,0xaa81
     926:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     929:	c7 04 24 80 aa 00 00 	movl   $0xaa80,(%esp)
     930:	e8 7d 34 00 00       	call   3db2 <unlink>
  for(i = 0; i < 52; i++){
     935:	80 fb 64             	cmp    $0x64,%bl
     938:	75 e6                	jne    920 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     93a:	a1 a4 62 00 00       	mov    0x62a4,%eax
     93f:	c7 44 24 04 00 53 00 	movl   $0x5300,0x4(%esp)
     946:	00 
     947:	89 04 24             	mov    %eax,(%esp)
     94a:	e8 71 35 00 00       	call   3ec0 <printf>
}
     94f:	83 c4 14             	add    $0x14,%esp
     952:	5b                   	pop    %ebx
     953:	5d                   	pop    %ebp
     954:	c3                   	ret    
     955:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000960 <dirtest>:
{
     960:	55                   	push   %ebp
     961:	89 e5                	mov    %esp,%ebp
     963:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     966:	a1 a4 62 00 00       	mov    0x62a4,%eax
     96b:	c7 44 24 04 ec 44 00 	movl   $0x44ec,0x4(%esp)
     972:	00 
     973:	89 04 24             	mov    %eax,(%esp)
     976:	e8 45 35 00 00       	call   3ec0 <printf>
  if(mkdir("dir0") < 0){
     97b:	c7 04 24 f8 44 00 00 	movl   $0x44f8,(%esp)
     982:	e8 43 34 00 00       	call   3dca <mkdir>
     987:	85 c0                	test   %eax,%eax
     989:	78 4b                	js     9d6 <dirtest+0x76>
  if(chdir("dir0") < 0){
     98b:	c7 04 24 f8 44 00 00 	movl   $0x44f8,(%esp)
     992:	e8 3b 34 00 00       	call   3dd2 <chdir>
     997:	85 c0                	test   %eax,%eax
     999:	0f 88 85 00 00 00    	js     a24 <dirtest+0xc4>
  if(chdir("..") < 0){
     99f:	c7 04 24 9d 4a 00 00 	movl   $0x4a9d,(%esp)
     9a6:	e8 27 34 00 00       	call   3dd2 <chdir>
     9ab:	85 c0                	test   %eax,%eax
     9ad:	78 5b                	js     a0a <dirtest+0xaa>
  if(unlink("dir0") < 0){
     9af:	c7 04 24 f8 44 00 00 	movl   $0x44f8,(%esp)
     9b6:	e8 f7 33 00 00       	call   3db2 <unlink>
     9bb:	85 c0                	test   %eax,%eax
     9bd:	78 31                	js     9f0 <dirtest+0x90>
  printf(stdout, "mkdir test ok\n");
     9bf:	a1 a4 62 00 00       	mov    0x62a4,%eax
     9c4:	c7 44 24 04 35 45 00 	movl   $0x4535,0x4(%esp)
     9cb:	00 
     9cc:	89 04 24             	mov    %eax,(%esp)
     9cf:	e8 ec 34 00 00       	call   3ec0 <printf>
}
     9d4:	c9                   	leave  
     9d5:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     9d6:	a1 a4 62 00 00       	mov    0x62a4,%eax
     9db:	c7 44 24 04 28 42 00 	movl   $0x4228,0x4(%esp)
     9e2:	00 
     9e3:	89 04 24             	mov    %eax,(%esp)
     9e6:	e8 d5 34 00 00       	call   3ec0 <printf>
    exit();
     9eb:	e8 72 33 00 00       	call   3d62 <exit>
    printf(stdout, "unlink dir0 failed\n");
     9f0:	a1 a4 62 00 00       	mov    0x62a4,%eax
     9f5:	c7 44 24 04 21 45 00 	movl   $0x4521,0x4(%esp)
     9fc:	00 
     9fd:	89 04 24             	mov    %eax,(%esp)
     a00:	e8 bb 34 00 00       	call   3ec0 <printf>
    exit();
     a05:	e8 58 33 00 00       	call   3d62 <exit>
    printf(stdout, "chdir .. failed\n");
     a0a:	a1 a4 62 00 00       	mov    0x62a4,%eax
     a0f:	c7 44 24 04 10 45 00 	movl   $0x4510,0x4(%esp)
     a16:	00 
     a17:	89 04 24             	mov    %eax,(%esp)
     a1a:	e8 a1 34 00 00       	call   3ec0 <printf>
    exit();
     a1f:	e8 3e 33 00 00       	call   3d62 <exit>
    printf(stdout, "chdir dir0 failed\n");
     a24:	a1 a4 62 00 00       	mov    0x62a4,%eax
     a29:	c7 44 24 04 fd 44 00 	movl   $0x44fd,0x4(%esp)
     a30:	00 
     a31:	89 04 24             	mov    %eax,(%esp)
     a34:	e8 87 34 00 00       	call   3ec0 <printf>
    exit();
     a39:	e8 24 33 00 00       	call   3d62 <exit>
     a3e:	66 90                	xchg   %ax,%ax

00000a40 <exectest>:
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     a46:	a1 a4 62 00 00       	mov    0x62a4,%eax
     a4b:	c7 44 24 04 44 45 00 	movl   $0x4544,0x4(%esp)
     a52:	00 
     a53:	89 04 24             	mov    %eax,(%esp)
     a56:	e8 65 34 00 00       	call   3ec0 <printf>
  if(exec("echo", echoargv) < 0){
     a5b:	c7 44 24 04 a8 62 00 	movl   $0x62a8,0x4(%esp)
     a62:	00 
     a63:	c7 04 24 0d 43 00 00 	movl   $0x430d,(%esp)
     a6a:	e8 2b 33 00 00       	call   3d9a <exec>
     a6f:	85 c0                	test   %eax,%eax
     a71:	78 02                	js     a75 <exectest+0x35>
}
     a73:	c9                   	leave  
     a74:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     a75:	a1 a4 62 00 00       	mov    0x62a4,%eax
     a7a:	c7 44 24 04 4f 45 00 	movl   $0x454f,0x4(%esp)
     a81:	00 
     a82:	89 04 24             	mov    %eax,(%esp)
     a85:	e8 36 34 00 00       	call   3ec0 <printf>
    exit();
     a8a:	e8 d3 32 00 00       	call   3d62 <exit>
     a8f:	90                   	nop

00000a90 <pipe1>:
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	57                   	push   %edi
     a94:	56                   	push   %esi
     a95:	53                   	push   %ebx
     a96:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     a99:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a9c:	89 04 24             	mov    %eax,(%esp)
     a9f:	e8 ce 32 00 00       	call   3d72 <pipe>
     aa4:	85 c0                	test   %eax,%eax
     aa6:	0f 85 55 01 00 00    	jne    c01 <pipe1+0x171>
  pid = fork();
     aac:	e8 a9 32 00 00       	call   3d5a <fork>
  if(pid == 0){
     ab1:	83 f8 00             	cmp    $0x0,%eax
     ab4:	0f 84 93 00 00 00    	je     b4d <pipe1+0xbd>
  } else if(pid > 0){
     aba:	0f 8e 5a 01 00 00    	jle    c1a <pipe1+0x18a>
    close(fds[1]);
     ac0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     ac3:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     ac8:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     aca:	89 04 24             	mov    %eax,(%esp)
     acd:	e8 b8 32 00 00       	call   3d8a <close>
    total = 0;
     ad2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     ad9:	8b 45 e0             	mov    -0x20(%ebp),%eax
     adc:	89 7c 24 08          	mov    %edi,0x8(%esp)
     ae0:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     ae7:	00 
     ae8:	89 04 24             	mov    %eax,(%esp)
     aeb:	e8 8a 32 00 00       	call   3d7a <read>
     af0:	85 c0                	test   %eax,%eax
     af2:	0f 8e b3 00 00 00    	jle    bab <pipe1+0x11b>
     af8:	89 d9                	mov    %ebx,%ecx
     afa:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     afd:	f7 d9                	neg    %ecx
     aff:	eb 09                	jmp    b0a <pipe1+0x7a>
     b01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     b08:	89 d3                	mov    %edx,%ebx
     b0a:	38 9c 0b 80 8a 00 00 	cmp    %bl,0x8a80(%ebx,%ecx,1)
     b11:	8d 53 01             	lea    0x1(%ebx),%edx
     b14:	75 1b                	jne    b31 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     b16:	39 f2                	cmp    %esi,%edx
     b18:	75 ee                	jne    b08 <pipe1+0x78>
      cc = cc * 2;
     b1a:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     b1c:	89 f3                	mov    %esi,%ebx
      total += n;
     b1e:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     b21:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     b27:	b8 00 20 00 00       	mov    $0x2000,%eax
     b2c:	0f 43 f8             	cmovae %eax,%edi
     b2f:	eb a8                	jmp    ad9 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     b31:	c7 44 24 04 7e 45 00 	movl   $0x457e,0x4(%esp)
     b38:	00 
     b39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b40:	e8 7b 33 00 00       	call   3ec0 <printf>
}
     b45:	83 c4 2c             	add    $0x2c,%esp
     b48:	5b                   	pop    %ebx
     b49:	5e                   	pop    %esi
     b4a:	5f                   	pop    %edi
     b4b:	5d                   	pop    %ebp
     b4c:	c3                   	ret    
    close(fds[0]);
     b4d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     b50:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     b52:	89 04 24             	mov    %eax,(%esp)
     b55:	e8 30 32 00 00       	call   3d8a <close>
     b5a:	89 f0                	mov    %esi,%eax
{
     b5c:	89 f3                	mov    %esi,%ebx
     b5e:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     b64:	f7 d8                	neg    %eax
     b66:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     b68:	88 9c 18 80 8a 00 00 	mov    %bl,0x8a80(%eax,%ebx,1)
     b6f:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     b72:	39 d3                	cmp    %edx,%ebx
     b74:	75 f2                	jne    b68 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     b76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     b79:	89 de                	mov    %ebx,%esi
     b7b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     b82:	00 
     b83:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     b8a:	00 
     b8b:	89 04 24             	mov    %eax,(%esp)
     b8e:	e8 ef 31 00 00       	call   3d82 <write>
     b93:	3d 09 04 00 00       	cmp    $0x409,%eax
     b98:	0f 85 95 00 00 00    	jne    c33 <pipe1+0x1a3>
    for(n = 0; n < 5; n++){
     b9e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     ba4:	75 b4                	jne    b5a <pipe1+0xca>
      exit();
     ba6:	e8 b7 31 00 00       	call   3d62 <exit>
    if(total != 5 * 1033){
     bab:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     bb2:	75 30                	jne    be4 <pipe1+0x154>
    close(fds[0]);
     bb4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     bb7:	89 04 24             	mov    %eax,(%esp)
     bba:	e8 cb 31 00 00       	call   3d8a <close>
    wait(0);
     bbf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bc6:	e8 9f 31 00 00       	call   3d6a <wait>
  printf(1, "pipe1 ok\n");
     bcb:	c7 44 24 04 a3 45 00 	movl   $0x45a3,0x4(%esp)
     bd2:	00 
     bd3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bda:	e8 e1 32 00 00       	call   3ec0 <printf>
     bdf:	e9 61 ff ff ff       	jmp    b45 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     be4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     be7:	c7 44 24 04 8c 45 00 	movl   $0x458c,0x4(%esp)
     bee:	00 
     bef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bf6:	89 44 24 08          	mov    %eax,0x8(%esp)
     bfa:	e8 c1 32 00 00       	call   3ec0 <printf>
     bff:	eb a5                	jmp    ba6 <pipe1+0x116>
    printf(1, "pipe() failed\n");
     c01:	c7 44 24 04 61 45 00 	movl   $0x4561,0x4(%esp)
     c08:	00 
     c09:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c10:	e8 ab 32 00 00       	call   3ec0 <printf>
    exit();
     c15:	e8 48 31 00 00       	call   3d62 <exit>
    printf(1, "fork() failed\n");
     c1a:	c7 44 24 04 ad 45 00 	movl   $0x45ad,0x4(%esp)
     c21:	00 
     c22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c29:	e8 92 32 00 00       	call   3ec0 <printf>
    exit();
     c2e:	e8 2f 31 00 00       	call   3d62 <exit>
        printf(1, "pipe1 oops 1\n");
     c33:	c7 44 24 04 70 45 00 	movl   $0x4570,0x4(%esp)
     c3a:	00 
     c3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c42:	e8 79 32 00 00       	call   3ec0 <printf>
        exit();
     c47:	e8 16 31 00 00       	call   3d62 <exit>
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c50 <preempt>:
{
     c50:	55                   	push   %ebp
     c51:	89 e5                	mov    %esp,%ebp
     c53:	57                   	push   %edi
     c54:	56                   	push   %esi
     c55:	53                   	push   %ebx
     c56:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     c59:	c7 44 24 04 bc 45 00 	movl   $0x45bc,0x4(%esp)
     c60:	00 
     c61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c68:	e8 53 32 00 00       	call   3ec0 <printf>
  pid1 = fork();
     c6d:	e8 e8 30 00 00       	call   3d5a <fork>
  if(pid1 == 0)
     c72:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c74:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c76:	75 02                	jne    c7a <preempt+0x2a>
     c78:	eb fe                	jmp    c78 <preempt+0x28>
     c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c80:	e8 d5 30 00 00       	call   3d5a <fork>
  if(pid2 == 0)
     c85:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c87:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c89:	75 02                	jne    c8d <preempt+0x3d>
     c8b:	eb fe                	jmp    c8b <preempt+0x3b>
  pipe(pfds);
     c8d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c90:	89 04 24             	mov    %eax,(%esp)
     c93:	e8 da 30 00 00       	call   3d72 <pipe>
  pid3 = fork();
     c98:	e8 bd 30 00 00       	call   3d5a <fork>
  if(pid3 == 0){
     c9d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c9f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     ca1:	75 4c                	jne    cef <preempt+0x9f>
    close(pfds[0]);
     ca3:	8b 45 e0             	mov    -0x20(%ebp),%eax
     ca6:	89 04 24             	mov    %eax,(%esp)
     ca9:	e8 dc 30 00 00       	call   3d8a <close>
    if(write(pfds[1], "x", 1) != 1)
     cae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cb1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     cb8:	00 
     cb9:	c7 44 24 04 81 4b 00 	movl   $0x4b81,0x4(%esp)
     cc0:	00 
     cc1:	89 04 24             	mov    %eax,(%esp)
     cc4:	e8 b9 30 00 00       	call   3d82 <write>
     cc9:	83 f8 01             	cmp    $0x1,%eax
     ccc:	74 14                	je     ce2 <preempt+0x92>
      printf(1, "preempt write error");
     cce:	c7 44 24 04 c6 45 00 	movl   $0x45c6,0x4(%esp)
     cd5:	00 
     cd6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cdd:	e8 de 31 00 00       	call   3ec0 <printf>
    close(pfds[1]);
     ce2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ce5:	89 04 24             	mov    %eax,(%esp)
     ce8:	e8 9d 30 00 00       	call   3d8a <close>
     ced:	eb fe                	jmp    ced <preempt+0x9d>
  close(pfds[1]);
     cef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cf2:	89 04 24             	mov    %eax,(%esp)
     cf5:	e8 90 30 00 00       	call   3d8a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     cfa:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cfd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     d04:	00 
     d05:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
     d0c:	00 
     d0d:	89 04 24             	mov    %eax,(%esp)
     d10:	e8 65 30 00 00       	call   3d7a <read>
     d15:	83 f8 01             	cmp    $0x1,%eax
     d18:	74 1c                	je     d36 <preempt+0xe6>
    printf(1, "preempt read error");
     d1a:	c7 44 24 04 da 45 00 	movl   $0x45da,0x4(%esp)
     d21:	00 
     d22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d29:	e8 92 31 00 00       	call   3ec0 <printf>
}
     d2e:	83 c4 2c             	add    $0x2c,%esp
     d31:	5b                   	pop    %ebx
     d32:	5e                   	pop    %esi
     d33:	5f                   	pop    %edi
     d34:	5d                   	pop    %ebp
     d35:	c3                   	ret    
  close(pfds[0]);
     d36:	8b 45 e0             	mov    -0x20(%ebp),%eax
     d39:	89 04 24             	mov    %eax,(%esp)
     d3c:	e8 49 30 00 00       	call   3d8a <close>
  printf(1, "kill... ");
     d41:	c7 44 24 04 ed 45 00 	movl   $0x45ed,0x4(%esp)
     d48:	00 
     d49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d50:	e8 6b 31 00 00       	call   3ec0 <printf>
  kill(pid1);
     d55:	89 3c 24             	mov    %edi,(%esp)
     d58:	e8 35 30 00 00       	call   3d92 <kill>
  kill(pid2);
     d5d:	89 34 24             	mov    %esi,(%esp)
     d60:	e8 2d 30 00 00       	call   3d92 <kill>
  kill(pid3);
     d65:	89 1c 24             	mov    %ebx,(%esp)
     d68:	e8 25 30 00 00       	call   3d92 <kill>
  printf(1, "wait... ");
     d6d:	c7 44 24 04 f6 45 00 	movl   $0x45f6,0x4(%esp)
     d74:	00 
     d75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d7c:	e8 3f 31 00 00       	call   3ec0 <printf>
  wait(0);
     d81:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d88:	e8 dd 2f 00 00       	call   3d6a <wait>
  wait(0);
     d8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d94:	e8 d1 2f 00 00       	call   3d6a <wait>
  wait(0);
     d99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     da0:	e8 c5 2f 00 00       	call   3d6a <wait>
  printf(1, "preempt ok\n");
     da5:	c7 44 24 04 ff 45 00 	movl   $0x45ff,0x4(%esp)
     dac:	00 
     dad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     db4:	e8 07 31 00 00       	call   3ec0 <printf>
     db9:	e9 70 ff ff ff       	jmp    d2e <preempt+0xde>
     dbe:	66 90                	xchg   %ax,%ax

00000dc0 <exitwait>:
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	56                   	push   %esi
     dc4:	be 64 00 00 00       	mov    $0x64,%esi
     dc9:	53                   	push   %ebx
     dca:	83 ec 10             	sub    $0x10,%esp
     dcd:	eb 18                	jmp    de7 <exitwait+0x27>
     dcf:	90                   	nop
    if(pid){
     dd0:	74 79                	je     e4b <exitwait+0x8b>
      if(wait(0) != pid){
     dd2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dd9:	e8 8c 2f 00 00       	call   3d6a <wait>
     dde:	39 d8                	cmp    %ebx,%eax
     de0:	75 2e                	jne    e10 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     de2:	83 ee 01             	sub    $0x1,%esi
     de5:	74 49                	je     e30 <exitwait+0x70>
    pid = fork();
     de7:	e8 6e 2f 00 00       	call   3d5a <fork>
    if(pid < 0){
     dec:	85 c0                	test   %eax,%eax
    pid = fork();
     dee:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     df0:	79 de                	jns    dd0 <exitwait+0x10>
      printf(1, "fork failed\n");
     df2:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
     df9:	00 
     dfa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e01:	e8 ba 30 00 00       	call   3ec0 <printf>
}
     e06:	83 c4 10             	add    $0x10,%esp
     e09:	5b                   	pop    %ebx
     e0a:	5e                   	pop    %esi
     e0b:	5d                   	pop    %ebp
     e0c:	c3                   	ret    
     e0d:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
     e10:	c7 44 24 04 0b 46 00 	movl   $0x460b,0x4(%esp)
     e17:	00 
     e18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e1f:	e8 9c 30 00 00       	call   3ec0 <printf>
}
     e24:	83 c4 10             	add    $0x10,%esp
     e27:	5b                   	pop    %ebx
     e28:	5e                   	pop    %esi
     e29:	5d                   	pop    %ebp
     e2a:	c3                   	ret    
     e2b:	90                   	nop
     e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     e30:	c7 44 24 04 1b 46 00 	movl   $0x461b,0x4(%esp)
     e37:	00 
     e38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e3f:	e8 7c 30 00 00       	call   3ec0 <printf>
}
     e44:	83 c4 10             	add    $0x10,%esp
     e47:	5b                   	pop    %ebx
     e48:	5e                   	pop    %esi
     e49:	5d                   	pop    %ebp
     e4a:	c3                   	ret    
      exit();
     e4b:	e8 12 2f 00 00       	call   3d62 <exit>

00000e50 <mem>:
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     e59:	c7 44 24 04 28 46 00 	movl   $0x4628,0x4(%esp)
     e60:	00 
     e61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e68:	e8 53 30 00 00       	call   3ec0 <printf>
  ppid = getpid();
     e6d:	e8 70 2f 00 00       	call   3de2 <getpid>
     e72:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e74:	e8 e1 2e 00 00       	call   3d5a <fork>
     e79:	85 c0                	test   %eax,%eax
     e7b:	75 73                	jne    ef0 <mem+0xa0>
     e7d:	31 db                	xor    %ebx,%ebx
     e7f:	90                   	nop
     e80:	eb 0a                	jmp    e8c <mem+0x3c>
     e82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e88:	89 18                	mov    %ebx,(%eax)
     e8a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e8c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e93:	e8 a8 32 00 00       	call   4140 <malloc>
     e98:	85 c0                	test   %eax,%eax
     e9a:	75 ec                	jne    e88 <mem+0x38>
    while(m1){
     e9c:	85 db                	test   %ebx,%ebx
     e9e:	75 0a                	jne    eaa <mem+0x5a>
     ea0:	eb 16                	jmp    eb8 <mem+0x68>
     ea2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     ea8:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     eaa:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     eac:	89 1c 24             	mov    %ebx,(%esp)
     eaf:	e8 fc 31 00 00       	call   40b0 <free>
    while(m1){
     eb4:	85 ff                	test   %edi,%edi
     eb6:	75 f0                	jne    ea8 <mem+0x58>
    m1 = malloc(1024*20);
     eb8:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     ebf:	e8 7c 32 00 00       	call   4140 <malloc>
    if(m1 == 0){
     ec4:	85 c0                	test   %eax,%eax
     ec6:	74 40                	je     f08 <mem+0xb8>
    free(m1);
     ec8:	89 04 24             	mov    %eax,(%esp)
     ecb:	e8 e0 31 00 00       	call   40b0 <free>
    printf(1, "mem ok\n");
     ed0:	c7 44 24 04 4c 46 00 	movl   $0x464c,0x4(%esp)
     ed7:	00 
     ed8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     edf:	e8 dc 2f 00 00       	call   3ec0 <printf>
    exit();
     ee4:	e8 79 2e 00 00       	call   3d62 <exit>
     ee9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wait(0);
     ef0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ef7:	e8 6e 2e 00 00       	call   3d6a <wait>
}
     efc:	83 c4 1c             	add    $0x1c,%esp
     eff:	5b                   	pop    %ebx
     f00:	5e                   	pop    %esi
     f01:	5f                   	pop    %edi
     f02:	5d                   	pop    %ebp
     f03:	c3                   	ret    
     f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     f08:	c7 44 24 04 32 46 00 	movl   $0x4632,0x4(%esp)
     f0f:	00 
     f10:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f17:	e8 a4 2f 00 00       	call   3ec0 <printf>
      kill(ppid);
     f1c:	89 34 24             	mov    %esi,(%esp)
     f1f:	e8 6e 2e 00 00       	call   3d92 <kill>
      exit();
     f24:	e8 39 2e 00 00       	call   3d62 <exit>
     f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000f30 <sharedfd>:
{
     f30:	55                   	push   %ebp
     f31:	89 e5                	mov    %esp,%ebp
     f33:	57                   	push   %edi
     f34:	56                   	push   %esi
     f35:	53                   	push   %ebx
     f36:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     f39:	c7 44 24 04 54 46 00 	movl   $0x4654,0x4(%esp)
     f40:	00 
     f41:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f48:	e8 73 2f 00 00       	call   3ec0 <printf>
  unlink("sharedfd");
     f4d:	c7 04 24 63 46 00 00 	movl   $0x4663,(%esp)
     f54:	e8 59 2e 00 00       	call   3db2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f59:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     f60:	00 
     f61:	c7 04 24 63 46 00 00 	movl   $0x4663,(%esp)
     f68:	e8 35 2e 00 00       	call   3da2 <open>
  if(fd < 0){
     f6d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f6f:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f71:	0f 88 48 01 00 00    	js     10bf <sharedfd+0x18f>
  pid = fork();
     f77:	e8 de 2d 00 00       	call   3d5a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f7c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f7f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f84:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f8b:	00 
     f8c:	89 34 24             	mov    %esi,(%esp)
     f8f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f92:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f95:	19 c0                	sbb    %eax,%eax
     f97:	83 e0 f3             	and    $0xfffffff3,%eax
     f9a:	83 c0 70             	add    $0x70,%eax
     f9d:	89 44 24 04          	mov    %eax,0x4(%esp)
     fa1:	e8 4a 2c 00 00       	call   3bf0 <memset>
     fa6:	eb 05                	jmp    fad <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     fa8:	83 eb 01             	sub    $0x1,%ebx
     fab:	74 2d                	je     fda <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     fad:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     fb4:	00 
     fb5:	89 74 24 04          	mov    %esi,0x4(%esp)
     fb9:	89 3c 24             	mov    %edi,(%esp)
     fbc:	e8 c1 2d 00 00       	call   3d82 <write>
     fc1:	83 f8 0a             	cmp    $0xa,%eax
     fc4:	74 e2                	je     fa8 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     fc6:	c7 44 24 04 54 53 00 	movl   $0x5354,0x4(%esp)
     fcd:	00 
     fce:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     fd5:	e8 e6 2e 00 00       	call   3ec0 <printf>
  if(pid == 0)
     fda:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     fdd:	85 c0                	test   %eax,%eax
     fdf:	0f 84 2e 01 00 00    	je     1113 <sharedfd+0x1e3>
    wait(0);
     fe5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fec:	e8 79 2d 00 00       	call   3d6a <wait>
  close(fd);
     ff1:	89 3c 24             	mov    %edi,(%esp)
     ff4:	e8 91 2d 00 00       	call   3d8a <close>
  fd = open("sharedfd", 0);
     ff9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1000:	00 
    1001:	c7 04 24 63 46 00 00 	movl   $0x4663,(%esp)
    1008:	e8 95 2d 00 00       	call   3da2 <open>
  if(fd < 0){
    100d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    100f:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1012:	0f 88 c3 00 00 00    	js     10db <sharedfd+0x1ab>
    1018:	31 d2                	xor    %edx,%edx
    101a:	31 db                	xor    %ebx,%ebx
    101c:	8d 7d e8             	lea    -0x18(%ebp),%edi
    101f:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1028:	8b 45 d0             	mov    -0x30(%ebp),%eax
    102b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1032:	00 
    1033:	89 74 24 04          	mov    %esi,0x4(%esp)
    1037:	89 04 24             	mov    %eax,(%esp)
    103a:	e8 3b 2d 00 00       	call   3d7a <read>
    103f:	85 c0                	test   %eax,%eax
    1041:	7e 36                	jle    1079 <sharedfd+0x149>
    1043:	89 f0                	mov    %esi,%eax
    1045:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1048:	eb 18                	jmp    1062 <sharedfd+0x132>
    104a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
    1050:	80 f9 70             	cmp    $0x70,%cl
    1053:	0f 94 c1             	sete   %cl
    1056:	83 c0 01             	add    $0x1,%eax
    1059:	0f b6 c9             	movzbl %cl,%ecx
    105c:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    105e:	39 f8                	cmp    %edi,%eax
    1060:	74 12                	je     1074 <sharedfd+0x144>
      if(buf[i] == 'c')
    1062:	0f b6 08             	movzbl (%eax),%ecx
    1065:	80 f9 63             	cmp    $0x63,%cl
    1068:	75 e6                	jne    1050 <sharedfd+0x120>
    106a:	83 c0 01             	add    $0x1,%eax
        nc++;
    106d:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    1070:	39 f8                	cmp    %edi,%eax
    1072:	75 ee                	jne    1062 <sharedfd+0x132>
    1074:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1077:	eb af                	jmp    1028 <sharedfd+0xf8>
  close(fd);
    1079:	8b 45 d0             	mov    -0x30(%ebp),%eax
    107c:	89 04 24             	mov    %eax,(%esp)
    107f:	e8 06 2d 00 00       	call   3d8a <close>
  unlink("sharedfd");
    1084:	c7 04 24 63 46 00 00 	movl   $0x4663,(%esp)
    108b:	e8 22 2d 00 00       	call   3db2 <unlink>
  if(nc == 10000 && np == 10000){
    1090:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1096:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1099:	75 5c                	jne    10f7 <sharedfd+0x1c7>
    109b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    10a1:	75 54                	jne    10f7 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    10a3:	c7 44 24 04 6c 46 00 	movl   $0x466c,0x4(%esp)
    10aa:	00 
    10ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10b2:	e8 09 2e 00 00       	call   3ec0 <printf>
}
    10b7:	83 c4 3c             	add    $0x3c,%esp
    10ba:	5b                   	pop    %ebx
    10bb:	5e                   	pop    %esi
    10bc:	5f                   	pop    %edi
    10bd:	5d                   	pop    %ebp
    10be:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    10bf:	c7 44 24 04 28 53 00 	movl   $0x5328,0x4(%esp)
    10c6:	00 
    10c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10ce:	e8 ed 2d 00 00       	call   3ec0 <printf>
}
    10d3:	83 c4 3c             	add    $0x3c,%esp
    10d6:	5b                   	pop    %ebx
    10d7:	5e                   	pop    %esi
    10d8:	5f                   	pop    %edi
    10d9:	5d                   	pop    %ebp
    10da:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    10db:	c7 44 24 04 74 53 00 	movl   $0x5374,0x4(%esp)
    10e2:	00 
    10e3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10ea:	e8 d1 2d 00 00       	call   3ec0 <printf>
}
    10ef:	83 c4 3c             	add    $0x3c,%esp
    10f2:	5b                   	pop    %ebx
    10f3:	5e                   	pop    %esi
    10f4:	5f                   	pop    %edi
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    10f7:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    10fb:	89 54 24 08          	mov    %edx,0x8(%esp)
    10ff:	c7 44 24 04 79 46 00 	movl   $0x4679,0x4(%esp)
    1106:	00 
    1107:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    110e:	e8 ad 2d 00 00       	call   3ec0 <printf>
    exit();
    1113:	e8 4a 2c 00 00       	call   3d62 <exit>
    1118:	90                   	nop
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001120 <fourfiles>:
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	57                   	push   %edi
    1124:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    1125:	be 8e 46 00 00       	mov    $0x468e,%esi
{
    112a:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    112b:	31 db                	xor    %ebx,%ebx
{
    112d:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    1130:	c7 44 24 04 94 46 00 	movl   $0x4694,0x4(%esp)
    1137:	00 
    1138:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    113f:	c7 45 d8 8e 46 00 00 	movl   $0x468e,-0x28(%ebp)
    1146:	c7 45 dc d7 47 00 00 	movl   $0x47d7,-0x24(%ebp)
    114d:	c7 45 e0 db 47 00 00 	movl   $0x47db,-0x20(%ebp)
    1154:	c7 45 e4 91 46 00 00 	movl   $0x4691,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    115b:	e8 60 2d 00 00       	call   3ec0 <printf>
    unlink(fname);
    1160:	89 34 24             	mov    %esi,(%esp)
    1163:	e8 4a 2c 00 00       	call   3db2 <unlink>
    pid = fork();
    1168:	e8 ed 2b 00 00       	call   3d5a <fork>
    if(pid < 0){
    116d:	85 c0                	test   %eax,%eax
    116f:	0f 88 8c 01 00 00    	js     1301 <fourfiles+0x1e1>
    if(pid == 0){
    1175:	0f 84 04 01 00 00    	je     127f <fourfiles+0x15f>
  for(pi = 0; pi < 4; pi++){
    117b:	83 c3 01             	add    $0x1,%ebx
    117e:	83 fb 04             	cmp    $0x4,%ebx
    1181:	74 06                	je     1189 <fourfiles+0x69>
    1183:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1187:	eb d7                	jmp    1160 <fourfiles+0x40>
    wait(0);
    1189:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1190:	bf 30 00 00 00       	mov    $0x30,%edi
    1195:	e8 d0 2b 00 00       	call   3d6a <wait>
    119a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11a1:	e8 c4 2b 00 00       	call   3d6a <wait>
    11a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11ad:	e8 b8 2b 00 00       	call   3d6a <wait>
    11b2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11b9:	e8 ac 2b 00 00       	call   3d6a <wait>
    11be:	c7 45 d4 8e 46 00 00 	movl   $0x468e,-0x2c(%ebp)
    fd = open(fname, 0);
    11c5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    11c8:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    11ca:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    11d1:	00 
    11d2:	89 04 24             	mov    %eax,(%esp)
    11d5:	e8 c8 2b 00 00       	call   3da2 <open>
    11da:	89 c6                	mov    %eax,%esi
    11dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    11e0:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    11e7:	00 
    11e8:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    11ef:	00 
    11f0:	89 34 24             	mov    %esi,(%esp)
    11f3:	e8 82 2b 00 00       	call   3d7a <read>
    11f8:	85 c0                	test   %eax,%eax
    11fa:	7e 1a                	jle    1216 <fourfiles+0xf6>
    11fc:	31 d2                	xor    %edx,%edx
    11fe:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    1200:	0f be 8a 80 8a 00 00 	movsbl 0x8a80(%edx),%ecx
    1207:	39 f9                	cmp    %edi,%ecx
    1209:	75 5b                	jne    1266 <fourfiles+0x146>
      for(j = 0; j < n; j++){
    120b:	83 c2 01             	add    $0x1,%edx
    120e:	39 c2                	cmp    %eax,%edx
    1210:	75 ee                	jne    1200 <fourfiles+0xe0>
      total += n;
    1212:	01 d3                	add    %edx,%ebx
    1214:	eb ca                	jmp    11e0 <fourfiles+0xc0>
    close(fd);
    1216:	89 34 24             	mov    %esi,(%esp)
    1219:	e8 6c 2b 00 00       	call   3d8a <close>
    if(total != 12*500){
    121e:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1224:	0f 85 f0 00 00 00    	jne    131a <fourfiles+0x1fa>
    unlink(fname);
    122a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    122d:	89 04 24             	mov    %eax,(%esp)
    1230:	e8 7d 2b 00 00       	call   3db2 <unlink>
  for(i = 0; i < 2; i++){
    1235:	83 ff 31             	cmp    $0x31,%edi
    1238:	75 1c                	jne    1256 <fourfiles+0x136>
  printf(1, "fourfiles ok\n");
    123a:	c7 44 24 04 d2 46 00 	movl   $0x46d2,0x4(%esp)
    1241:	00 
    1242:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1249:	e8 72 2c 00 00       	call   3ec0 <printf>
}
    124e:	83 c4 2c             	add    $0x2c,%esp
    1251:	5b                   	pop    %ebx
    1252:	5e                   	pop    %esi
    1253:	5f                   	pop    %edi
    1254:	5d                   	pop    %ebp
    1255:	c3                   	ret    
    1256:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1259:	bf 31 00 00 00       	mov    $0x31,%edi
    125e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1261:	e9 5f ff ff ff       	jmp    11c5 <fourfiles+0xa5>
          printf(1, "wrong char\n");
    1266:	c7 44 24 04 b5 46 00 	movl   $0x46b5,0x4(%esp)
    126d:	00 
    126e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1275:	e8 46 2c 00 00       	call   3ec0 <printf>
          exit();
    127a:	e8 e3 2a 00 00       	call   3d62 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    127f:	89 34 24             	mov    %esi,(%esp)
    1282:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1289:	00 
    128a:	e8 13 2b 00 00       	call   3da2 <open>
      if(fd < 0){
    128f:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1291:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1293:	0f 88 9e 00 00 00    	js     1337 <fourfiles+0x217>
      memset(buf, '0'+pi, 512);
    1299:	83 c3 30             	add    $0x30,%ebx
    129c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    12a0:	bb 0c 00 00 00       	mov    $0xc,%ebx
    12a5:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    12ac:	00 
    12ad:	c7 04 24 80 8a 00 00 	movl   $0x8a80,(%esp)
    12b4:	e8 37 29 00 00       	call   3bf0 <memset>
    12b9:	eb 0a                	jmp    12c5 <fourfiles+0x1a5>
    12bb:	90                   	nop
    12bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < 12; i++){
    12c0:	83 eb 01             	sub    $0x1,%ebx
    12c3:	74 b5                	je     127a <fourfiles+0x15a>
        if((n = write(fd, buf, 500)) != 500){
    12c5:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    12cc:	00 
    12cd:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    12d4:	00 
    12d5:	89 34 24             	mov    %esi,(%esp)
    12d8:	e8 a5 2a 00 00       	call   3d82 <write>
    12dd:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    12e2:	74 dc                	je     12c0 <fourfiles+0x1a0>
          printf(1, "write failed %d\n", n);
    12e4:	89 44 24 08          	mov    %eax,0x8(%esp)
    12e8:	c7 44 24 04 a4 46 00 	movl   $0x46a4,0x4(%esp)
    12ef:	00 
    12f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12f7:	e8 c4 2b 00 00       	call   3ec0 <printf>
          exit();
    12fc:	e8 61 2a 00 00       	call   3d62 <exit>
      printf(1, "fork failed\n");
    1301:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    1308:	00 
    1309:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1310:	e8 ab 2b 00 00       	call   3ec0 <printf>
      exit();
    1315:	e8 48 2a 00 00       	call   3d62 <exit>
      printf(1, "wrong length %d\n", total);
    131a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    131e:	c7 44 24 04 c1 46 00 	movl   $0x46c1,0x4(%esp)
    1325:	00 
    1326:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    132d:	e8 8e 2b 00 00       	call   3ec0 <printf>
      exit();
    1332:	e8 2b 2a 00 00       	call   3d62 <exit>
        printf(1, "create failed\n");
    1337:	c7 44 24 04 2f 49 00 	movl   $0x492f,0x4(%esp)
    133e:	00 
    133f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1346:	e8 75 2b 00 00       	call   3ec0 <printf>
        exit();
    134b:	e8 12 2a 00 00       	call   3d62 <exit>

00001350 <createdelete>:
{
    1350:	55                   	push   %ebp
    1351:	89 e5                	mov    %esp,%ebp
    1353:	57                   	push   %edi
    1354:	56                   	push   %esi
    1355:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1356:	31 db                	xor    %ebx,%ebx
{
    1358:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    135b:	c7 44 24 04 e0 46 00 	movl   $0x46e0,0x4(%esp)
    1362:	00 
    1363:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    136a:	e8 51 2b 00 00       	call   3ec0 <printf>
    pid = fork();
    136f:	e8 e6 29 00 00       	call   3d5a <fork>
    if(pid < 0){
    1374:	85 c0                	test   %eax,%eax
    1376:	0f 88 ea 01 00 00    	js     1566 <createdelete+0x216>
    137c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1380:	0f 84 2c 01 00 00    	je     14b2 <createdelete+0x162>
  for(pi = 0; pi < 4; pi++){
    1386:	83 c3 01             	add    $0x1,%ebx
    1389:	83 fb 04             	cmp    $0x4,%ebx
    138c:	75 e1                	jne    136f <createdelete+0x1f>
    wait(0);
    138e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < N; i++){
    1395:	31 f6                	xor    %esi,%esi
    wait(0);
    1397:	e8 ce 29 00 00       	call   3d6a <wait>
    139c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    139f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13a6:	e8 bf 29 00 00       	call   3d6a <wait>
    13ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13b2:	e8 b3 29 00 00       	call   3d6a <wait>
    13b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13be:	e8 a7 29 00 00       	call   3d6a <wait>
  name[0] = name[1] = name[2] = 0;
    13c3:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    13c7:	90                   	nop
    13c8:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    13cb:	bb 70 00 00 00       	mov    $0x70,%ebx
    13d0:	8d 46 30             	lea    0x30(%esi),%eax
    13d3:	0f 9f 45 c7          	setg   -0x39(%ebp)
    13d7:	85 f6                	test   %esi,%esi
    13d9:	88 45 c6             	mov    %al,-0x3a(%ebp)
    13dc:	0f 94 c0             	sete   %al
    13df:	08 45 c7             	or     %al,-0x39(%ebp)
    13e2:	8d 46 ff             	lea    -0x1(%esi),%eax
    13e5:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    13e8:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    13ec:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    13f3:	00 
    13f4:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    13f7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13fa:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13fd:	e8 a0 29 00 00       	call   3da2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    1402:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    1406:	0f 84 84 00 00 00    	je     1490 <createdelete+0x140>
    140c:	85 c0                	test   %eax,%eax
    140e:	0f 88 1c 01 00 00    	js     1530 <createdelete+0x1e0>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1414:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1418:	0f 86 61 01 00 00    	jbe    157f <createdelete+0x22f>
        close(fd);
    141e:	89 04 24             	mov    %eax,(%esp)
    1421:	83 c3 01             	add    $0x1,%ebx
    1424:	e8 61 29 00 00       	call   3d8a <close>
    for(pi = 0; pi < 4; pi++){
    1429:	80 fb 74             	cmp    $0x74,%bl
    142c:	75 ba                	jne    13e8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    142e:	83 c6 01             	add    $0x1,%esi
    1431:	83 fe 14             	cmp    $0x14,%esi
    1434:	75 92                	jne    13c8 <createdelete+0x78>
    1436:	be 70 00 00 00       	mov    $0x70,%esi
    143b:	90                   	nop
    143c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1440:	8d 46 c0             	lea    -0x40(%esi),%eax
    1443:	bb 04 00 00 00       	mov    $0x4,%ebx
    1448:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    144b:	89 f0                	mov    %esi,%eax
    144d:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1450:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1454:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    1457:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    145a:	e8 53 29 00 00       	call   3db2 <unlink>
    for(pi = 0; pi < 4; pi++){
    145f:	83 eb 01             	sub    $0x1,%ebx
    1462:	75 e7                	jne    144b <createdelete+0xfb>
    1464:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1467:	89 f0                	mov    %esi,%eax
    1469:	3c 84                	cmp    $0x84,%al
    146b:	75 d3                	jne    1440 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    146d:	c7 44 24 04 f3 46 00 	movl   $0x46f3,0x4(%esp)
    1474:	00 
    1475:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    147c:	e8 3f 2a 00 00       	call   3ec0 <printf>
}
    1481:	83 c4 4c             	add    $0x4c,%esp
    1484:	5b                   	pop    %ebx
    1485:	5e                   	pop    %esi
    1486:	5f                   	pop    %edi
    1487:	5d                   	pop    %ebp
    1488:	c3                   	ret    
    1489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1490:	85 c0                	test   %eax,%eax
    1492:	0f 89 e7 00 00 00    	jns    157f <createdelete+0x22f>
    1498:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    149b:	80 fb 74             	cmp    $0x74,%bl
    149e:	0f 85 44 ff ff ff    	jne    13e8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    14a4:	83 c6 01             	add    $0x1,%esi
    14a7:	83 fe 14             	cmp    $0x14,%esi
    14aa:	0f 85 18 ff ff ff    	jne    13c8 <createdelete+0x78>
    14b0:	eb 84                	jmp    1436 <createdelete+0xe6>
      name[0] = 'p' + pi;
    14b2:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    14b5:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    14ba:	88 5d c8             	mov    %bl,-0x38(%ebp)
    14bd:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    14c0:	31 db                	xor    %ebx,%ebx
    14c2:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    14c6:	eb 0b                	jmp    14d3 <createdelete+0x183>
      for(i = 0; i < N; i++){
    14c8:	83 fe 14             	cmp    $0x14,%esi
    14cb:	74 7b                	je     1548 <createdelete+0x1f8>
    14cd:	83 c3 01             	add    $0x1,%ebx
    14d0:	83 c6 01             	add    $0x1,%esi
    14d3:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    14d6:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    14dd:	00 
    14de:	89 3c 24             	mov    %edi,(%esp)
    14e1:	88 45 c9             	mov    %al,-0x37(%ebp)
    14e4:	e8 b9 28 00 00       	call   3da2 <open>
        if(fd < 0){
    14e9:	85 c0                	test   %eax,%eax
    14eb:	78 60                	js     154d <createdelete+0x1fd>
        close(fd);
    14ed:	89 04 24             	mov    %eax,(%esp)
    14f0:	e8 95 28 00 00       	call   3d8a <close>
        if(i > 0 && (i % 2 ) == 0){
    14f5:	85 db                	test   %ebx,%ebx
    14f7:	74 d4                	je     14cd <createdelete+0x17d>
    14f9:	f6 c3 01             	test   $0x1,%bl
    14fc:	75 ca                	jne    14c8 <createdelete+0x178>
          name[1] = '0' + (i / 2);
    14fe:	89 d8                	mov    %ebx,%eax
    1500:	d1 f8                	sar    %eax
    1502:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    1505:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    1508:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    150b:	e8 a2 28 00 00       	call   3db2 <unlink>
    1510:	85 c0                	test   %eax,%eax
    1512:	79 b4                	jns    14c8 <createdelete+0x178>
            printf(1, "unlink failed\n");
    1514:	c7 44 24 04 e1 42 00 	movl   $0x42e1,0x4(%esp)
    151b:	00 
    151c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1523:	e8 98 29 00 00       	call   3ec0 <printf>
            exit();
    1528:	e8 35 28 00 00       	call   3d62 <exit>
    152d:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "oops createdelete %s didn't exist\n", name);
    1530:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1534:	c7 44 24 04 a0 53 00 	movl   $0x53a0,0x4(%esp)
    153b:	00 
    153c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1543:	e8 78 29 00 00       	call   3ec0 <printf>
        exit();
    1548:	e8 15 28 00 00       	call   3d62 <exit>
          printf(1, "create failed\n");
    154d:	c7 44 24 04 2f 49 00 	movl   $0x492f,0x4(%esp)
    1554:	00 
    1555:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    155c:	e8 5f 29 00 00       	call   3ec0 <printf>
          exit();
    1561:	e8 fc 27 00 00       	call   3d62 <exit>
      printf(1, "fork failed\n");
    1566:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    156d:	00 
    156e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1575:	e8 46 29 00 00       	call   3ec0 <printf>
      exit();
    157a:	e8 e3 27 00 00       	call   3d62 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    157f:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1583:	c7 44 24 04 c4 53 00 	movl   $0x53c4,0x4(%esp)
    158a:	00 
    158b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1592:	e8 29 29 00 00       	call   3ec0 <printf>
        exit();
    1597:	e8 c6 27 00 00       	call   3d62 <exit>
    159c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015a0 <unlinkread>:
{
    15a0:	55                   	push   %ebp
    15a1:	89 e5                	mov    %esp,%ebp
    15a3:	56                   	push   %esi
    15a4:	53                   	push   %ebx
    15a5:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    15a8:	c7 44 24 04 04 47 00 	movl   $0x4704,0x4(%esp)
    15af:	00 
    15b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15b7:	e8 04 29 00 00       	call   3ec0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15bc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15c3:	00 
    15c4:	c7 04 24 15 47 00 00 	movl   $0x4715,(%esp)
    15cb:	e8 d2 27 00 00       	call   3da2 <open>
  if(fd < 0){
    15d0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15d2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15d4:	0f 88 fe 00 00 00    	js     16d8 <unlinkread+0x138>
  write(fd, "hello", 5);
    15da:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    15e1:	00 
    15e2:	c7 44 24 04 3a 47 00 	movl   $0x473a,0x4(%esp)
    15e9:	00 
    15ea:	89 04 24             	mov    %eax,(%esp)
    15ed:	e8 90 27 00 00       	call   3d82 <write>
  close(fd);
    15f2:	89 1c 24             	mov    %ebx,(%esp)
    15f5:	e8 90 27 00 00       	call   3d8a <close>
  fd = open("unlinkread", O_RDWR);
    15fa:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1601:	00 
    1602:	c7 04 24 15 47 00 00 	movl   $0x4715,(%esp)
    1609:	e8 94 27 00 00       	call   3da2 <open>
  if(fd < 0){
    160e:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1610:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1612:	0f 88 3d 01 00 00    	js     1755 <unlinkread+0x1b5>
  if(unlink("unlinkread") != 0){
    1618:	c7 04 24 15 47 00 00 	movl   $0x4715,(%esp)
    161f:	e8 8e 27 00 00       	call   3db2 <unlink>
    1624:	85 c0                	test   %eax,%eax
    1626:	0f 85 10 01 00 00    	jne    173c <unlinkread+0x19c>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    162c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1633:	00 
    1634:	c7 04 24 15 47 00 00 	movl   $0x4715,(%esp)
    163b:	e8 62 27 00 00       	call   3da2 <open>
  write(fd1, "yyy", 3);
    1640:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1647:	00 
    1648:	c7 44 24 04 72 47 00 	movl   $0x4772,0x4(%esp)
    164f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1650:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1652:	89 04 24             	mov    %eax,(%esp)
    1655:	e8 28 27 00 00       	call   3d82 <write>
  close(fd1);
    165a:	89 34 24             	mov    %esi,(%esp)
    165d:	e8 28 27 00 00       	call   3d8a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1662:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1669:	00 
    166a:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    1671:	00 
    1672:	89 1c 24             	mov    %ebx,(%esp)
    1675:	e8 00 27 00 00       	call   3d7a <read>
    167a:	83 f8 05             	cmp    $0x5,%eax
    167d:	0f 85 a0 00 00 00    	jne    1723 <unlinkread+0x183>
  if(buf[0] != 'h'){
    1683:	80 3d 80 8a 00 00 68 	cmpb   $0x68,0x8a80
    168a:	75 7e                	jne    170a <unlinkread+0x16a>
  if(write(fd, buf, 10) != 10){
    168c:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1693:	00 
    1694:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    169b:	00 
    169c:	89 1c 24             	mov    %ebx,(%esp)
    169f:	e8 de 26 00 00       	call   3d82 <write>
    16a4:	83 f8 0a             	cmp    $0xa,%eax
    16a7:	75 48                	jne    16f1 <unlinkread+0x151>
  close(fd);
    16a9:	89 1c 24             	mov    %ebx,(%esp)
    16ac:	e8 d9 26 00 00       	call   3d8a <close>
  unlink("unlinkread");
    16b1:	c7 04 24 15 47 00 00 	movl   $0x4715,(%esp)
    16b8:	e8 f5 26 00 00       	call   3db2 <unlink>
  printf(1, "unlinkread ok\n");
    16bd:	c7 44 24 04 bd 47 00 	movl   $0x47bd,0x4(%esp)
    16c4:	00 
    16c5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16cc:	e8 ef 27 00 00       	call   3ec0 <printf>
}
    16d1:	83 c4 10             	add    $0x10,%esp
    16d4:	5b                   	pop    %ebx
    16d5:	5e                   	pop    %esi
    16d6:	5d                   	pop    %ebp
    16d7:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16d8:	c7 44 24 04 20 47 00 	movl   $0x4720,0x4(%esp)
    16df:	00 
    16e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16e7:	e8 d4 27 00 00       	call   3ec0 <printf>
    exit();
    16ec:	e8 71 26 00 00       	call   3d62 <exit>
    printf(1, "unlinkread write failed\n");
    16f1:	c7 44 24 04 a4 47 00 	movl   $0x47a4,0x4(%esp)
    16f8:	00 
    16f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1700:	e8 bb 27 00 00       	call   3ec0 <printf>
    exit();
    1705:	e8 58 26 00 00       	call   3d62 <exit>
    printf(1, "unlinkread wrong data\n");
    170a:	c7 44 24 04 8d 47 00 	movl   $0x478d,0x4(%esp)
    1711:	00 
    1712:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1719:	e8 a2 27 00 00       	call   3ec0 <printf>
    exit();
    171e:	e8 3f 26 00 00       	call   3d62 <exit>
    printf(1, "unlinkread read failed");
    1723:	c7 44 24 04 76 47 00 	movl   $0x4776,0x4(%esp)
    172a:	00 
    172b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1732:	e8 89 27 00 00       	call   3ec0 <printf>
    exit();
    1737:	e8 26 26 00 00       	call   3d62 <exit>
    printf(1, "unlink unlinkread failed\n");
    173c:	c7 44 24 04 58 47 00 	movl   $0x4758,0x4(%esp)
    1743:	00 
    1744:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    174b:	e8 70 27 00 00       	call   3ec0 <printf>
    exit();
    1750:	e8 0d 26 00 00       	call   3d62 <exit>
    printf(1, "open unlinkread failed\n");
    1755:	c7 44 24 04 40 47 00 	movl   $0x4740,0x4(%esp)
    175c:	00 
    175d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1764:	e8 57 27 00 00       	call   3ec0 <printf>
    exit();
    1769:	e8 f4 25 00 00       	call   3d62 <exit>
    176e:	66 90                	xchg   %ax,%ax

00001770 <linktest>:
{
    1770:	55                   	push   %ebp
    1771:	89 e5                	mov    %esp,%ebp
    1773:	53                   	push   %ebx
    1774:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    1777:	c7 44 24 04 cc 47 00 	movl   $0x47cc,0x4(%esp)
    177e:	00 
    177f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1786:	e8 35 27 00 00       	call   3ec0 <printf>
  unlink("lf1");
    178b:	c7 04 24 d6 47 00 00 	movl   $0x47d6,(%esp)
    1792:	e8 1b 26 00 00       	call   3db2 <unlink>
  unlink("lf2");
    1797:	c7 04 24 da 47 00 00 	movl   $0x47da,(%esp)
    179e:	e8 0f 26 00 00       	call   3db2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    17a3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    17aa:	00 
    17ab:	c7 04 24 d6 47 00 00 	movl   $0x47d6,(%esp)
    17b2:	e8 eb 25 00 00       	call   3da2 <open>
  if(fd < 0){
    17b7:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    17b9:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    17bb:	0f 88 26 01 00 00    	js     18e7 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    17c1:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    17c8:	00 
    17c9:	c7 44 24 04 3a 47 00 	movl   $0x473a,0x4(%esp)
    17d0:	00 
    17d1:	89 04 24             	mov    %eax,(%esp)
    17d4:	e8 a9 25 00 00       	call   3d82 <write>
    17d9:	83 f8 05             	cmp    $0x5,%eax
    17dc:	0f 85 cd 01 00 00    	jne    19af <linktest+0x23f>
  close(fd);
    17e2:	89 1c 24             	mov    %ebx,(%esp)
    17e5:	e8 a0 25 00 00       	call   3d8a <close>
  if(link("lf1", "lf2") < 0){
    17ea:	c7 44 24 04 da 47 00 	movl   $0x47da,0x4(%esp)
    17f1:	00 
    17f2:	c7 04 24 d6 47 00 00 	movl   $0x47d6,(%esp)
    17f9:	e8 c4 25 00 00       	call   3dc2 <link>
    17fe:	85 c0                	test   %eax,%eax
    1800:	0f 88 90 01 00 00    	js     1996 <linktest+0x226>
  unlink("lf1");
    1806:	c7 04 24 d6 47 00 00 	movl   $0x47d6,(%esp)
    180d:	e8 a0 25 00 00       	call   3db2 <unlink>
  if(open("lf1", 0) >= 0){
    1812:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1819:	00 
    181a:	c7 04 24 d6 47 00 00 	movl   $0x47d6,(%esp)
    1821:	e8 7c 25 00 00       	call   3da2 <open>
    1826:	85 c0                	test   %eax,%eax
    1828:	0f 89 4f 01 00 00    	jns    197d <linktest+0x20d>
  fd = open("lf2", 0);
    182e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1835:	00 
    1836:	c7 04 24 da 47 00 00 	movl   $0x47da,(%esp)
    183d:	e8 60 25 00 00       	call   3da2 <open>
  if(fd < 0){
    1842:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1844:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1846:	0f 88 18 01 00 00    	js     1964 <linktest+0x1f4>
  if(read(fd, buf, sizeof(buf)) != 5){
    184c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1853:	00 
    1854:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    185b:	00 
    185c:	89 04 24             	mov    %eax,(%esp)
    185f:	e8 16 25 00 00       	call   3d7a <read>
    1864:	83 f8 05             	cmp    $0x5,%eax
    1867:	0f 85 de 00 00 00    	jne    194b <linktest+0x1db>
  close(fd);
    186d:	89 1c 24             	mov    %ebx,(%esp)
    1870:	e8 15 25 00 00       	call   3d8a <close>
  if(link("lf2", "lf2") >= 0){
    1875:	c7 44 24 04 da 47 00 	movl   $0x47da,0x4(%esp)
    187c:	00 
    187d:	c7 04 24 da 47 00 00 	movl   $0x47da,(%esp)
    1884:	e8 39 25 00 00       	call   3dc2 <link>
    1889:	85 c0                	test   %eax,%eax
    188b:	0f 89 a1 00 00 00    	jns    1932 <linktest+0x1c2>
  unlink("lf2");
    1891:	c7 04 24 da 47 00 00 	movl   $0x47da,(%esp)
    1898:	e8 15 25 00 00       	call   3db2 <unlink>
  if(link("lf2", "lf1") >= 0){
    189d:	c7 44 24 04 d6 47 00 	movl   $0x47d6,0x4(%esp)
    18a4:	00 
    18a5:	c7 04 24 da 47 00 00 	movl   $0x47da,(%esp)
    18ac:	e8 11 25 00 00       	call   3dc2 <link>
    18b1:	85 c0                	test   %eax,%eax
    18b3:	79 64                	jns    1919 <linktest+0x1a9>
  if(link(".", "lf1") >= 0){
    18b5:	c7 44 24 04 d6 47 00 	movl   $0x47d6,0x4(%esp)
    18bc:	00 
    18bd:	c7 04 24 9e 4a 00 00 	movl   $0x4a9e,(%esp)
    18c4:	e8 f9 24 00 00       	call   3dc2 <link>
    18c9:	85 c0                	test   %eax,%eax
    18cb:	79 33                	jns    1900 <linktest+0x190>
  printf(1, "linktest ok\n");
    18cd:	c7 44 24 04 74 48 00 	movl   $0x4874,0x4(%esp)
    18d4:	00 
    18d5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18dc:	e8 df 25 00 00       	call   3ec0 <printf>
}
    18e1:	83 c4 14             	add    $0x14,%esp
    18e4:	5b                   	pop    %ebx
    18e5:	5d                   	pop    %ebp
    18e6:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    18e7:	c7 44 24 04 de 47 00 	movl   $0x47de,0x4(%esp)
    18ee:	00 
    18ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18f6:	e8 c5 25 00 00       	call   3ec0 <printf>
    exit();
    18fb:	e8 62 24 00 00       	call   3d62 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1900:	c7 44 24 04 58 48 00 	movl   $0x4858,0x4(%esp)
    1907:	00 
    1908:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    190f:	e8 ac 25 00 00       	call   3ec0 <printf>
    exit();
    1914:	e8 49 24 00 00       	call   3d62 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1919:	c7 44 24 04 0c 54 00 	movl   $0x540c,0x4(%esp)
    1920:	00 
    1921:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1928:	e8 93 25 00 00       	call   3ec0 <printf>
    exit();
    192d:	e8 30 24 00 00       	call   3d62 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1932:	c7 44 24 04 3a 48 00 	movl   $0x483a,0x4(%esp)
    1939:	00 
    193a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1941:	e8 7a 25 00 00       	call   3ec0 <printf>
    exit();
    1946:	e8 17 24 00 00       	call   3d62 <exit>
    printf(1, "read lf2 failed\n");
    194b:	c7 44 24 04 29 48 00 	movl   $0x4829,0x4(%esp)
    1952:	00 
    1953:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    195a:	e8 61 25 00 00       	call   3ec0 <printf>
    exit();
    195f:	e8 fe 23 00 00       	call   3d62 <exit>
    printf(1, "open lf2 failed\n");
    1964:	c7 44 24 04 18 48 00 	movl   $0x4818,0x4(%esp)
    196b:	00 
    196c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1973:	e8 48 25 00 00       	call   3ec0 <printf>
    exit();
    1978:	e8 e5 23 00 00       	call   3d62 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    197d:	c7 44 24 04 e4 53 00 	movl   $0x53e4,0x4(%esp)
    1984:	00 
    1985:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    198c:	e8 2f 25 00 00       	call   3ec0 <printf>
    exit();
    1991:	e8 cc 23 00 00       	call   3d62 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1996:	c7 44 24 04 03 48 00 	movl   $0x4803,0x4(%esp)
    199d:	00 
    199e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a5:	e8 16 25 00 00       	call   3ec0 <printf>
    exit();
    19aa:	e8 b3 23 00 00       	call   3d62 <exit>
    printf(1, "write lf1 failed\n");
    19af:	c7 44 24 04 f1 47 00 	movl   $0x47f1,0x4(%esp)
    19b6:	00 
    19b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19be:	e8 fd 24 00 00       	call   3ec0 <printf>
    exit();
    19c3:	e8 9a 23 00 00       	call   3d62 <exit>
    19c8:	90                   	nop
    19c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000019d0 <concreate>:
{
    19d0:	55                   	push   %ebp
    19d1:	89 e5                	mov    %esp,%ebp
    19d3:	57                   	push   %edi
    19d4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    19d5:	31 f6                	xor    %esi,%esi
{
    19d7:	53                   	push   %ebx
    19d8:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    19db:	c7 44 24 04 81 48 00 	movl   $0x4881,0x4(%esp)
    19e2:	00 
    19e3:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    19e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19ed:	e8 ce 24 00 00       	call   3ec0 <printf>
  file[0] = 'C';
    19f2:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    19f6:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    19fa:	eb 5a                	jmp    1a56 <concreate+0x86>
    19fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a00:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a05:	89 f1                	mov    %esi,%ecx
    1a07:	f7 ee                	imul   %esi
    1a09:	89 f0                	mov    %esi,%eax
    1a0b:	c1 f8 1f             	sar    $0x1f,%eax
    1a0e:	29 c2                	sub    %eax,%edx
    1a10:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a13:	29 c1                	sub    %eax,%ecx
    1a15:	83 f9 01             	cmp    $0x1,%ecx
    1a18:	0f 84 82 00 00 00    	je     1aa0 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1a1e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1a25:	00 
    1a26:	89 1c 24             	mov    %ebx,(%esp)
    1a29:	e8 74 23 00 00       	call   3da2 <open>
      if(fd < 0){
    1a2e:	85 c0                	test   %eax,%eax
    1a30:	0f 88 4f 02 00 00    	js     1c85 <concreate+0x2b5>
      close(fd);
    1a36:	89 04 24             	mov    %eax,(%esp)
    1a39:	e8 4c 23 00 00       	call   3d8a <close>
    if(pid == 0)
    1a3e:	85 ff                	test   %edi,%edi
    1a40:	74 59                	je     1a9b <concreate+0xcb>
      wait(0);
    1a42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1a49:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1a4c:	e8 19 23 00 00       	call   3d6a <wait>
  for(i = 0; i < 40; i++){
    1a51:	83 fe 28             	cmp    $0x28,%esi
    1a54:	74 62                	je     1ab8 <concreate+0xe8>
    1a56:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1a59:	89 1c 24             	mov    %ebx,(%esp)
    1a5c:	88 45 ae             	mov    %al,-0x52(%ebp)
    1a5f:	e8 4e 23 00 00       	call   3db2 <unlink>
    pid = fork();
    1a64:	e8 f1 22 00 00       	call   3d5a <fork>
    if(pid && (i % 3) == 1){
    1a69:	85 c0                	test   %eax,%eax
    pid = fork();
    1a6b:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1a6d:	75 91                	jne    1a00 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1a6f:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1a74:	89 f1                	mov    %esi,%ecx
    1a76:	f7 ee                	imul   %esi
    1a78:	89 f0                	mov    %esi,%eax
    1a7a:	c1 f8 1f             	sar    $0x1f,%eax
    1a7d:	d1 fa                	sar    %edx
    1a7f:	29 c2                	sub    %eax,%edx
    1a81:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1a84:	29 c1                	sub    %eax,%ecx
    1a86:	83 f9 01             	cmp    $0x1,%ecx
    1a89:	75 93                	jne    1a1e <concreate+0x4e>
      link("C0", file);
    1a8b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1a8f:	c7 04 24 91 48 00 00 	movl   $0x4891,(%esp)
    1a96:	e8 27 23 00 00       	call   3dc2 <link>
        exit();
    1a9b:	e8 c2 22 00 00       	call   3d62 <exit>
      link("C0", file);
    1aa0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1aa4:	c7 04 24 91 48 00 00 	movl   $0x4891,(%esp)
    1aab:	e8 12 23 00 00       	call   3dc2 <link>
    1ab0:	eb 90                	jmp    1a42 <concreate+0x72>
    1ab2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1ab8:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1abb:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1ac2:	00 
    1ac3:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1ac6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1acd:	00 
    1ace:	89 04 24             	mov    %eax,(%esp)
    1ad1:	e8 1a 21 00 00       	call   3bf0 <memset>
  fd = open(".", 0);
    1ad6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1add:	00 
    1ade:	c7 04 24 9e 4a 00 00 	movl   $0x4a9e,(%esp)
    1ae5:	e8 b8 22 00 00       	call   3da2 <open>
  n = 0;
    1aea:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1af1:	89 c6                	mov    %eax,%esi
    1af3:	90                   	nop
    1af4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1af8:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1aff:	00 
    1b00:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b04:	89 34 24             	mov    %esi,(%esp)
    1b07:	e8 6e 22 00 00       	call   3d7a <read>
    1b0c:	85 c0                	test   %eax,%eax
    1b0e:	7e 40                	jle    1b50 <concreate+0x180>
    if(de.inum == 0)
    1b10:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1b15:	74 e1                	je     1af8 <concreate+0x128>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1b17:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1b1b:	75 db                	jne    1af8 <concreate+0x128>
    1b1d:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1b21:	75 d5                	jne    1af8 <concreate+0x128>
      i = de.name[1] - '0';
    1b23:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1b27:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1b2a:	83 f8 27             	cmp    $0x27,%eax
    1b2d:	0f 87 6f 01 00 00    	ja     1ca2 <concreate+0x2d2>
      if(fa[i]){
    1b33:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1b38:	0f 85 9d 01 00 00    	jne    1cdb <concreate+0x30b>
      fa[i] = 1;
    1b3e:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1b43:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1b47:	eb af                	jmp    1af8 <concreate+0x128>
    1b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1b50:	89 34 24             	mov    %esi,(%esp)
    1b53:	e8 32 22 00 00       	call   3d8a <close>
  if(n != 40){
    1b58:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1b5c:	0f 85 60 01 00 00    	jne    1cc2 <concreate+0x2f2>
    1b62:	31 f6                	xor    %esi,%esi
    1b64:	e9 8b 00 00 00       	jmp    1bf4 <concreate+0x224>
    1b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
       ((i % 3) == 1 && pid != 0)){
    1b70:	85 ff                	test   %edi,%edi
    1b72:	0f 84 b5 00 00 00    	je     1c2d <concreate+0x25d>
      close(open(file, 0));
    1b78:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b7f:	00 
    1b80:	89 1c 24             	mov    %ebx,(%esp)
    1b83:	e8 1a 22 00 00       	call   3da2 <open>
    1b88:	89 04 24             	mov    %eax,(%esp)
    1b8b:	e8 fa 21 00 00       	call   3d8a <close>
      close(open(file, 0));
    1b90:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b97:	00 
    1b98:	89 1c 24             	mov    %ebx,(%esp)
    1b9b:	e8 02 22 00 00       	call   3da2 <open>
    1ba0:	89 04 24             	mov    %eax,(%esp)
    1ba3:	e8 e2 21 00 00       	call   3d8a <close>
      close(open(file, 0));
    1ba8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1baf:	00 
    1bb0:	89 1c 24             	mov    %ebx,(%esp)
    1bb3:	e8 ea 21 00 00       	call   3da2 <open>
    1bb8:	89 04 24             	mov    %eax,(%esp)
    1bbb:	e8 ca 21 00 00       	call   3d8a <close>
      close(open(file, 0));
    1bc0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bc7:	00 
    1bc8:	89 1c 24             	mov    %ebx,(%esp)
    1bcb:	e8 d2 21 00 00       	call   3da2 <open>
    1bd0:	89 04 24             	mov    %eax,(%esp)
    1bd3:	e8 b2 21 00 00       	call   3d8a <close>
    if(pid == 0)
    1bd8:	85 ff                	test   %edi,%edi
    1bda:	0f 84 bb fe ff ff    	je     1a9b <concreate+0xcb>
      wait(0);
    1be0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1be7:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1bea:	e8 7b 21 00 00       	call   3d6a <wait>
  for(i = 0; i < 40; i++){
    1bef:	83 fe 28             	cmp    $0x28,%esi
    1bf2:	74 5c                	je     1c50 <concreate+0x280>
    1bf4:	8d 46 30             	lea    0x30(%esi),%eax
    1bf7:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1bfa:	e8 5b 21 00 00       	call   3d5a <fork>
    if(pid < 0){
    1bff:	85 c0                	test   %eax,%eax
    pid = fork();
    1c01:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c03:	78 67                	js     1c6c <concreate+0x29c>
    if(((i % 3) == 0 && pid == 0) ||
    1c05:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c0a:	f7 ee                	imul   %esi
    1c0c:	89 f0                	mov    %esi,%eax
    1c0e:	c1 f8 1f             	sar    $0x1f,%eax
    1c11:	29 c2                	sub    %eax,%edx
    1c13:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c16:	89 f2                	mov    %esi,%edx
    1c18:	29 c2                	sub    %eax,%edx
    1c1a:	89 d0                	mov    %edx,%eax
    1c1c:	09 f8                	or     %edi,%eax
    1c1e:	0f 84 54 ff ff ff    	je     1b78 <concreate+0x1a8>
    1c24:	83 fa 01             	cmp    $0x1,%edx
    1c27:	0f 84 43 ff ff ff    	je     1b70 <concreate+0x1a0>
      unlink(file);
    1c2d:	89 1c 24             	mov    %ebx,(%esp)
    1c30:	e8 7d 21 00 00       	call   3db2 <unlink>
      unlink(file);
    1c35:	89 1c 24             	mov    %ebx,(%esp)
    1c38:	e8 75 21 00 00       	call   3db2 <unlink>
      unlink(file);
    1c3d:	89 1c 24             	mov    %ebx,(%esp)
    1c40:	e8 6d 21 00 00       	call   3db2 <unlink>
      unlink(file);
    1c45:	89 1c 24             	mov    %ebx,(%esp)
    1c48:	e8 65 21 00 00       	call   3db2 <unlink>
    1c4d:	eb 89                	jmp    1bd8 <concreate+0x208>
    1c4f:	90                   	nop
  printf(1, "concreate ok\n");
    1c50:	c7 44 24 04 e6 48 00 	movl   $0x48e6,0x4(%esp)
    1c57:	00 
    1c58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c5f:	e8 5c 22 00 00       	call   3ec0 <printf>
}
    1c64:	83 c4 5c             	add    $0x5c,%esp
    1c67:	5b                   	pop    %ebx
    1c68:	5e                   	pop    %esi
    1c69:	5f                   	pop    %edi
    1c6a:	5d                   	pop    %ebp
    1c6b:	c3                   	ret    
      printf(1, "fork failed\n");
    1c6c:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    1c73:	00 
    1c74:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c7b:	e8 40 22 00 00       	call   3ec0 <printf>
      exit();
    1c80:	e8 dd 20 00 00       	call   3d62 <exit>
        printf(1, "concreate create %s failed\n", file);
    1c85:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1c89:	c7 44 24 04 94 48 00 	movl   $0x4894,0x4(%esp)
    1c90:	00 
    1c91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c98:	e8 23 22 00 00       	call   3ec0 <printf>
        exit();
    1c9d:	e8 c0 20 00 00       	call   3d62 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1ca2:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ca5:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ca9:	c7 44 24 04 b0 48 00 	movl   $0x48b0,0x4(%esp)
    1cb0:	00 
    1cb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cb8:	e8 03 22 00 00       	call   3ec0 <printf>
    1cbd:	e9 d9 fd ff ff       	jmp    1a9b <concreate+0xcb>
    printf(1, "concreate not enough files in directory listing\n");
    1cc2:	c7 44 24 04 30 54 00 	movl   $0x5430,0x4(%esp)
    1cc9:	00 
    1cca:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cd1:	e8 ea 21 00 00       	call   3ec0 <printf>
    exit();
    1cd6:	e8 87 20 00 00       	call   3d62 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1cdb:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1cde:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ce2:	c7 44 24 04 c9 48 00 	movl   $0x48c9,0x4(%esp)
    1ce9:	00 
    1cea:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf1:	e8 ca 21 00 00       	call   3ec0 <printf>
        exit();
    1cf6:	e8 67 20 00 00       	call   3d62 <exit>
    1cfb:	90                   	nop
    1cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001d00 <linkunlink>:
{
    1d00:	55                   	push   %ebp
    1d01:	89 e5                	mov    %esp,%ebp
    1d03:	57                   	push   %edi
    1d04:	56                   	push   %esi
    1d05:	53                   	push   %ebx
    1d06:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1d09:	c7 44 24 04 f4 48 00 	movl   $0x48f4,0x4(%esp)
    1d10:	00 
    1d11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d18:	e8 a3 21 00 00       	call   3ec0 <printf>
  unlink("x");
    1d1d:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
    1d24:	e8 89 20 00 00       	call   3db2 <unlink>
  pid = fork();
    1d29:	e8 2c 20 00 00       	call   3d5a <fork>
  if(pid < 0){
    1d2e:	85 c0                	test   %eax,%eax
  pid = fork();
    1d30:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1d33:	0f 88 c0 00 00 00    	js     1df9 <linkunlink+0xf9>
  unsigned int x = (pid ? 1 : 97);
    1d39:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1d3d:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1d42:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1d47:	19 ff                	sbb    %edi,%edi
    1d49:	83 e7 60             	and    $0x60,%edi
    1d4c:	83 c7 01             	add    $0x1,%edi
    1d4f:	eb 21                	jmp    1d72 <linkunlink+0x72>
    1d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1d58:	83 fa 01             	cmp    $0x1,%edx
    1d5b:	0f 84 7f 00 00 00    	je     1de0 <linkunlink+0xe0>
      unlink("x");
    1d61:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
    1d68:	e8 45 20 00 00       	call   3db2 <unlink>
  for(i = 0; i < 100; i++){
    1d6d:	83 eb 01             	sub    $0x1,%ebx
    1d70:	74 3c                	je     1dae <linkunlink+0xae>
    x = x * 1103515245 + 12345;
    1d72:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1d78:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1d7e:	89 f8                	mov    %edi,%eax
    1d80:	f7 e6                	mul    %esi
    1d82:	d1 ea                	shr    %edx
    1d84:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1d87:	89 fa                	mov    %edi,%edx
    1d89:	29 c2                	sub    %eax,%edx
    1d8b:	75 cb                	jne    1d58 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1d8d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1d94:	00 
    1d95:	c7 04 24 81 4b 00 00 	movl   $0x4b81,(%esp)
    1d9c:	e8 01 20 00 00       	call   3da2 <open>
    1da1:	89 04 24             	mov    %eax,(%esp)
    1da4:	e8 e1 1f 00 00       	call   3d8a <close>
  for(i = 0; i < 100; i++){
    1da9:	83 eb 01             	sub    $0x1,%ebx
    1dac:	75 c4                	jne    1d72 <linkunlink+0x72>
  if(pid)
    1dae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1db1:	85 c0                	test   %eax,%eax
    1db3:	74 5d                	je     1e12 <linkunlink+0x112>
    wait(0);
    1db5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1dbc:	e8 a9 1f 00 00       	call   3d6a <wait>
  printf(1, "linkunlink ok\n");
    1dc1:	c7 44 24 04 09 49 00 	movl   $0x4909,0x4(%esp)
    1dc8:	00 
    1dc9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dd0:	e8 eb 20 00 00       	call   3ec0 <printf>
}
    1dd5:	83 c4 1c             	add    $0x1c,%esp
    1dd8:	5b                   	pop    %ebx
    1dd9:	5e                   	pop    %esi
    1dda:	5f                   	pop    %edi
    1ddb:	5d                   	pop    %ebp
    1ddc:	c3                   	ret    
    1ddd:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1de0:	c7 44 24 04 81 4b 00 	movl   $0x4b81,0x4(%esp)
    1de7:	00 
    1de8:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    1def:	e8 ce 1f 00 00       	call   3dc2 <link>
    1df4:	e9 74 ff ff ff       	jmp    1d6d <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1df9:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    1e00:	00 
    1e01:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e08:	e8 b3 20 00 00       	call   3ec0 <printf>
    exit();
    1e0d:	e8 50 1f 00 00       	call   3d62 <exit>
    exit();
    1e12:	e8 4b 1f 00 00       	call   3d62 <exit>
    1e17:	89 f6                	mov    %esi,%esi
    1e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001e20 <bigdir>:
{
    1e20:	55                   	push   %ebp
    1e21:	89 e5                	mov    %esp,%ebp
    1e23:	56                   	push   %esi
    1e24:	53                   	push   %ebx
    1e25:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1e28:	c7 44 24 04 18 49 00 	movl   $0x4918,0x4(%esp)
    1e2f:	00 
    1e30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e37:	e8 84 20 00 00       	call   3ec0 <printf>
  unlink("bd");
    1e3c:	c7 04 24 25 49 00 00 	movl   $0x4925,(%esp)
    1e43:	e8 6a 1f 00 00       	call   3db2 <unlink>
  fd = open("bd", O_CREATE);
    1e48:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1e4f:	00 
    1e50:	c7 04 24 25 49 00 00 	movl   $0x4925,(%esp)
    1e57:	e8 46 1f 00 00       	call   3da2 <open>
  if(fd < 0){
    1e5c:	85 c0                	test   %eax,%eax
    1e5e:	0f 88 e6 00 00 00    	js     1f4a <bigdir+0x12a>
  close(fd);
    1e64:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1e67:	31 db                	xor    %ebx,%ebx
  close(fd);
    1e69:	e8 1c 1f 00 00       	call   3d8a <close>
    1e6e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1e78:	89 d8                	mov    %ebx,%eax
    1e7a:	c1 f8 06             	sar    $0x6,%eax
    1e7d:	83 c0 30             	add    $0x30,%eax
    1e80:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1e83:	89 d8                	mov    %ebx,%eax
    1e85:	83 e0 3f             	and    $0x3f,%eax
    1e88:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1e8b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1e8f:	c7 04 24 25 49 00 00 	movl   $0x4925,(%esp)
    name[0] = 'x';
    1e96:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1e9a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1e9d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1ea1:	e8 1c 1f 00 00       	call   3dc2 <link>
    1ea6:	85 c0                	test   %eax,%eax
    1ea8:	75 6e                	jne    1f18 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1eaa:	83 c3 01             	add    $0x1,%ebx
    1ead:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1eb3:	75 c3                	jne    1e78 <bigdir+0x58>
  unlink("bd");
    1eb5:	c7 04 24 25 49 00 00 	movl   $0x4925,(%esp)
  for(i = 0; i < 500; i++){
    1ebc:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1ebf:	e8 ee 1e 00 00       	call   3db2 <unlink>
    1ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1ec8:	89 d8                	mov    %ebx,%eax
    1eca:	c1 f8 06             	sar    $0x6,%eax
    1ecd:	83 c0 30             	add    $0x30,%eax
    1ed0:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1ed3:	89 d8                	mov    %ebx,%eax
    1ed5:	83 e0 3f             	and    $0x3f,%eax
    1ed8:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1edb:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1ede:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1ee2:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1ee5:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1ee9:	e8 c4 1e 00 00       	call   3db2 <unlink>
    1eee:	85 c0                	test   %eax,%eax
    1ef0:	75 3f                	jne    1f31 <bigdir+0x111>
  for(i = 0; i < 500; i++){
    1ef2:	83 c3 01             	add    $0x1,%ebx
    1ef5:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1efb:	75 cb                	jne    1ec8 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1efd:	c7 44 24 04 67 49 00 	movl   $0x4967,0x4(%esp)
    1f04:	00 
    1f05:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f0c:	e8 af 1f 00 00       	call   3ec0 <printf>
}
    1f11:	83 c4 20             	add    $0x20,%esp
    1f14:	5b                   	pop    %ebx
    1f15:	5e                   	pop    %esi
    1f16:	5d                   	pop    %ebp
    1f17:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1f18:	c7 44 24 04 3e 49 00 	movl   $0x493e,0x4(%esp)
    1f1f:	00 
    1f20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f27:	e8 94 1f 00 00       	call   3ec0 <printf>
      exit();
    1f2c:	e8 31 1e 00 00       	call   3d62 <exit>
      printf(1, "bigdir unlink failed");
    1f31:	c7 44 24 04 52 49 00 	movl   $0x4952,0x4(%esp)
    1f38:	00 
    1f39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f40:	e8 7b 1f 00 00       	call   3ec0 <printf>
      exit();
    1f45:	e8 18 1e 00 00       	call   3d62 <exit>
    printf(1, "bigdir create failed\n");
    1f4a:	c7 44 24 04 28 49 00 	movl   $0x4928,0x4(%esp)
    1f51:	00 
    1f52:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f59:	e8 62 1f 00 00       	call   3ec0 <printf>
    exit();
    1f5e:	e8 ff 1d 00 00       	call   3d62 <exit>
    1f63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001f70 <subdir>:
{
    1f70:	55                   	push   %ebp
    1f71:	89 e5                	mov    %esp,%ebp
    1f73:	53                   	push   %ebx
    1f74:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    1f77:	c7 44 24 04 72 49 00 	movl   $0x4972,0x4(%esp)
    1f7e:	00 
    1f7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f86:	e8 35 1f 00 00       	call   3ec0 <printf>
  unlink("ff");
    1f8b:	c7 04 24 fb 49 00 00 	movl   $0x49fb,(%esp)
    1f92:	e8 1b 1e 00 00       	call   3db2 <unlink>
  if(mkdir("dd") != 0){
    1f97:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    1f9e:	e8 27 1e 00 00       	call   3dca <mkdir>
    1fa3:	85 c0                	test   %eax,%eax
    1fa5:	0f 85 07 06 00 00    	jne    25b2 <subdir+0x642>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1fab:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1fb2:	00 
    1fb3:	c7 04 24 d1 49 00 00 	movl   $0x49d1,(%esp)
    1fba:	e8 e3 1d 00 00       	call   3da2 <open>
  if(fd < 0){
    1fbf:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1fc1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1fc3:	0f 88 d0 05 00 00    	js     2599 <subdir+0x629>
  write(fd, "ff", 2);
    1fc9:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    1fd0:	00 
    1fd1:	c7 44 24 04 fb 49 00 	movl   $0x49fb,0x4(%esp)
    1fd8:	00 
    1fd9:	89 04 24             	mov    %eax,(%esp)
    1fdc:	e8 a1 1d 00 00       	call   3d82 <write>
  close(fd);
    1fe1:	89 1c 24             	mov    %ebx,(%esp)
    1fe4:	e8 a1 1d 00 00       	call   3d8a <close>
  if(unlink("dd") >= 0){
    1fe9:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    1ff0:	e8 bd 1d 00 00       	call   3db2 <unlink>
    1ff5:	85 c0                	test   %eax,%eax
    1ff7:	0f 89 83 05 00 00    	jns    2580 <subdir+0x610>
  if(mkdir("/dd/dd") != 0){
    1ffd:	c7 04 24 ac 49 00 00 	movl   $0x49ac,(%esp)
    2004:	e8 c1 1d 00 00       	call   3dca <mkdir>
    2009:	85 c0                	test   %eax,%eax
    200b:	0f 85 56 05 00 00    	jne    2567 <subdir+0x5f7>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2011:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2018:	00 
    2019:	c7 04 24 ce 49 00 00 	movl   $0x49ce,(%esp)
    2020:	e8 7d 1d 00 00       	call   3da2 <open>
  if(fd < 0){
    2025:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2027:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2029:	0f 88 25 04 00 00    	js     2454 <subdir+0x4e4>
  write(fd, "FF", 2);
    202f:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2036:	00 
    2037:	c7 44 24 04 ef 49 00 	movl   $0x49ef,0x4(%esp)
    203e:	00 
    203f:	89 04 24             	mov    %eax,(%esp)
    2042:	e8 3b 1d 00 00       	call   3d82 <write>
  close(fd);
    2047:	89 1c 24             	mov    %ebx,(%esp)
    204a:	e8 3b 1d 00 00       	call   3d8a <close>
  fd = open("dd/dd/../ff", 0);
    204f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2056:	00 
    2057:	c7 04 24 f2 49 00 00 	movl   $0x49f2,(%esp)
    205e:	e8 3f 1d 00 00       	call   3da2 <open>
  if(fd < 0){
    2063:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2065:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2067:	0f 88 ce 03 00 00    	js     243b <subdir+0x4cb>
  cc = read(fd, buf, sizeof(buf));
    206d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2074:	00 
    2075:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    207c:	00 
    207d:	89 04 24             	mov    %eax,(%esp)
    2080:	e8 f5 1c 00 00       	call   3d7a <read>
  if(cc != 2 || buf[0] != 'f'){
    2085:	83 f8 02             	cmp    $0x2,%eax
    2088:	0f 85 fe 02 00 00    	jne    238c <subdir+0x41c>
    208e:	80 3d 80 8a 00 00 66 	cmpb   $0x66,0x8a80
    2095:	0f 85 f1 02 00 00    	jne    238c <subdir+0x41c>
  close(fd);
    209b:	89 1c 24             	mov    %ebx,(%esp)
    209e:	e8 e7 1c 00 00       	call   3d8a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    20a3:	c7 44 24 04 32 4a 00 	movl   $0x4a32,0x4(%esp)
    20aa:	00 
    20ab:	c7 04 24 ce 49 00 00 	movl   $0x49ce,(%esp)
    20b2:	e8 0b 1d 00 00       	call   3dc2 <link>
    20b7:	85 c0                	test   %eax,%eax
    20b9:	0f 85 c7 03 00 00    	jne    2486 <subdir+0x516>
  if(unlink("dd/dd/ff") != 0){
    20bf:	c7 04 24 ce 49 00 00 	movl   $0x49ce,(%esp)
    20c6:	e8 e7 1c 00 00       	call   3db2 <unlink>
    20cb:	85 c0                	test   %eax,%eax
    20cd:	0f 85 eb 02 00 00    	jne    23be <subdir+0x44e>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    20d3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    20da:	00 
    20db:	c7 04 24 ce 49 00 00 	movl   $0x49ce,(%esp)
    20e2:	e8 bb 1c 00 00       	call   3da2 <open>
    20e7:	85 c0                	test   %eax,%eax
    20e9:	0f 89 5f 04 00 00    	jns    254e <subdir+0x5de>
  if(chdir("dd") != 0){
    20ef:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    20f6:	e8 d7 1c 00 00       	call   3dd2 <chdir>
    20fb:	85 c0                	test   %eax,%eax
    20fd:	0f 85 32 04 00 00    	jne    2535 <subdir+0x5c5>
  if(chdir("dd/../../dd") != 0){
    2103:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    210a:	e8 c3 1c 00 00       	call   3dd2 <chdir>
    210f:	85 c0                	test   %eax,%eax
    2111:	0f 85 8e 02 00 00    	jne    23a5 <subdir+0x435>
  if(chdir("dd/../../../dd") != 0){
    2117:	c7 04 24 8c 4a 00 00 	movl   $0x4a8c,(%esp)
    211e:	e8 af 1c 00 00       	call   3dd2 <chdir>
    2123:	85 c0                	test   %eax,%eax
    2125:	0f 85 7a 02 00 00    	jne    23a5 <subdir+0x435>
  if(chdir("./..") != 0){
    212b:	c7 04 24 9b 4a 00 00 	movl   $0x4a9b,(%esp)
    2132:	e8 9b 1c 00 00       	call   3dd2 <chdir>
    2137:	85 c0                	test   %eax,%eax
    2139:	0f 85 2e 03 00 00    	jne    246d <subdir+0x4fd>
  fd = open("dd/dd/ffff", 0);
    213f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2146:	00 
    2147:	c7 04 24 32 4a 00 00 	movl   $0x4a32,(%esp)
    214e:	e8 4f 1c 00 00       	call   3da2 <open>
  if(fd < 0){
    2153:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2155:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2157:	0f 88 81 05 00 00    	js     26de <subdir+0x76e>
  if(read(fd, buf, sizeof(buf)) != 2){
    215d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2164:	00 
    2165:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    216c:	00 
    216d:	89 04 24             	mov    %eax,(%esp)
    2170:	e8 05 1c 00 00       	call   3d7a <read>
    2175:	83 f8 02             	cmp    $0x2,%eax
    2178:	0f 85 47 05 00 00    	jne    26c5 <subdir+0x755>
  close(fd);
    217e:	89 1c 24             	mov    %ebx,(%esp)
    2181:	e8 04 1c 00 00       	call   3d8a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2186:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    218d:	00 
    218e:	c7 04 24 ce 49 00 00 	movl   $0x49ce,(%esp)
    2195:	e8 08 1c 00 00       	call   3da2 <open>
    219a:	85 c0                	test   %eax,%eax
    219c:	0f 89 4e 02 00 00    	jns    23f0 <subdir+0x480>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    21a2:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    21a9:	00 
    21aa:	c7 04 24 e6 4a 00 00 	movl   $0x4ae6,(%esp)
    21b1:	e8 ec 1b 00 00       	call   3da2 <open>
    21b6:	85 c0                	test   %eax,%eax
    21b8:	0f 89 19 02 00 00    	jns    23d7 <subdir+0x467>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    21be:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    21c5:	00 
    21c6:	c7 04 24 0b 4b 00 00 	movl   $0x4b0b,(%esp)
    21cd:	e8 d0 1b 00 00       	call   3da2 <open>
    21d2:	85 c0                	test   %eax,%eax
    21d4:	0f 89 42 03 00 00    	jns    251c <subdir+0x5ac>
  if(open("dd", O_CREATE) >= 0){
    21da:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    21e1:	00 
    21e2:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    21e9:	e8 b4 1b 00 00       	call   3da2 <open>
    21ee:	85 c0                	test   %eax,%eax
    21f0:	0f 89 0d 03 00 00    	jns    2503 <subdir+0x593>
  if(open("dd", O_RDWR) >= 0){
    21f6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    21fd:	00 
    21fe:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    2205:	e8 98 1b 00 00       	call   3da2 <open>
    220a:	85 c0                	test   %eax,%eax
    220c:	0f 89 d8 02 00 00    	jns    24ea <subdir+0x57a>
  if(open("dd", O_WRONLY) >= 0){
    2212:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    2219:	00 
    221a:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    2221:	e8 7c 1b 00 00       	call   3da2 <open>
    2226:	85 c0                	test   %eax,%eax
    2228:	0f 89 a3 02 00 00    	jns    24d1 <subdir+0x561>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    222e:	c7 44 24 04 7a 4b 00 	movl   $0x4b7a,0x4(%esp)
    2235:	00 
    2236:	c7 04 24 e6 4a 00 00 	movl   $0x4ae6,(%esp)
    223d:	e8 80 1b 00 00       	call   3dc2 <link>
    2242:	85 c0                	test   %eax,%eax
    2244:	0f 84 6e 02 00 00    	je     24b8 <subdir+0x548>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    224a:	c7 44 24 04 7a 4b 00 	movl   $0x4b7a,0x4(%esp)
    2251:	00 
    2252:	c7 04 24 0b 4b 00 00 	movl   $0x4b0b,(%esp)
    2259:	e8 64 1b 00 00       	call   3dc2 <link>
    225e:	85 c0                	test   %eax,%eax
    2260:	0f 84 39 02 00 00    	je     249f <subdir+0x52f>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2266:	c7 44 24 04 32 4a 00 	movl   $0x4a32,0x4(%esp)
    226d:	00 
    226e:	c7 04 24 d1 49 00 00 	movl   $0x49d1,(%esp)
    2275:	e8 48 1b 00 00       	call   3dc2 <link>
    227a:	85 c0                	test   %eax,%eax
    227c:	0f 84 a0 01 00 00    	je     2422 <subdir+0x4b2>
  if(mkdir("dd/ff/ff") == 0){
    2282:	c7 04 24 e6 4a 00 00 	movl   $0x4ae6,(%esp)
    2289:	e8 3c 1b 00 00       	call   3dca <mkdir>
    228e:	85 c0                	test   %eax,%eax
    2290:	0f 84 73 01 00 00    	je     2409 <subdir+0x499>
  if(mkdir("dd/xx/ff") == 0){
    2296:	c7 04 24 0b 4b 00 00 	movl   $0x4b0b,(%esp)
    229d:	e8 28 1b 00 00       	call   3dca <mkdir>
    22a2:	85 c0                	test   %eax,%eax
    22a4:	0f 84 02 04 00 00    	je     26ac <subdir+0x73c>
  if(mkdir("dd/dd/ffff") == 0){
    22aa:	c7 04 24 32 4a 00 00 	movl   $0x4a32,(%esp)
    22b1:	e8 14 1b 00 00       	call   3dca <mkdir>
    22b6:	85 c0                	test   %eax,%eax
    22b8:	0f 84 d5 03 00 00    	je     2693 <subdir+0x723>
  if(unlink("dd/xx/ff") == 0){
    22be:	c7 04 24 0b 4b 00 00 	movl   $0x4b0b,(%esp)
    22c5:	e8 e8 1a 00 00       	call   3db2 <unlink>
    22ca:	85 c0                	test   %eax,%eax
    22cc:	0f 84 a8 03 00 00    	je     267a <subdir+0x70a>
  if(unlink("dd/ff/ff") == 0){
    22d2:	c7 04 24 e6 4a 00 00 	movl   $0x4ae6,(%esp)
    22d9:	e8 d4 1a 00 00       	call   3db2 <unlink>
    22de:	85 c0                	test   %eax,%eax
    22e0:	0f 84 7b 03 00 00    	je     2661 <subdir+0x6f1>
  if(chdir("dd/ff") == 0){
    22e6:	c7 04 24 d1 49 00 00 	movl   $0x49d1,(%esp)
    22ed:	e8 e0 1a 00 00       	call   3dd2 <chdir>
    22f2:	85 c0                	test   %eax,%eax
    22f4:	0f 84 4e 03 00 00    	je     2648 <subdir+0x6d8>
  if(chdir("dd/xx") == 0){
    22fa:	c7 04 24 7d 4b 00 00 	movl   $0x4b7d,(%esp)
    2301:	e8 cc 1a 00 00       	call   3dd2 <chdir>
    2306:	85 c0                	test   %eax,%eax
    2308:	0f 84 21 03 00 00    	je     262f <subdir+0x6bf>
  if(unlink("dd/dd/ffff") != 0){
    230e:	c7 04 24 32 4a 00 00 	movl   $0x4a32,(%esp)
    2315:	e8 98 1a 00 00       	call   3db2 <unlink>
    231a:	85 c0                	test   %eax,%eax
    231c:	0f 85 9c 00 00 00    	jne    23be <subdir+0x44e>
  if(unlink("dd/ff") != 0){
    2322:	c7 04 24 d1 49 00 00 	movl   $0x49d1,(%esp)
    2329:	e8 84 1a 00 00       	call   3db2 <unlink>
    232e:	85 c0                	test   %eax,%eax
    2330:	0f 85 e0 02 00 00    	jne    2616 <subdir+0x6a6>
  if(unlink("dd") == 0){
    2336:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    233d:	e8 70 1a 00 00       	call   3db2 <unlink>
    2342:	85 c0                	test   %eax,%eax
    2344:	0f 84 b3 02 00 00    	je     25fd <subdir+0x68d>
  if(unlink("dd/dd") < 0){
    234a:	c7 04 24 ad 49 00 00 	movl   $0x49ad,(%esp)
    2351:	e8 5c 1a 00 00       	call   3db2 <unlink>
    2356:	85 c0                	test   %eax,%eax
    2358:	0f 88 86 02 00 00    	js     25e4 <subdir+0x674>
  if(unlink("dd") < 0){
    235e:	c7 04 24 98 4a 00 00 	movl   $0x4a98,(%esp)
    2365:	e8 48 1a 00 00       	call   3db2 <unlink>
    236a:	85 c0                	test   %eax,%eax
    236c:	0f 88 59 02 00 00    	js     25cb <subdir+0x65b>
  printf(1, "subdir ok\n");
    2372:	c7 44 24 04 7a 4c 00 	movl   $0x4c7a,0x4(%esp)
    2379:	00 
    237a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2381:	e8 3a 1b 00 00       	call   3ec0 <printf>
}
    2386:	83 c4 14             	add    $0x14,%esp
    2389:	5b                   	pop    %ebx
    238a:	5d                   	pop    %ebp
    238b:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    238c:	c7 44 24 04 17 4a 00 	movl   $0x4a17,0x4(%esp)
    2393:	00 
    2394:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    239b:	e8 20 1b 00 00       	call   3ec0 <printf>
    exit();
    23a0:	e8 bd 19 00 00       	call   3d62 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    23a5:	c7 44 24 04 72 4a 00 	movl   $0x4a72,0x4(%esp)
    23ac:	00 
    23ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23b4:	e8 07 1b 00 00       	call   3ec0 <printf>
    exit();
    23b9:	e8 a4 19 00 00       	call   3d62 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    23be:	c7 44 24 04 3d 4a 00 	movl   $0x4a3d,0x4(%esp)
    23c5:	00 
    23c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23cd:	e8 ee 1a 00 00       	call   3ec0 <printf>
    exit();
    23d2:	e8 8b 19 00 00       	call   3d62 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    23d7:	c7 44 24 04 ef 4a 00 	movl   $0x4aef,0x4(%esp)
    23de:	00 
    23df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23e6:	e8 d5 1a 00 00       	call   3ec0 <printf>
    exit();
    23eb:	e8 72 19 00 00       	call   3d62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    23f0:	c7 44 24 04 d4 54 00 	movl   $0x54d4,0x4(%esp)
    23f7:	00 
    23f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23ff:	e8 bc 1a 00 00       	call   3ec0 <printf>
    exit();
    2404:	e8 59 19 00 00       	call   3d62 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2409:	c7 44 24 04 83 4b 00 	movl   $0x4b83,0x4(%esp)
    2410:	00 
    2411:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2418:	e8 a3 1a 00 00       	call   3ec0 <printf>
    exit();
    241d:	e8 40 19 00 00       	call   3d62 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2422:	c7 44 24 04 44 55 00 	movl   $0x5544,0x4(%esp)
    2429:	00 
    242a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2431:	e8 8a 1a 00 00       	call   3ec0 <printf>
    exit();
    2436:	e8 27 19 00 00       	call   3d62 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    243b:	c7 44 24 04 fe 49 00 	movl   $0x49fe,0x4(%esp)
    2442:	00 
    2443:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    244a:	e8 71 1a 00 00       	call   3ec0 <printf>
    exit();
    244f:	e8 0e 19 00 00       	call   3d62 <exit>
    printf(1, "create dd/dd/ff failed\n");
    2454:	c7 44 24 04 d7 49 00 	movl   $0x49d7,0x4(%esp)
    245b:	00 
    245c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2463:	e8 58 1a 00 00       	call   3ec0 <printf>
    exit();
    2468:	e8 f5 18 00 00       	call   3d62 <exit>
    printf(1, "chdir ./.. failed\n");
    246d:	c7 44 24 04 a0 4a 00 	movl   $0x4aa0,0x4(%esp)
    2474:	00 
    2475:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247c:	e8 3f 1a 00 00       	call   3ec0 <printf>
    exit();
    2481:	e8 dc 18 00 00       	call   3d62 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2486:	c7 44 24 04 8c 54 00 	movl   $0x548c,0x4(%esp)
    248d:	00 
    248e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2495:	e8 26 1a 00 00       	call   3ec0 <printf>
    exit();
    249a:	e8 c3 18 00 00       	call   3d62 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    249f:	c7 44 24 04 20 55 00 	movl   $0x5520,0x4(%esp)
    24a6:	00 
    24a7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24ae:	e8 0d 1a 00 00       	call   3ec0 <printf>
    exit();
    24b3:	e8 aa 18 00 00       	call   3d62 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    24b8:	c7 44 24 04 fc 54 00 	movl   $0x54fc,0x4(%esp)
    24bf:	00 
    24c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24c7:	e8 f4 19 00 00       	call   3ec0 <printf>
    exit();
    24cc:	e8 91 18 00 00       	call   3d62 <exit>
    printf(1, "open dd wronly succeeded!\n");
    24d1:	c7 44 24 04 5f 4b 00 	movl   $0x4b5f,0x4(%esp)
    24d8:	00 
    24d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24e0:	e8 db 19 00 00       	call   3ec0 <printf>
    exit();
    24e5:	e8 78 18 00 00       	call   3d62 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    24ea:	c7 44 24 04 46 4b 00 	movl   $0x4b46,0x4(%esp)
    24f1:	00 
    24f2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24f9:	e8 c2 19 00 00       	call   3ec0 <printf>
    exit();
    24fe:	e8 5f 18 00 00       	call   3d62 <exit>
    printf(1, "create dd succeeded!\n");
    2503:	c7 44 24 04 30 4b 00 	movl   $0x4b30,0x4(%esp)
    250a:	00 
    250b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2512:	e8 a9 19 00 00       	call   3ec0 <printf>
    exit();
    2517:	e8 46 18 00 00       	call   3d62 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    251c:	c7 44 24 04 14 4b 00 	movl   $0x4b14,0x4(%esp)
    2523:	00 
    2524:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    252b:	e8 90 19 00 00       	call   3ec0 <printf>
    exit();
    2530:	e8 2d 18 00 00       	call   3d62 <exit>
    printf(1, "chdir dd failed\n");
    2535:	c7 44 24 04 55 4a 00 	movl   $0x4a55,0x4(%esp)
    253c:	00 
    253d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2544:	e8 77 19 00 00       	call   3ec0 <printf>
    exit();
    2549:	e8 14 18 00 00       	call   3d62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    254e:	c7 44 24 04 b0 54 00 	movl   $0x54b0,0x4(%esp)
    2555:	00 
    2556:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255d:	e8 5e 19 00 00       	call   3ec0 <printf>
    exit();
    2562:	e8 fb 17 00 00       	call   3d62 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    2567:	c7 44 24 04 b3 49 00 	movl   $0x49b3,0x4(%esp)
    256e:	00 
    256f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2576:	e8 45 19 00 00       	call   3ec0 <printf>
    exit();
    257b:	e8 e2 17 00 00       	call   3d62 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2580:	c7 44 24 04 64 54 00 	movl   $0x5464,0x4(%esp)
    2587:	00 
    2588:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    258f:	e8 2c 19 00 00       	call   3ec0 <printf>
    exit();
    2594:	e8 c9 17 00 00       	call   3d62 <exit>
    printf(1, "create dd/ff failed\n");
    2599:	c7 44 24 04 97 49 00 	movl   $0x4997,0x4(%esp)
    25a0:	00 
    25a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25a8:	e8 13 19 00 00       	call   3ec0 <printf>
    exit();
    25ad:	e8 b0 17 00 00       	call   3d62 <exit>
    printf(1, "subdir mkdir dd failed\n");
    25b2:	c7 44 24 04 7f 49 00 	movl   $0x497f,0x4(%esp)
    25b9:	00 
    25ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25c1:	e8 fa 18 00 00       	call   3ec0 <printf>
    exit();
    25c6:	e8 97 17 00 00       	call   3d62 <exit>
    printf(1, "unlink dd failed\n");
    25cb:	c7 44 24 04 68 4c 00 	movl   $0x4c68,0x4(%esp)
    25d2:	00 
    25d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25da:	e8 e1 18 00 00       	call   3ec0 <printf>
    exit();
    25df:	e8 7e 17 00 00       	call   3d62 <exit>
    printf(1, "unlink dd/dd failed\n");
    25e4:	c7 44 24 04 53 4c 00 	movl   $0x4c53,0x4(%esp)
    25eb:	00 
    25ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25f3:	e8 c8 18 00 00       	call   3ec0 <printf>
    exit();
    25f8:	e8 65 17 00 00       	call   3d62 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    25fd:	c7 44 24 04 68 55 00 	movl   $0x5568,0x4(%esp)
    2604:	00 
    2605:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    260c:	e8 af 18 00 00       	call   3ec0 <printf>
    exit();
    2611:	e8 4c 17 00 00       	call   3d62 <exit>
    printf(1, "unlink dd/ff failed\n");
    2616:	c7 44 24 04 3e 4c 00 	movl   $0x4c3e,0x4(%esp)
    261d:	00 
    261e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2625:	e8 96 18 00 00       	call   3ec0 <printf>
    exit();
    262a:	e8 33 17 00 00       	call   3d62 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    262f:	c7 44 24 04 26 4c 00 	movl   $0x4c26,0x4(%esp)
    2636:	00 
    2637:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263e:	e8 7d 18 00 00       	call   3ec0 <printf>
    exit();
    2643:	e8 1a 17 00 00       	call   3d62 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    2648:	c7 44 24 04 0e 4c 00 	movl   $0x4c0e,0x4(%esp)
    264f:	00 
    2650:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2657:	e8 64 18 00 00       	call   3ec0 <printf>
    exit();
    265c:	e8 01 17 00 00       	call   3d62 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    2661:	c7 44 24 04 f2 4b 00 	movl   $0x4bf2,0x4(%esp)
    2668:	00 
    2669:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2670:	e8 4b 18 00 00       	call   3ec0 <printf>
    exit();
    2675:	e8 e8 16 00 00       	call   3d62 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    267a:	c7 44 24 04 d6 4b 00 	movl   $0x4bd6,0x4(%esp)
    2681:	00 
    2682:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2689:	e8 32 18 00 00       	call   3ec0 <printf>
    exit();
    268e:	e8 cf 16 00 00       	call   3d62 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2693:	c7 44 24 04 b9 4b 00 	movl   $0x4bb9,0x4(%esp)
    269a:	00 
    269b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26a2:	e8 19 18 00 00       	call   3ec0 <printf>
    exit();
    26a7:	e8 b6 16 00 00       	call   3d62 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    26ac:	c7 44 24 04 9e 4b 00 	movl   $0x4b9e,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 00 18 00 00       	call   3ec0 <printf>
    exit();
    26c0:	e8 9d 16 00 00       	call   3d62 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    26c5:	c7 44 24 04 cb 4a 00 	movl   $0x4acb,0x4(%esp)
    26cc:	00 
    26cd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26d4:	e8 e7 17 00 00       	call   3ec0 <printf>
    exit();
    26d9:	e8 84 16 00 00       	call   3d62 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    26de:	c7 44 24 04 b3 4a 00 	movl   $0x4ab3,0x4(%esp)
    26e5:	00 
    26e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26ed:	e8 ce 17 00 00       	call   3ec0 <printf>
    exit();
    26f2:	e8 6b 16 00 00       	call   3d62 <exit>
    26f7:	89 f6                	mov    %esi,%esi
    26f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002700 <bigwrite>:
{
    2700:	55                   	push   %ebp
    2701:	89 e5                	mov    %esp,%ebp
    2703:	56                   	push   %esi
    2704:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2705:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    270a:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    270d:	c7 44 24 04 85 4c 00 	movl   $0x4c85,0x4(%esp)
    2714:	00 
    2715:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271c:	e8 9f 17 00 00       	call   3ec0 <printf>
  unlink("bigwrite");
    2721:	c7 04 24 94 4c 00 00 	movl   $0x4c94,(%esp)
    2728:	e8 85 16 00 00       	call   3db2 <unlink>
    272d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2730:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2737:	00 
    2738:	c7 04 24 94 4c 00 00 	movl   $0x4c94,(%esp)
    273f:	e8 5e 16 00 00       	call   3da2 <open>
    if(fd < 0){
    2744:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2746:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2748:	0f 88 8e 00 00 00    	js     27dc <bigwrite+0xdc>
      int cc = write(fd, buf, sz);
    274e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2752:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    2759:	00 
    275a:	89 04 24             	mov    %eax,(%esp)
    275d:	e8 20 16 00 00       	call   3d82 <write>
      if(cc != sz){
    2762:	39 d8                	cmp    %ebx,%eax
    2764:	75 55                	jne    27bb <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    2766:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    276a:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    2771:	00 
    2772:	89 34 24             	mov    %esi,(%esp)
    2775:	e8 08 16 00 00       	call   3d82 <write>
      if(cc != sz){
    277a:	39 c3                	cmp    %eax,%ebx
    277c:	75 3d                	jne    27bb <bigwrite+0xbb>
    close(fd);
    277e:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2781:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2787:	e8 fe 15 00 00       	call   3d8a <close>
    unlink("bigwrite");
    278c:	c7 04 24 94 4c 00 00 	movl   $0x4c94,(%esp)
    2793:	e8 1a 16 00 00       	call   3db2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2798:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    279e:	75 90                	jne    2730 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    27a0:	c7 44 24 04 c7 4c 00 	movl   $0x4cc7,0x4(%esp)
    27a7:	00 
    27a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27af:	e8 0c 17 00 00       	call   3ec0 <printf>
}
    27b4:	83 c4 10             	add    $0x10,%esp
    27b7:	5b                   	pop    %ebx
    27b8:	5e                   	pop    %esi
    27b9:	5d                   	pop    %ebp
    27ba:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    27bb:	89 44 24 0c          	mov    %eax,0xc(%esp)
    27bf:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    27c3:	c7 44 24 04 b5 4c 00 	movl   $0x4cb5,0x4(%esp)
    27ca:	00 
    27cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27d2:	e8 e9 16 00 00       	call   3ec0 <printf>
        exit();
    27d7:	e8 86 15 00 00       	call   3d62 <exit>
      printf(1, "cannot create bigwrite\n");
    27dc:	c7 44 24 04 9d 4c 00 	movl   $0x4c9d,0x4(%esp)
    27e3:	00 
    27e4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27eb:	e8 d0 16 00 00       	call   3ec0 <printf>
      exit();
    27f0:	e8 6d 15 00 00       	call   3d62 <exit>
    27f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    27f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002800 <bigfile>:
{
    2800:	55                   	push   %ebp
    2801:	89 e5                	mov    %esp,%ebp
    2803:	57                   	push   %edi
    2804:	56                   	push   %esi
    2805:	53                   	push   %ebx
    2806:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    2809:	c7 44 24 04 d4 4c 00 	movl   $0x4cd4,0x4(%esp)
    2810:	00 
    2811:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2818:	e8 a3 16 00 00       	call   3ec0 <printf>
  unlink("bigfile");
    281d:	c7 04 24 f0 4c 00 00 	movl   $0x4cf0,(%esp)
    2824:	e8 89 15 00 00       	call   3db2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2829:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2830:	00 
    2831:	c7 04 24 f0 4c 00 00 	movl   $0x4cf0,(%esp)
    2838:	e8 65 15 00 00       	call   3da2 <open>
  if(fd < 0){
    283d:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    283f:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2841:	0f 88 7f 01 00 00    	js     29c6 <bigfile+0x1c6>
    2847:	31 db                	xor    %ebx,%ebx
    2849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2850:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2857:	00 
    2858:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    285c:	c7 04 24 80 8a 00 00 	movl   $0x8a80,(%esp)
    2863:	e8 88 13 00 00       	call   3bf0 <memset>
    if(write(fd, buf, 600) != 600){
    2868:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    286f:	00 
    2870:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    2877:	00 
    2878:	89 34 24             	mov    %esi,(%esp)
    287b:	e8 02 15 00 00       	call   3d82 <write>
    2880:	3d 58 02 00 00       	cmp    $0x258,%eax
    2885:	0f 85 09 01 00 00    	jne    2994 <bigfile+0x194>
  for(i = 0; i < 20; i++){
    288b:	83 c3 01             	add    $0x1,%ebx
    288e:	83 fb 14             	cmp    $0x14,%ebx
    2891:	75 bd                	jne    2850 <bigfile+0x50>
  close(fd);
    2893:	89 34 24             	mov    %esi,(%esp)
    2896:	e8 ef 14 00 00       	call   3d8a <close>
  fd = open("bigfile", 0);
    289b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    28a2:	00 
    28a3:	c7 04 24 f0 4c 00 00 	movl   $0x4cf0,(%esp)
    28aa:	e8 f3 14 00 00       	call   3da2 <open>
  if(fd < 0){
    28af:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    28b1:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    28b3:	0f 88 f4 00 00 00    	js     29ad <bigfile+0x1ad>
    28b9:	31 db                	xor    %ebx,%ebx
    28bb:	31 ff                	xor    %edi,%edi
    28bd:	eb 2f                	jmp    28ee <bigfile+0xee>
    28bf:	90                   	nop
    if(cc != 300){
    28c0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    28c5:	0f 85 97 00 00 00    	jne    2962 <bigfile+0x162>
    if(buf[0] != i/2 || buf[299] != i/2){
    28cb:	0f be 05 80 8a 00 00 	movsbl 0x8a80,%eax
    28d2:	89 fa                	mov    %edi,%edx
    28d4:	d1 fa                	sar    %edx
    28d6:	39 d0                	cmp    %edx,%eax
    28d8:	75 6f                	jne    2949 <bigfile+0x149>
    28da:	0f be 15 ab 8b 00 00 	movsbl 0x8bab,%edx
    28e1:	39 d0                	cmp    %edx,%eax
    28e3:	75 64                	jne    2949 <bigfile+0x149>
    total += cc;
    28e5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    28eb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    28ee:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    28f5:	00 
    28f6:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    28fd:	00 
    28fe:	89 34 24             	mov    %esi,(%esp)
    2901:	e8 74 14 00 00       	call   3d7a <read>
    if(cc < 0){
    2906:	85 c0                	test   %eax,%eax
    2908:	78 71                	js     297b <bigfile+0x17b>
    if(cc == 0)
    290a:	75 b4                	jne    28c0 <bigfile+0xc0>
  close(fd);
    290c:	89 34 24             	mov    %esi,(%esp)
    290f:	90                   	nop
    2910:	e8 75 14 00 00       	call   3d8a <close>
  if(total != 20*600){
    2915:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    291b:	0f 85 be 00 00 00    	jne    29df <bigfile+0x1df>
  unlink("bigfile");
    2921:	c7 04 24 f0 4c 00 00 	movl   $0x4cf0,(%esp)
    2928:	e8 85 14 00 00       	call   3db2 <unlink>
  printf(1, "bigfile test ok\n");
    292d:	c7 44 24 04 7f 4d 00 	movl   $0x4d7f,0x4(%esp)
    2934:	00 
    2935:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    293c:	e8 7f 15 00 00       	call   3ec0 <printf>
}
    2941:	83 c4 1c             	add    $0x1c,%esp
    2944:	5b                   	pop    %ebx
    2945:	5e                   	pop    %esi
    2946:	5f                   	pop    %edi
    2947:	5d                   	pop    %ebp
    2948:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2949:	c7 44 24 04 4c 4d 00 	movl   $0x4d4c,0x4(%esp)
    2950:	00 
    2951:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2958:	e8 63 15 00 00       	call   3ec0 <printf>
      exit();
    295d:	e8 00 14 00 00       	call   3d62 <exit>
      printf(1, "short read bigfile\n");
    2962:	c7 44 24 04 38 4d 00 	movl   $0x4d38,0x4(%esp)
    2969:	00 
    296a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2971:	e8 4a 15 00 00       	call   3ec0 <printf>
      exit();
    2976:	e8 e7 13 00 00       	call   3d62 <exit>
      printf(1, "read bigfile failed\n");
    297b:	c7 44 24 04 23 4d 00 	movl   $0x4d23,0x4(%esp)
    2982:	00 
    2983:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    298a:	e8 31 15 00 00       	call   3ec0 <printf>
      exit();
    298f:	e8 ce 13 00 00       	call   3d62 <exit>
      printf(1, "write bigfile failed\n");
    2994:	c7 44 24 04 f8 4c 00 	movl   $0x4cf8,0x4(%esp)
    299b:	00 
    299c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a3:	e8 18 15 00 00       	call   3ec0 <printf>
      exit();
    29a8:	e8 b5 13 00 00       	call   3d62 <exit>
    printf(1, "cannot open bigfile\n");
    29ad:	c7 44 24 04 0e 4d 00 	movl   $0x4d0e,0x4(%esp)
    29b4:	00 
    29b5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29bc:	e8 ff 14 00 00       	call   3ec0 <printf>
    exit();
    29c1:	e8 9c 13 00 00       	call   3d62 <exit>
    printf(1, "cannot create bigfile");
    29c6:	c7 44 24 04 e2 4c 00 	movl   $0x4ce2,0x4(%esp)
    29cd:	00 
    29ce:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29d5:	e8 e6 14 00 00       	call   3ec0 <printf>
    exit();
    29da:	e8 83 13 00 00       	call   3d62 <exit>
    printf(1, "read bigfile wrong total\n");
    29df:	c7 44 24 04 65 4d 00 	movl   $0x4d65,0x4(%esp)
    29e6:	00 
    29e7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29ee:	e8 cd 14 00 00       	call   3ec0 <printf>
    exit();
    29f3:	e8 6a 13 00 00       	call   3d62 <exit>
    29f8:	90                   	nop
    29f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002a00 <fourteen>:
{
    2a00:	55                   	push   %ebp
    2a01:	89 e5                	mov    %esp,%ebp
    2a03:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2a06:	c7 44 24 04 90 4d 00 	movl   $0x4d90,0x4(%esp)
    2a0d:	00 
    2a0e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a15:	e8 a6 14 00 00       	call   3ec0 <printf>
  if(mkdir("12345678901234") != 0){
    2a1a:	c7 04 24 cb 4d 00 00 	movl   $0x4dcb,(%esp)
    2a21:	e8 a4 13 00 00       	call   3dca <mkdir>
    2a26:	85 c0                	test   %eax,%eax
    2a28:	0f 85 92 00 00 00    	jne    2ac0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2a2e:	c7 04 24 88 55 00 00 	movl   $0x5588,(%esp)
    2a35:	e8 90 13 00 00       	call   3dca <mkdir>
    2a3a:	85 c0                	test   %eax,%eax
    2a3c:	0f 85 fb 00 00 00    	jne    2b3d <fourteen+0x13d>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2a42:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2a49:	00 
    2a4a:	c7 04 24 d8 55 00 00 	movl   $0x55d8,(%esp)
    2a51:	e8 4c 13 00 00       	call   3da2 <open>
  if(fd < 0){
    2a56:	85 c0                	test   %eax,%eax
    2a58:	0f 88 c6 00 00 00    	js     2b24 <fourteen+0x124>
  close(fd);
    2a5e:	89 04 24             	mov    %eax,(%esp)
    2a61:	e8 24 13 00 00       	call   3d8a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2a66:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a6d:	00 
    2a6e:	c7 04 24 48 56 00 00 	movl   $0x5648,(%esp)
    2a75:	e8 28 13 00 00       	call   3da2 <open>
  if(fd < 0){
    2a7a:	85 c0                	test   %eax,%eax
    2a7c:	0f 88 89 00 00 00    	js     2b0b <fourteen+0x10b>
  close(fd);
    2a82:	89 04 24             	mov    %eax,(%esp)
    2a85:	e8 00 13 00 00       	call   3d8a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2a8a:	c7 04 24 bc 4d 00 00 	movl   $0x4dbc,(%esp)
    2a91:	e8 34 13 00 00       	call   3dca <mkdir>
    2a96:	85 c0                	test   %eax,%eax
    2a98:	74 58                	je     2af2 <fourteen+0xf2>
  if(mkdir("123456789012345/12345678901234") == 0){
    2a9a:	c7 04 24 e4 56 00 00 	movl   $0x56e4,(%esp)
    2aa1:	e8 24 13 00 00       	call   3dca <mkdir>
    2aa6:	85 c0                	test   %eax,%eax
    2aa8:	74 2f                	je     2ad9 <fourteen+0xd9>
  printf(1, "fourteen ok\n");
    2aaa:	c7 44 24 04 da 4d 00 	movl   $0x4dda,0x4(%esp)
    2ab1:	00 
    2ab2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ab9:	e8 02 14 00 00       	call   3ec0 <printf>
}
    2abe:	c9                   	leave  
    2abf:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2ac0:	c7 44 24 04 9f 4d 00 	movl   $0x4d9f,0x4(%esp)
    2ac7:	00 
    2ac8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2acf:	e8 ec 13 00 00       	call   3ec0 <printf>
    exit();
    2ad4:	e8 89 12 00 00       	call   3d62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2ad9:	c7 44 24 04 04 57 00 	movl   $0x5704,0x4(%esp)
    2ae0:	00 
    2ae1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ae8:	e8 d3 13 00 00       	call   3ec0 <printf>
    exit();
    2aed:	e8 70 12 00 00       	call   3d62 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2af2:	c7 44 24 04 b4 56 00 	movl   $0x56b4,0x4(%esp)
    2af9:	00 
    2afa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b01:	e8 ba 13 00 00       	call   3ec0 <printf>
    exit();
    2b06:	e8 57 12 00 00       	call   3d62 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2b0b:	c7 44 24 04 78 56 00 	movl   $0x5678,0x4(%esp)
    2b12:	00 
    2b13:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b1a:	e8 a1 13 00 00       	call   3ec0 <printf>
    exit();
    2b1f:	e8 3e 12 00 00       	call   3d62 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2b24:	c7 44 24 04 08 56 00 	movl   $0x5608,0x4(%esp)
    2b2b:	00 
    2b2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b33:	e8 88 13 00 00       	call   3ec0 <printf>
    exit();
    2b38:	e8 25 12 00 00       	call   3d62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2b3d:	c7 44 24 04 a8 55 00 	movl   $0x55a8,0x4(%esp)
    2b44:	00 
    2b45:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b4c:	e8 6f 13 00 00       	call   3ec0 <printf>
    exit();
    2b51:	e8 0c 12 00 00       	call   3d62 <exit>
    2b56:	8d 76 00             	lea    0x0(%esi),%esi
    2b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002b60 <rmdot>:
{
    2b60:	55                   	push   %ebp
    2b61:	89 e5                	mov    %esp,%ebp
    2b63:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2b66:	c7 44 24 04 e7 4d 00 	movl   $0x4de7,0x4(%esp)
    2b6d:	00 
    2b6e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b75:	e8 46 13 00 00       	call   3ec0 <printf>
  if(mkdir("dots") != 0){
    2b7a:	c7 04 24 f3 4d 00 00 	movl   $0x4df3,(%esp)
    2b81:	e8 44 12 00 00       	call   3dca <mkdir>
    2b86:	85 c0                	test   %eax,%eax
    2b88:	0f 85 9a 00 00 00    	jne    2c28 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2b8e:	c7 04 24 f3 4d 00 00 	movl   $0x4df3,(%esp)
    2b95:	e8 38 12 00 00       	call   3dd2 <chdir>
    2b9a:	85 c0                	test   %eax,%eax
    2b9c:	0f 85 35 01 00 00    	jne    2cd7 <rmdot+0x177>
  if(unlink(".") == 0){
    2ba2:	c7 04 24 9e 4a 00 00 	movl   $0x4a9e,(%esp)
    2ba9:	e8 04 12 00 00       	call   3db2 <unlink>
    2bae:	85 c0                	test   %eax,%eax
    2bb0:	0f 84 08 01 00 00    	je     2cbe <rmdot+0x15e>
  if(unlink("..") == 0){
    2bb6:	c7 04 24 9d 4a 00 00 	movl   $0x4a9d,(%esp)
    2bbd:	e8 f0 11 00 00       	call   3db2 <unlink>
    2bc2:	85 c0                	test   %eax,%eax
    2bc4:	0f 84 db 00 00 00    	je     2ca5 <rmdot+0x145>
  if(chdir("/") != 0){
    2bca:	c7 04 24 71 42 00 00 	movl   $0x4271,(%esp)
    2bd1:	e8 fc 11 00 00       	call   3dd2 <chdir>
    2bd6:	85 c0                	test   %eax,%eax
    2bd8:	0f 85 ae 00 00 00    	jne    2c8c <rmdot+0x12c>
  if(unlink("dots/.") == 0){
    2bde:	c7 04 24 3b 4e 00 00 	movl   $0x4e3b,(%esp)
    2be5:	e8 c8 11 00 00       	call   3db2 <unlink>
    2bea:	85 c0                	test   %eax,%eax
    2bec:	0f 84 81 00 00 00    	je     2c73 <rmdot+0x113>
  if(unlink("dots/..") == 0){
    2bf2:	c7 04 24 59 4e 00 00 	movl   $0x4e59,(%esp)
    2bf9:	e8 b4 11 00 00       	call   3db2 <unlink>
    2bfe:	85 c0                	test   %eax,%eax
    2c00:	74 58                	je     2c5a <rmdot+0xfa>
  if(unlink("dots") != 0){
    2c02:	c7 04 24 f3 4d 00 00 	movl   $0x4df3,(%esp)
    2c09:	e8 a4 11 00 00       	call   3db2 <unlink>
    2c0e:	85 c0                	test   %eax,%eax
    2c10:	75 2f                	jne    2c41 <rmdot+0xe1>
  printf(1, "rmdot ok\n");
    2c12:	c7 44 24 04 8e 4e 00 	movl   $0x4e8e,0x4(%esp)
    2c19:	00 
    2c1a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c21:	e8 9a 12 00 00       	call   3ec0 <printf>
}
    2c26:	c9                   	leave  
    2c27:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2c28:	c7 44 24 04 f8 4d 00 	movl   $0x4df8,0x4(%esp)
    2c2f:	00 
    2c30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c37:	e8 84 12 00 00       	call   3ec0 <printf>
    exit();
    2c3c:	e8 21 11 00 00       	call   3d62 <exit>
    printf(1, "unlink dots failed!\n");
    2c41:	c7 44 24 04 79 4e 00 	movl   $0x4e79,0x4(%esp)
    2c48:	00 
    2c49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c50:	e8 6b 12 00 00       	call   3ec0 <printf>
    exit();
    2c55:	e8 08 11 00 00       	call   3d62 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2c5a:	c7 44 24 04 61 4e 00 	movl   $0x4e61,0x4(%esp)
    2c61:	00 
    2c62:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c69:	e8 52 12 00 00       	call   3ec0 <printf>
    exit();
    2c6e:	e8 ef 10 00 00       	call   3d62 <exit>
    printf(1, "unlink dots/. worked!\n");
    2c73:	c7 44 24 04 42 4e 00 	movl   $0x4e42,0x4(%esp)
    2c7a:	00 
    2c7b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c82:	e8 39 12 00 00       	call   3ec0 <printf>
    exit();
    2c87:	e8 d6 10 00 00       	call   3d62 <exit>
    printf(1, "chdir / failed\n");
    2c8c:	c7 44 24 04 73 42 00 	movl   $0x4273,0x4(%esp)
    2c93:	00 
    2c94:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c9b:	e8 20 12 00 00       	call   3ec0 <printf>
    exit();
    2ca0:	e8 bd 10 00 00       	call   3d62 <exit>
    printf(1, "rm .. worked!\n");
    2ca5:	c7 44 24 04 2c 4e 00 	movl   $0x4e2c,0x4(%esp)
    2cac:	00 
    2cad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cb4:	e8 07 12 00 00       	call   3ec0 <printf>
    exit();
    2cb9:	e8 a4 10 00 00       	call   3d62 <exit>
    printf(1, "rm . worked!\n");
    2cbe:	c7 44 24 04 1e 4e 00 	movl   $0x4e1e,0x4(%esp)
    2cc5:	00 
    2cc6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ccd:	e8 ee 11 00 00       	call   3ec0 <printf>
    exit();
    2cd2:	e8 8b 10 00 00       	call   3d62 <exit>
    printf(1, "chdir dots failed\n");
    2cd7:	c7 44 24 04 0b 4e 00 	movl   $0x4e0b,0x4(%esp)
    2cde:	00 
    2cdf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ce6:	e8 d5 11 00 00       	call   3ec0 <printf>
    exit();
    2ceb:	e8 72 10 00 00       	call   3d62 <exit>

00002cf0 <dirfile>:
{
    2cf0:	55                   	push   %ebp
    2cf1:	89 e5                	mov    %esp,%ebp
    2cf3:	53                   	push   %ebx
    2cf4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2cf7:	c7 44 24 04 98 4e 00 	movl   $0x4e98,0x4(%esp)
    2cfe:	00 
    2cff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d06:	e8 b5 11 00 00       	call   3ec0 <printf>
  fd = open("dirfile", O_CREATE);
    2d0b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2d12:	00 
    2d13:	c7 04 24 a5 4e 00 00 	movl   $0x4ea5,(%esp)
    2d1a:	e8 83 10 00 00       	call   3da2 <open>
  if(fd < 0){
    2d1f:	85 c0                	test   %eax,%eax
    2d21:	0f 88 4e 01 00 00    	js     2e75 <dirfile+0x185>
  close(fd);
    2d27:	89 04 24             	mov    %eax,(%esp)
    2d2a:	e8 5b 10 00 00       	call   3d8a <close>
  if(chdir("dirfile") == 0){
    2d2f:	c7 04 24 a5 4e 00 00 	movl   $0x4ea5,(%esp)
    2d36:	e8 97 10 00 00       	call   3dd2 <chdir>
    2d3b:	85 c0                	test   %eax,%eax
    2d3d:	0f 84 19 01 00 00    	je     2e5c <dirfile+0x16c>
  fd = open("dirfile/xx", 0);
    2d43:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2d4a:	00 
    2d4b:	c7 04 24 de 4e 00 00 	movl   $0x4ede,(%esp)
    2d52:	e8 4b 10 00 00       	call   3da2 <open>
  if(fd >= 0){
    2d57:	85 c0                	test   %eax,%eax
    2d59:	0f 89 e4 00 00 00    	jns    2e43 <dirfile+0x153>
  fd = open("dirfile/xx", O_CREATE);
    2d5f:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2d66:	00 
    2d67:	c7 04 24 de 4e 00 00 	movl   $0x4ede,(%esp)
    2d6e:	e8 2f 10 00 00       	call   3da2 <open>
  if(fd >= 0){
    2d73:	85 c0                	test   %eax,%eax
    2d75:	0f 89 c8 00 00 00    	jns    2e43 <dirfile+0x153>
  if(mkdir("dirfile/xx") == 0){
    2d7b:	c7 04 24 de 4e 00 00 	movl   $0x4ede,(%esp)
    2d82:	e8 43 10 00 00       	call   3dca <mkdir>
    2d87:	85 c0                	test   %eax,%eax
    2d89:	0f 84 7c 01 00 00    	je     2f0b <dirfile+0x21b>
  if(unlink("dirfile/xx") == 0){
    2d8f:	c7 04 24 de 4e 00 00 	movl   $0x4ede,(%esp)
    2d96:	e8 17 10 00 00       	call   3db2 <unlink>
    2d9b:	85 c0                	test   %eax,%eax
    2d9d:	0f 84 4f 01 00 00    	je     2ef2 <dirfile+0x202>
  if(link("README", "dirfile/xx") == 0){
    2da3:	c7 44 24 04 de 4e 00 	movl   $0x4ede,0x4(%esp)
    2daa:	00 
    2dab:	c7 04 24 42 4f 00 00 	movl   $0x4f42,(%esp)
    2db2:	e8 0b 10 00 00       	call   3dc2 <link>
    2db7:	85 c0                	test   %eax,%eax
    2db9:	0f 84 1a 01 00 00    	je     2ed9 <dirfile+0x1e9>
  if(unlink("dirfile") != 0){
    2dbf:	c7 04 24 a5 4e 00 00 	movl   $0x4ea5,(%esp)
    2dc6:	e8 e7 0f 00 00       	call   3db2 <unlink>
    2dcb:	85 c0                	test   %eax,%eax
    2dcd:	0f 85 ed 00 00 00    	jne    2ec0 <dirfile+0x1d0>
  fd = open(".", O_RDWR);
    2dd3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2dda:	00 
    2ddb:	c7 04 24 9e 4a 00 00 	movl   $0x4a9e,(%esp)
    2de2:	e8 bb 0f 00 00       	call   3da2 <open>
  if(fd >= 0){
    2de7:	85 c0                	test   %eax,%eax
    2de9:	0f 89 b8 00 00 00    	jns    2ea7 <dirfile+0x1b7>
  fd = open(".", 0);
    2def:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2df6:	00 
    2df7:	c7 04 24 9e 4a 00 00 	movl   $0x4a9e,(%esp)
    2dfe:	e8 9f 0f 00 00       	call   3da2 <open>
  if(write(fd, "x", 1) > 0){
    2e03:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    2e0a:	00 
    2e0b:	c7 44 24 04 81 4b 00 	movl   $0x4b81,0x4(%esp)
    2e12:	00 
    2e13:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    2e16:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2e18:	e8 65 0f 00 00       	call   3d82 <write>
    2e1d:	85 c0                	test   %eax,%eax
    2e1f:	7f 6d                	jg     2e8e <dirfile+0x19e>
  close(fd);
    2e21:	89 1c 24             	mov    %ebx,(%esp)
    2e24:	e8 61 0f 00 00       	call   3d8a <close>
  printf(1, "dir vs file OK\n");
    2e29:	c7 44 24 04 75 4f 00 	movl   $0x4f75,0x4(%esp)
    2e30:	00 
    2e31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e38:	e8 83 10 00 00       	call   3ec0 <printf>
}
    2e3d:	83 c4 14             	add    $0x14,%esp
    2e40:	5b                   	pop    %ebx
    2e41:	5d                   	pop    %ebp
    2e42:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2e43:	c7 44 24 04 e9 4e 00 	movl   $0x4ee9,0x4(%esp)
    2e4a:	00 
    2e4b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e52:	e8 69 10 00 00       	call   3ec0 <printf>
    exit();
    2e57:	e8 06 0f 00 00       	call   3d62 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2e5c:	c7 44 24 04 c4 4e 00 	movl   $0x4ec4,0x4(%esp)
    2e63:	00 
    2e64:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e6b:	e8 50 10 00 00       	call   3ec0 <printf>
    exit();
    2e70:	e8 ed 0e 00 00       	call   3d62 <exit>
    printf(1, "create dirfile failed\n");
    2e75:	c7 44 24 04 ad 4e 00 	movl   $0x4ead,0x4(%esp)
    2e7c:	00 
    2e7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e84:	e8 37 10 00 00       	call   3ec0 <printf>
    exit();
    2e89:	e8 d4 0e 00 00       	call   3d62 <exit>
    printf(1, "write . succeeded!\n");
    2e8e:	c7 44 24 04 61 4f 00 	movl   $0x4f61,0x4(%esp)
    2e95:	00 
    2e96:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e9d:	e8 1e 10 00 00       	call   3ec0 <printf>
    exit();
    2ea2:	e8 bb 0e 00 00       	call   3d62 <exit>
    printf(1, "open . for writing succeeded!\n");
    2ea7:	c7 44 24 04 58 57 00 	movl   $0x5758,0x4(%esp)
    2eae:	00 
    2eaf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2eb6:	e8 05 10 00 00       	call   3ec0 <printf>
    exit();
    2ebb:	e8 a2 0e 00 00       	call   3d62 <exit>
    printf(1, "unlink dirfile failed!\n");
    2ec0:	c7 44 24 04 49 4f 00 	movl   $0x4f49,0x4(%esp)
    2ec7:	00 
    2ec8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ecf:	e8 ec 0f 00 00       	call   3ec0 <printf>
    exit();
    2ed4:	e8 89 0e 00 00       	call   3d62 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2ed9:	c7 44 24 04 38 57 00 	movl   $0x5738,0x4(%esp)
    2ee0:	00 
    2ee1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee8:	e8 d3 0f 00 00       	call   3ec0 <printf>
    exit();
    2eed:	e8 70 0e 00 00       	call   3d62 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2ef2:	c7 44 24 04 24 4f 00 	movl   $0x4f24,0x4(%esp)
    2ef9:	00 
    2efa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f01:	e8 ba 0f 00 00       	call   3ec0 <printf>
    exit();
    2f06:	e8 57 0e 00 00       	call   3d62 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2f0b:	c7 44 24 04 07 4f 00 	movl   $0x4f07,0x4(%esp)
    2f12:	00 
    2f13:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f1a:	e8 a1 0f 00 00       	call   3ec0 <printf>
    exit();
    2f1f:	e8 3e 0e 00 00       	call   3d62 <exit>
    2f24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2f2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002f30 <iref>:
{
    2f30:	55                   	push   %ebp
    2f31:	89 e5                	mov    %esp,%ebp
    2f33:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2f34:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2f39:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    2f3c:	c7 44 24 04 85 4f 00 	movl   $0x4f85,0x4(%esp)
    2f43:	00 
    2f44:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f4b:	e8 70 0f 00 00       	call   3ec0 <printf>
    if(mkdir("irefd") != 0){
    2f50:	c7 04 24 96 4f 00 00 	movl   $0x4f96,(%esp)
    2f57:	e8 6e 0e 00 00       	call   3dca <mkdir>
    2f5c:	85 c0                	test   %eax,%eax
    2f5e:	0f 85 af 00 00 00    	jne    3013 <iref+0xe3>
    if(chdir("irefd") != 0){
    2f64:	c7 04 24 96 4f 00 00 	movl   $0x4f96,(%esp)
    2f6b:	e8 62 0e 00 00       	call   3dd2 <chdir>
    2f70:	85 c0                	test   %eax,%eax
    2f72:	0f 85 b4 00 00 00    	jne    302c <iref+0xfc>
    mkdir("");
    2f78:	c7 04 24 4b 46 00 00 	movl   $0x464b,(%esp)
    2f7f:	e8 46 0e 00 00       	call   3dca <mkdir>
    link("README", "");
    2f84:	c7 44 24 04 4b 46 00 	movl   $0x464b,0x4(%esp)
    2f8b:	00 
    2f8c:	c7 04 24 42 4f 00 00 	movl   $0x4f42,(%esp)
    2f93:	e8 2a 0e 00 00       	call   3dc2 <link>
    fd = open("", O_CREATE);
    2f98:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f9f:	00 
    2fa0:	c7 04 24 4b 46 00 00 	movl   $0x464b,(%esp)
    2fa7:	e8 f6 0d 00 00       	call   3da2 <open>
    if(fd >= 0)
    2fac:	85 c0                	test   %eax,%eax
    2fae:	78 08                	js     2fb8 <iref+0x88>
      close(fd);
    2fb0:	89 04 24             	mov    %eax,(%esp)
    2fb3:	e8 d2 0d 00 00       	call   3d8a <close>
    fd = open("xx", O_CREATE);
    2fb8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2fbf:	00 
    2fc0:	c7 04 24 80 4b 00 00 	movl   $0x4b80,(%esp)
    2fc7:	e8 d6 0d 00 00       	call   3da2 <open>
    if(fd >= 0)
    2fcc:	85 c0                	test   %eax,%eax
    2fce:	78 08                	js     2fd8 <iref+0xa8>
      close(fd);
    2fd0:	89 04 24             	mov    %eax,(%esp)
    2fd3:	e8 b2 0d 00 00       	call   3d8a <close>
    unlink("xx");
    2fd8:	c7 04 24 80 4b 00 00 	movl   $0x4b80,(%esp)
    2fdf:	e8 ce 0d 00 00       	call   3db2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2fe4:	83 eb 01             	sub    $0x1,%ebx
    2fe7:	0f 85 63 ff ff ff    	jne    2f50 <iref+0x20>
  chdir("/");
    2fed:	c7 04 24 71 42 00 00 	movl   $0x4271,(%esp)
    2ff4:	e8 d9 0d 00 00       	call   3dd2 <chdir>
  printf(1, "empty file name OK\n");
    2ff9:	c7 44 24 04 c4 4f 00 	movl   $0x4fc4,0x4(%esp)
    3000:	00 
    3001:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3008:	e8 b3 0e 00 00       	call   3ec0 <printf>
}
    300d:	83 c4 14             	add    $0x14,%esp
    3010:	5b                   	pop    %ebx
    3011:	5d                   	pop    %ebp
    3012:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3013:	c7 44 24 04 9c 4f 00 	movl   $0x4f9c,0x4(%esp)
    301a:	00 
    301b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3022:	e8 99 0e 00 00       	call   3ec0 <printf>
      exit();
    3027:	e8 36 0d 00 00       	call   3d62 <exit>
      printf(1, "chdir irefd failed\n");
    302c:	c7 44 24 04 b0 4f 00 	movl   $0x4fb0,0x4(%esp)
    3033:	00 
    3034:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    303b:	e8 80 0e 00 00       	call   3ec0 <printf>
      exit();
    3040:	e8 1d 0d 00 00       	call   3d62 <exit>
    3045:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003050 <forktest>:
{
    3050:	55                   	push   %ebp
    3051:	89 e5                	mov    %esp,%ebp
    3053:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3054:	31 db                	xor    %ebx,%ebx
{
    3056:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    3059:	c7 44 24 04 d8 4f 00 	movl   $0x4fd8,0x4(%esp)
    3060:	00 
    3061:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3068:	e8 53 0e 00 00       	call   3ec0 <printf>
    306d:	eb 13                	jmp    3082 <forktest+0x32>
    306f:	90                   	nop
    if(pid == 0)
    3070:	0f 84 8f 00 00 00    	je     3105 <forktest+0xb5>
  for(n=0; n<1000; n++){
    3076:	83 c3 01             	add    $0x1,%ebx
    3079:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    307f:	90                   	nop
    3080:	74 56                	je     30d8 <forktest+0x88>
    pid = fork();
    3082:	e8 d3 0c 00 00       	call   3d5a <fork>
    if(pid < 0)
    3087:	85 c0                	test   %eax,%eax
    3089:	79 e5                	jns    3070 <forktest+0x20>
  for(; n > 0; n--){
    308b:	85 db                	test   %ebx,%ebx
    308d:	8d 76 00             	lea    0x0(%esi),%esi
    3090:	74 1b                	je     30ad <forktest+0x5d>
    3092:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3098:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    309f:	e8 c6 0c 00 00       	call   3d6a <wait>
    30a4:	85 c0                	test   %eax,%eax
    30a6:	78 49                	js     30f1 <forktest+0xa1>
  for(; n > 0; n--){
    30a8:	83 eb 01             	sub    $0x1,%ebx
    30ab:	75 eb                	jne    3098 <forktest+0x48>
  if(wait(0) != -1){
    30ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b4:	e8 b1 0c 00 00       	call   3d6a <wait>
    30b9:	83 f8 ff             	cmp    $0xffffffff,%eax
    30bc:	75 4c                	jne    310a <forktest+0xba>
  printf(1, "fork test OK\n");
    30be:	c7 44 24 04 0a 50 00 	movl   $0x500a,0x4(%esp)
    30c5:	00 
    30c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30cd:	e8 ee 0d 00 00       	call   3ec0 <printf>
}
    30d2:	83 c4 14             	add    $0x14,%esp
    30d5:	5b                   	pop    %ebx
    30d6:	5d                   	pop    %ebp
    30d7:	c3                   	ret    
    printf(1, "fork claimed to work 1000 times!\n");
    30d8:	c7 44 24 04 78 57 00 	movl   $0x5778,0x4(%esp)
    30df:	00 
    30e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e7:	e8 d4 0d 00 00       	call   3ec0 <printf>
    exit();
    30ec:	e8 71 0c 00 00       	call   3d62 <exit>
      printf(1, "wait stopped early\n");
    30f1:	c7 44 24 04 e3 4f 00 	movl   $0x4fe3,0x4(%esp)
    30f8:	00 
    30f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3100:	e8 bb 0d 00 00       	call   3ec0 <printf>
      exit();
    3105:	e8 58 0c 00 00       	call   3d62 <exit>
    printf(1, "wait got too many\n");
    310a:	c7 44 24 04 f7 4f 00 	movl   $0x4ff7,0x4(%esp)
    3111:	00 
    3112:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3119:	e8 a2 0d 00 00       	call   3ec0 <printf>
    exit();
    311e:	e8 3f 0c 00 00       	call   3d62 <exit>
    3123:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003130 <sbrktest>:
{
    3130:	55                   	push   %ebp
    3131:	89 e5                	mov    %esp,%ebp
    3133:	57                   	push   %edi
    3134:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    3135:	31 f6                	xor    %esi,%esi
{
    3137:	53                   	push   %ebx
    3138:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    313b:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3140:	c7 44 24 04 18 50 00 	movl   $0x5018,0x4(%esp)
    3147:	00 
    3148:	89 04 24             	mov    %eax,(%esp)
    314b:	e8 70 0d 00 00       	call   3ec0 <printf>
  oldbrk = sbrk(0);
    3150:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3157:	e8 8e 0c 00 00       	call   3dea <sbrk>
  a = sbrk(0);
    315c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3163:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3166:	e8 7f 0c 00 00       	call   3dea <sbrk>
    316b:	89 c3                	mov    %eax,%ebx
    316d:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    3170:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3177:	e8 6e 0c 00 00       	call   3dea <sbrk>
    if(b != a){
    317c:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    317e:	89 c7                	mov    %eax,%edi
    if(b != a){
    3180:	0f 85 90 02 00 00    	jne    3416 <sbrktest+0x2e6>
  for(i = 0; i < 5000; i++){
    3186:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    3189:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    318c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    3190:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3196:	75 d8                	jne    3170 <sbrktest+0x40>
  pid = fork();
    3198:	e8 bd 0b 00 00       	call   3d5a <fork>
  if(pid < 0){
    319d:	85 c0                	test   %eax,%eax
  pid = fork();
    319f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    31a1:	0f 88 dd 03 00 00    	js     3584 <sbrktest+0x454>
  c = sbrk(1);
    31a7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31ae:	e8 37 0c 00 00       	call   3dea <sbrk>
  c = sbrk(1);
    31b3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31ba:	e8 2b 0c 00 00       	call   3dea <sbrk>
  if(c != a + 1){
    31bf:	8d 57 02             	lea    0x2(%edi),%edx
    31c2:	39 d0                	cmp    %edx,%eax
    31c4:	0f 85 a0 03 00 00    	jne    356a <sbrktest+0x43a>
  if(pid == 0)
    31ca:	85 db                	test   %ebx,%ebx
    31cc:	0f 84 93 03 00 00    	je     3565 <sbrktest+0x435>
  wait(0);
    31d2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31d9:	e8 8c 0b 00 00       	call   3d6a <wait>
  a = sbrk(0);
    31de:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31e5:	e8 00 0c 00 00       	call   3dea <sbrk>
  amt = (BIG) - (uint)a;
    31ea:	ba 00 00 40 06       	mov    $0x6400000,%edx
    31ef:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    31f1:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    31f3:	89 14 24             	mov    %edx,(%esp)
    31f6:	e8 ef 0b 00 00       	call   3dea <sbrk>
  if (p != a) {
    31fb:	39 d8                	cmp    %ebx,%eax
    31fd:	0f 85 4d 03 00 00    	jne    3550 <sbrktest+0x420>
  *lastaddr = 99;
    3203:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    320a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3211:	e8 d4 0b 00 00       	call   3dea <sbrk>
  c = sbrk(-4096);
    3216:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    321d:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    321f:	e8 c6 0b 00 00       	call   3dea <sbrk>
  if(c == (char*)0xffffffff){
    3224:	83 f8 ff             	cmp    $0xffffffff,%eax
    3227:	0f 84 09 03 00 00    	je     3536 <sbrktest+0x406>
  c = sbrk(0);
    322d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3234:	e8 b1 0b 00 00       	call   3dea <sbrk>
  if(c != a - 4096){
    3239:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    323f:	39 d0                	cmp    %edx,%eax
    3241:	0f 85 cd 02 00 00    	jne    3514 <sbrktest+0x3e4>
  a = sbrk(0);
    3247:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    324e:	e8 97 0b 00 00       	call   3dea <sbrk>
  c = sbrk(4096);
    3253:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    325a:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    325c:	e8 89 0b 00 00       	call   3dea <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3261:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    3263:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    3265:	0f 85 87 02 00 00    	jne    34f2 <sbrktest+0x3c2>
    326b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3272:	e8 73 0b 00 00       	call   3dea <sbrk>
    3277:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    327d:	39 d0                	cmp    %edx,%eax
    327f:	0f 85 6d 02 00 00    	jne    34f2 <sbrktest+0x3c2>
  if(*lastaddr == 99){
    3285:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    328c:	0f 84 46 02 00 00    	je     34d8 <sbrktest+0x3a8>
  a = sbrk(0);
    3292:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3299:	e8 4c 0b 00 00       	call   3dea <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    329e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    32a5:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    32a7:	e8 3e 0b 00 00       	call   3dea <sbrk>
    32ac:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    32af:	29 c1                	sub    %eax,%ecx
    32b1:	89 0c 24             	mov    %ecx,(%esp)
    32b4:	e8 31 0b 00 00       	call   3dea <sbrk>
  if(c != a){
    32b9:	39 d8                	cmp    %ebx,%eax
    32bb:	0f 85 f5 01 00 00    	jne    34b6 <sbrktest+0x386>
    32c1:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    32c6:	66 90                	xchg   %ax,%ax
    ppid = getpid();
    32c8:	e8 15 0b 00 00       	call   3de2 <getpid>
    32cd:	89 c6                	mov    %eax,%esi
    pid = fork();
    32cf:	e8 86 0a 00 00       	call   3d5a <fork>
    if(pid < 0){
    32d4:	85 c0                	test   %eax,%eax
    32d6:	0f 88 c0 01 00 00    	js     349c <sbrktest+0x36c>
    32dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    32e0:	0f 84 89 01 00 00    	je     346f <sbrktest+0x33f>
    wait(0);
    32e6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    32ed:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(0);
    32f3:	e8 72 0a 00 00       	call   3d6a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    32f8:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    32fe:	75 c8                	jne    32c8 <sbrktest+0x198>
  if(pipe(fds) != 0){
    3300:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3303:	89 04 24             	mov    %eax,(%esp)
    3306:	e8 67 0a 00 00       	call   3d72 <pipe>
    330b:	85 c0                	test   %eax,%eax
    330d:	0f 85 43 01 00 00    	jne    3456 <sbrktest+0x326>
    3313:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3316:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    3319:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    331c:	e8 39 0a 00 00       	call   3d5a <fork>
    3321:	85 c0                	test   %eax,%eax
    3323:	89 06                	mov    %eax,(%esi)
    3325:	0f 84 a6 00 00 00    	je     33d1 <sbrktest+0x2a1>
    if(pids[i] != -1)
    332b:	83 f8 ff             	cmp    $0xffffffff,%eax
    332e:	74 17                	je     3347 <sbrktest+0x217>
      read(fds[0], &scratch, 1);
    3330:	8b 45 b8             	mov    -0x48(%ebp),%eax
    3333:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    333a:	00 
    333b:	89 7c 24 04          	mov    %edi,0x4(%esp)
    333f:	89 04 24             	mov    %eax,(%esp)
    3342:	e8 33 0a 00 00       	call   3d7a <read>
    3347:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    334a:	39 de                	cmp    %ebx,%esi
    334c:	75 ce                	jne    331c <sbrktest+0x1ec>
  c = sbrk(4096);
    334e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3355:	8d 75 c0             	lea    -0x40(%ebp),%esi
    3358:	e8 8d 0a 00 00       	call   3dea <sbrk>
    335d:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    335f:	8b 06                	mov    (%esi),%eax
    3361:	83 f8 ff             	cmp    $0xffffffff,%eax
    3364:	74 14                	je     337a <sbrktest+0x24a>
    kill(pids[i]);
    3366:	89 04 24             	mov    %eax,(%esp)
    3369:	e8 24 0a 00 00       	call   3d92 <kill>
    wait(0);
    336e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3375:	e8 f0 09 00 00       	call   3d6a <wait>
    337a:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    337d:	39 f3                	cmp    %esi,%ebx
    337f:	75 de                	jne    335f <sbrktest+0x22f>
  if(c == (char*)0xffffffff){
    3381:	83 ff ff             	cmp    $0xffffffff,%edi
    3384:	0f 84 b2 00 00 00    	je     343c <sbrktest+0x30c>
  if(sbrk(0) > oldbrk)
    338a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3391:	e8 54 0a 00 00       	call   3dea <sbrk>
    3396:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3399:	73 19                	jae    33b4 <sbrktest+0x284>
    sbrk(-(sbrk(0) - oldbrk));
    339b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33a2:	e8 43 0a 00 00       	call   3dea <sbrk>
    33a7:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    33aa:	29 c7                	sub    %eax,%edi
    33ac:	89 3c 24             	mov    %edi,(%esp)
    33af:	e8 36 0a 00 00       	call   3dea <sbrk>
  printf(stdout, "sbrk test OK\n");
    33b4:	a1 a4 62 00 00       	mov    0x62a4,%eax
    33b9:	c7 44 24 04 c0 50 00 	movl   $0x50c0,0x4(%esp)
    33c0:	00 
    33c1:	89 04 24             	mov    %eax,(%esp)
    33c4:	e8 f7 0a 00 00       	call   3ec0 <printf>
}
    33c9:	83 c4 6c             	add    $0x6c,%esp
    33cc:	5b                   	pop    %ebx
    33cd:	5e                   	pop    %esi
    33ce:	5f                   	pop    %edi
    33cf:	5d                   	pop    %ebp
    33d0:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    33d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33d8:	e8 0d 0a 00 00       	call   3dea <sbrk>
    33dd:	ba 00 00 40 06       	mov    $0x6400000,%edx
    33e2:	29 c2                	sub    %eax,%edx
    33e4:	89 14 24             	mov    %edx,(%esp)
    33e7:	e8 fe 09 00 00       	call   3dea <sbrk>
      write(fds[1], "x", 1);
    33ec:	8b 45 bc             	mov    -0x44(%ebp),%eax
    33ef:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    33f6:	00 
    33f7:	c7 44 24 04 81 4b 00 	movl   $0x4b81,0x4(%esp)
    33fe:	00 
    33ff:	89 04 24             	mov    %eax,(%esp)
    3402:	e8 7b 09 00 00       	call   3d82 <write>
    3407:	90                   	nop
      for(;;) sleep(1000);
    3408:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    340f:	e8 de 09 00 00       	call   3df2 <sleep>
    3414:	eb f2                	jmp    3408 <sbrktest+0x2d8>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3416:	89 44 24 10          	mov    %eax,0x10(%esp)
    341a:	a1 a4 62 00 00       	mov    0x62a4,%eax
    341f:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    3423:	89 74 24 08          	mov    %esi,0x8(%esp)
    3427:	c7 44 24 04 23 50 00 	movl   $0x5023,0x4(%esp)
    342e:	00 
    342f:	89 04 24             	mov    %eax,(%esp)
    3432:	e8 89 0a 00 00       	call   3ec0 <printf>
      exit();
    3437:	e8 26 09 00 00       	call   3d62 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    343c:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3441:	c7 44 24 04 a5 50 00 	movl   $0x50a5,0x4(%esp)
    3448:	00 
    3449:	89 04 24             	mov    %eax,(%esp)
    344c:	e8 6f 0a 00 00       	call   3ec0 <printf>
    exit();
    3451:	e8 0c 09 00 00       	call   3d62 <exit>
    printf(1, "pipe() failed\n");
    3456:	c7 44 24 04 61 45 00 	movl   $0x4561,0x4(%esp)
    345d:	00 
    345e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3465:	e8 56 0a 00 00       	call   3ec0 <printf>
    exit();
    346a:	e8 f3 08 00 00       	call   3d62 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    346f:	0f be 03             	movsbl (%ebx),%eax
    3472:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3476:	c7 44 24 04 8c 50 00 	movl   $0x508c,0x4(%esp)
    347d:	00 
    347e:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3482:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3487:	89 04 24             	mov    %eax,(%esp)
    348a:	e8 31 0a 00 00       	call   3ec0 <printf>
      kill(ppid);
    348f:	89 34 24             	mov    %esi,(%esp)
    3492:	e8 fb 08 00 00       	call   3d92 <kill>
      exit();
    3497:	e8 c6 08 00 00       	call   3d62 <exit>
      printf(stdout, "fork failed\n");
    349c:	a1 a4 62 00 00       	mov    0x62a4,%eax
    34a1:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    34a8:	00 
    34a9:	89 04 24             	mov    %eax,(%esp)
    34ac:	e8 0f 0a 00 00       	call   3ec0 <printf>
      exit();
    34b1:	e8 ac 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    34b6:	89 44 24 0c          	mov    %eax,0xc(%esp)
    34ba:	a1 a4 62 00 00       	mov    0x62a4,%eax
    34bf:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    34c3:	c7 44 24 04 6c 58 00 	movl   $0x586c,0x4(%esp)
    34ca:	00 
    34cb:	89 04 24             	mov    %eax,(%esp)
    34ce:	e8 ed 09 00 00       	call   3ec0 <printf>
    exit();
    34d3:	e8 8a 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    34d8:	a1 a4 62 00 00       	mov    0x62a4,%eax
    34dd:	c7 44 24 04 3c 58 00 	movl   $0x583c,0x4(%esp)
    34e4:	00 
    34e5:	89 04 24             	mov    %eax,(%esp)
    34e8:	e8 d3 09 00 00       	call   3ec0 <printf>
    exit();
    34ed:	e8 70 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    34f2:	a1 a4 62 00 00       	mov    0x62a4,%eax
    34f7:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    34fb:	89 74 24 08          	mov    %esi,0x8(%esp)
    34ff:	c7 44 24 04 14 58 00 	movl   $0x5814,0x4(%esp)
    3506:	00 
    3507:	89 04 24             	mov    %eax,(%esp)
    350a:	e8 b1 09 00 00       	call   3ec0 <printf>
    exit();
    350f:	e8 4e 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3514:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3518:	a1 a4 62 00 00       	mov    0x62a4,%eax
    351d:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3521:	c7 44 24 04 dc 57 00 	movl   $0x57dc,0x4(%esp)
    3528:	00 
    3529:	89 04 24             	mov    %eax,(%esp)
    352c:	e8 8f 09 00 00       	call   3ec0 <printf>
    exit();
    3531:	e8 2c 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3536:	a1 a4 62 00 00       	mov    0x62a4,%eax
    353b:	c7 44 24 04 71 50 00 	movl   $0x5071,0x4(%esp)
    3542:	00 
    3543:	89 04 24             	mov    %eax,(%esp)
    3546:	e8 75 09 00 00       	call   3ec0 <printf>
    exit();
    354b:	e8 12 08 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3550:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3555:	c7 44 24 04 9c 57 00 	movl   $0x579c,0x4(%esp)
    355c:	00 
    355d:	89 04 24             	mov    %eax,(%esp)
    3560:	e8 5b 09 00 00       	call   3ec0 <printf>
    exit();
    3565:	e8 f8 07 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    356a:	a1 a4 62 00 00       	mov    0x62a4,%eax
    356f:	c7 44 24 04 55 50 00 	movl   $0x5055,0x4(%esp)
    3576:	00 
    3577:	89 04 24             	mov    %eax,(%esp)
    357a:	e8 41 09 00 00       	call   3ec0 <printf>
    exit();
    357f:	e8 de 07 00 00       	call   3d62 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3584:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3589:	c7 44 24 04 3e 50 00 	movl   $0x503e,0x4(%esp)
    3590:	00 
    3591:	89 04 24             	mov    %eax,(%esp)
    3594:	e8 27 09 00 00       	call   3ec0 <printf>
    exit();
    3599:	e8 c4 07 00 00       	call   3d62 <exit>
    359e:	66 90                	xchg   %ax,%ax

000035a0 <validateint>:
{
    35a0:	55                   	push   %ebp
    35a1:	89 e5                	mov    %esp,%ebp
}
    35a3:	5d                   	pop    %ebp
    35a4:	c3                   	ret    
    35a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    35a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000035b0 <validatetest>:
{
    35b0:	55                   	push   %ebp
    35b1:	89 e5                	mov    %esp,%ebp
    35b3:	56                   	push   %esi
    35b4:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    35b5:	31 db                	xor    %ebx,%ebx
{
    35b7:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    35ba:	a1 a4 62 00 00       	mov    0x62a4,%eax
    35bf:	c7 44 24 04 ce 50 00 	movl   $0x50ce,0x4(%esp)
    35c6:	00 
    35c7:	89 04 24             	mov    %eax,(%esp)
    35ca:	e8 f1 08 00 00       	call   3ec0 <printf>
    35cf:	90                   	nop
    if((pid = fork()) == 0){
    35d0:	e8 85 07 00 00       	call   3d5a <fork>
    35d5:	85 c0                	test   %eax,%eax
    35d7:	89 c6                	mov    %eax,%esi
    35d9:	0f 84 80 00 00 00    	je     365f <validatetest+0xaf>
    sleep(0);
    35df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35e6:	e8 07 08 00 00       	call   3df2 <sleep>
    sleep(0);
    35eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35f2:	e8 fb 07 00 00       	call   3df2 <sleep>
    kill(pid);
    35f7:	89 34 24             	mov    %esi,(%esp)
    35fa:	e8 93 07 00 00       	call   3d92 <kill>
    wait(0);
    35ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3606:	e8 5f 07 00 00       	call   3d6a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    360b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    360f:	c7 04 24 dd 50 00 00 	movl   $0x50dd,(%esp)
    3616:	e8 a7 07 00 00       	call   3dc2 <link>
    361b:	83 f8 ff             	cmp    $0xffffffff,%eax
    361e:	75 2a                	jne    364a <validatetest+0x9a>
  for(p = 0; p <= (uint)hi; p += 4096){
    3620:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3626:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    362c:	75 a2                	jne    35d0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    362e:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3633:	c7 44 24 04 01 51 00 	movl   $0x5101,0x4(%esp)
    363a:	00 
    363b:	89 04 24             	mov    %eax,(%esp)
    363e:	e8 7d 08 00 00       	call   3ec0 <printf>
}
    3643:	83 c4 10             	add    $0x10,%esp
    3646:	5b                   	pop    %ebx
    3647:	5e                   	pop    %esi
    3648:	5d                   	pop    %ebp
    3649:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    364a:	a1 a4 62 00 00       	mov    0x62a4,%eax
    364f:	c7 44 24 04 e8 50 00 	movl   $0x50e8,0x4(%esp)
    3656:	00 
    3657:	89 04 24             	mov    %eax,(%esp)
    365a:	e8 61 08 00 00       	call   3ec0 <printf>
      exit();
    365f:	e8 fe 06 00 00       	call   3d62 <exit>
    3664:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    366a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003670 <bsstest>:
{
    3670:	55                   	push   %ebp
    3671:	89 e5                	mov    %esp,%ebp
    3673:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    3676:	a1 a4 62 00 00       	mov    0x62a4,%eax
    367b:	c7 44 24 04 0e 51 00 	movl   $0x510e,0x4(%esp)
    3682:	00 
    3683:	89 04 24             	mov    %eax,(%esp)
    3686:	e8 35 08 00 00       	call   3ec0 <printf>
    if(uninit[i] != '\0'){
    368b:	80 3d 60 63 00 00 00 	cmpb   $0x0,0x6360
    3692:	75 36                	jne    36ca <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3694:	b8 01 00 00 00       	mov    $0x1,%eax
    3699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    36a0:	80 b8 60 63 00 00 00 	cmpb   $0x0,0x6360(%eax)
    36a7:	75 21                	jne    36ca <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    36a9:	83 c0 01             	add    $0x1,%eax
    36ac:	3d 10 27 00 00       	cmp    $0x2710,%eax
    36b1:	75 ed                	jne    36a0 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    36b3:	a1 a4 62 00 00       	mov    0x62a4,%eax
    36b8:	c7 44 24 04 29 51 00 	movl   $0x5129,0x4(%esp)
    36bf:	00 
    36c0:	89 04 24             	mov    %eax,(%esp)
    36c3:	e8 f8 07 00 00       	call   3ec0 <printf>
}
    36c8:	c9                   	leave  
    36c9:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    36ca:	a1 a4 62 00 00       	mov    0x62a4,%eax
    36cf:	c7 44 24 04 18 51 00 	movl   $0x5118,0x4(%esp)
    36d6:	00 
    36d7:	89 04 24             	mov    %eax,(%esp)
    36da:	e8 e1 07 00 00       	call   3ec0 <printf>
      exit();
    36df:	e8 7e 06 00 00       	call   3d62 <exit>
    36e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    36ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000036f0 <bigargtest>:
{
    36f0:	55                   	push   %ebp
    36f1:	89 e5                	mov    %esp,%ebp
    36f3:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    36f6:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    36fd:	e8 b0 06 00 00       	call   3db2 <unlink>
  pid = fork();
    3702:	e8 53 06 00 00       	call   3d5a <fork>
  if(pid == 0){
    3707:	85 c0                	test   %eax,%eax
    3709:	74 4d                	je     3758 <bigargtest+0x68>
    370b:	90                   	nop
    370c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    3710:	0f 88 d8 00 00 00    	js     37ee <bigargtest+0xfe>
  wait(0);
    3716:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    371d:	e8 48 06 00 00       	call   3d6a <wait>
  fd = open("bigarg-ok", 0);
    3722:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3729:	00 
    372a:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    3731:	e8 6c 06 00 00       	call   3da2 <open>
  if(fd < 0){
    3736:	85 c0                	test   %eax,%eax
    3738:	0f 88 96 00 00 00    	js     37d4 <bigargtest+0xe4>
  close(fd);
    373e:	89 04 24             	mov    %eax,(%esp)
    3741:	e8 44 06 00 00       	call   3d8a <close>
  unlink("bigarg-ok");
    3746:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    374d:	e8 60 06 00 00       	call   3db2 <unlink>
}
    3752:	c9                   	leave  
    3753:	c3                   	ret    
    3754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3758:	c7 04 85 c0 62 00 00 	movl   $0x5890,0x62c0(,%eax,4)
    375f:	90 58 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3763:	83 c0 01             	add    $0x1,%eax
    3766:	83 f8 1f             	cmp    $0x1f,%eax
    3769:	75 ed                	jne    3758 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    376b:	a1 a4 62 00 00       	mov    0x62a4,%eax
    3770:	c7 44 24 04 40 51 00 	movl   $0x5140,0x4(%esp)
    3777:	00 
    args[MAXARG-1] = 0;
    3778:	c7 05 3c 63 00 00 00 	movl   $0x0,0x633c
    377f:	00 00 00 
    printf(stdout, "bigarg test\n");
    3782:	89 04 24             	mov    %eax,(%esp)
    3785:	e8 36 07 00 00       	call   3ec0 <printf>
    exec("echo", args);
    378a:	c7 44 24 04 c0 62 00 	movl   $0x62c0,0x4(%esp)
    3791:	00 
    3792:	c7 04 24 0d 43 00 00 	movl   $0x430d,(%esp)
    3799:	e8 fc 05 00 00       	call   3d9a <exec>
    printf(stdout, "bigarg test ok\n");
    379e:	a1 a4 62 00 00       	mov    0x62a4,%eax
    37a3:	c7 44 24 04 4d 51 00 	movl   $0x514d,0x4(%esp)
    37aa:	00 
    37ab:	89 04 24             	mov    %eax,(%esp)
    37ae:	e8 0d 07 00 00       	call   3ec0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    37b3:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    37ba:	00 
    37bb:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    37c2:	e8 db 05 00 00       	call   3da2 <open>
    close(fd);
    37c7:	89 04 24             	mov    %eax,(%esp)
    37ca:	e8 bb 05 00 00       	call   3d8a <close>
    exit();
    37cf:	e8 8e 05 00 00       	call   3d62 <exit>
    printf(stdout, "bigarg test failed!\n");
    37d4:	a1 a4 62 00 00       	mov    0x62a4,%eax
    37d9:	c7 44 24 04 76 51 00 	movl   $0x5176,0x4(%esp)
    37e0:	00 
    37e1:	89 04 24             	mov    %eax,(%esp)
    37e4:	e8 d7 06 00 00       	call   3ec0 <printf>
    exit();
    37e9:	e8 74 05 00 00       	call   3d62 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    37ee:	a1 a4 62 00 00       	mov    0x62a4,%eax
    37f3:	c7 44 24 04 5d 51 00 	movl   $0x515d,0x4(%esp)
    37fa:	00 
    37fb:	89 04 24             	mov    %eax,(%esp)
    37fe:	e8 bd 06 00 00       	call   3ec0 <printf>
    exit();
    3803:	e8 5a 05 00 00       	call   3d62 <exit>
    3808:	90                   	nop
    3809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003810 <fsfull>:
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	57                   	push   %edi
    3814:	56                   	push   %esi
    3815:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3816:	31 db                	xor    %ebx,%ebx
{
    3818:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    381b:	c7 44 24 04 8b 51 00 	movl   $0x518b,0x4(%esp)
    3822:	00 
    3823:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    382a:	e8 91 06 00 00       	call   3ec0 <printf>
    382f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    3830:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3835:	89 d9                	mov    %ebx,%ecx
    3837:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3839:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    383b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    383e:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    3840:	c7 44 24 04 98 51 00 	movl   $0x5198,0x4(%esp)
    3847:	00 
    3848:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    384f:	c1 fa 06             	sar    $0x6,%edx
    3852:	29 ca                	sub    %ecx,%edx
    3854:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3857:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    385d:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3860:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3865:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3869:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    386d:	29 d6                	sub    %edx,%esi
    386f:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3871:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3876:	c1 fe 1f             	sar    $0x1f,%esi
    3879:	c1 fa 05             	sar    $0x5,%edx
    387c:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    387e:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3883:	83 c2 30             	add    $0x30,%edx
    3886:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3889:	f7 eb                	imul   %ebx
    388b:	c1 fa 05             	sar    $0x5,%edx
    388e:	29 ca                	sub    %ecx,%edx
    3890:	6b d2 64             	imul   $0x64,%edx,%edx
    3893:	29 d7                	sub    %edx,%edi
    3895:	89 f8                	mov    %edi,%eax
    3897:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3899:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    389b:	c1 ff 1f             	sar    $0x1f,%edi
    389e:	c1 fa 02             	sar    $0x2,%edx
    38a1:	29 fa                	sub    %edi,%edx
    38a3:	83 c2 30             	add    $0x30,%edx
    38a6:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    38a9:	f7 ee                	imul   %esi
    38ab:	c1 fa 02             	sar    $0x2,%edx
    38ae:	29 ca                	sub    %ecx,%edx
    38b0:	89 d9                	mov    %ebx,%ecx
    38b2:	8d 04 92             	lea    (%edx,%edx,4),%eax
    38b5:	01 c0                	add    %eax,%eax
    38b7:	29 c1                	sub    %eax,%ecx
    38b9:	89 c8                	mov    %ecx,%eax
    38bb:	83 c0 30             	add    $0x30,%eax
    38be:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    38c1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    38c4:	89 44 24 08          	mov    %eax,0x8(%esp)
    38c8:	e8 f3 05 00 00       	call   3ec0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    38cd:	8d 45 a8             	lea    -0x58(%ebp),%eax
    38d0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    38d7:	00 
    38d8:	89 04 24             	mov    %eax,(%esp)
    38db:	e8 c2 04 00 00       	call   3da2 <open>
    if(fd < 0){
    38e0:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    38e2:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    38e4:	78 57                	js     393d <fsfull+0x12d>
    38e6:	31 f6                	xor    %esi,%esi
    38e8:	eb 08                	jmp    38f2 <fsfull+0xe2>
    38ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    38f0:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    38f2:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    38f9:	00 
    38fa:	c7 44 24 04 80 8a 00 	movl   $0x8a80,0x4(%esp)
    3901:	00 
    3902:	89 3c 24             	mov    %edi,(%esp)
    3905:	e8 78 04 00 00       	call   3d82 <write>
      if(cc < 512)
    390a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    390f:	7f df                	jg     38f0 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3911:	89 74 24 08          	mov    %esi,0x8(%esp)
    3915:	c7 44 24 04 b4 51 00 	movl   $0x51b4,0x4(%esp)
    391c:	00 
    391d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3924:	e8 97 05 00 00       	call   3ec0 <printf>
    close(fd);
    3929:	89 3c 24             	mov    %edi,(%esp)
    392c:	e8 59 04 00 00       	call   3d8a <close>
    if(total == 0)
    3931:	85 f6                	test   %esi,%esi
    3933:	74 23                	je     3958 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3935:	83 c3 01             	add    $0x1,%ebx
  }
    3938:	e9 f3 fe ff ff       	jmp    3830 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    393d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3940:	89 44 24 08          	mov    %eax,0x8(%esp)
    3944:	c7 44 24 04 a4 51 00 	movl   $0x51a4,0x4(%esp)
    394b:	00 
    394c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3953:	e8 68 05 00 00       	call   3ec0 <printf>
    name[1] = '0' + nfiles / 1000;
    3958:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    395d:	89 d9                	mov    %ebx,%ecx
    395f:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3961:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3963:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3966:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3968:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    396c:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3970:	c1 fa 06             	sar    $0x6,%edx
    3973:	29 ca                	sub    %ecx,%edx
    3975:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3978:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    397e:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3981:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3986:	29 d6                	sub    %edx,%esi
    3988:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    398a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    398f:	c1 fe 1f             	sar    $0x1f,%esi
    3992:	c1 fa 05             	sar    $0x5,%edx
    3995:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3997:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    399c:	83 c2 30             	add    $0x30,%edx
    399f:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    39a2:	f7 eb                	imul   %ebx
    39a4:	c1 fa 05             	sar    $0x5,%edx
    39a7:	29 ca                	sub    %ecx,%edx
    39a9:	6b d2 64             	imul   $0x64,%edx,%edx
    39ac:	29 d7                	sub    %edx,%edi
    39ae:	89 f8                	mov    %edi,%eax
    39b0:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    39b2:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    39b4:	c1 ff 1f             	sar    $0x1f,%edi
    39b7:	c1 fa 02             	sar    $0x2,%edx
    39ba:	29 fa                	sub    %edi,%edx
    39bc:	83 c2 30             	add    $0x30,%edx
    39bf:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    39c2:	f7 ee                	imul   %esi
    39c4:	c1 fa 02             	sar    $0x2,%edx
    39c7:	29 ca                	sub    %ecx,%edx
    39c9:	89 d9                	mov    %ebx,%ecx
    39cb:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    39ce:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    39d1:	01 c0                	add    %eax,%eax
    39d3:	29 c1                	sub    %eax,%ecx
    39d5:	89 c8                	mov    %ecx,%eax
    39d7:	83 c0 30             	add    $0x30,%eax
    39da:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    39dd:	8d 45 a8             	lea    -0x58(%ebp),%eax
    39e0:	89 04 24             	mov    %eax,(%esp)
    39e3:	e8 ca 03 00 00       	call   3db2 <unlink>
  while(nfiles >= 0){
    39e8:	83 fb ff             	cmp    $0xffffffff,%ebx
    39eb:	0f 85 67 ff ff ff    	jne    3958 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    39f1:	c7 44 24 04 c4 51 00 	movl   $0x51c4,0x4(%esp)
    39f8:	00 
    39f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a00:	e8 bb 04 00 00       	call   3ec0 <printf>
}
    3a05:	83 c4 5c             	add    $0x5c,%esp
    3a08:	5b                   	pop    %ebx
    3a09:	5e                   	pop    %esi
    3a0a:	5f                   	pop    %edi
    3a0b:	5d                   	pop    %ebp
    3a0c:	c3                   	ret    
    3a0d:	8d 76 00             	lea    0x0(%esi),%esi

00003a10 <uio>:
{
    3a10:	55                   	push   %ebp
    3a11:	89 e5                	mov    %esp,%ebp
    3a13:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3a16:	c7 44 24 04 da 51 00 	movl   $0x51da,0x4(%esp)
    3a1d:	00 
    3a1e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a25:	e8 96 04 00 00       	call   3ec0 <printf>
  pid = fork();
    3a2a:	e8 2b 03 00 00       	call   3d5a <fork>
  if(pid == 0){
    3a2f:	85 c0                	test   %eax,%eax
    3a31:	74 24                	je     3a57 <uio+0x47>
  } else if(pid < 0){
    3a33:	78 49                	js     3a7e <uio+0x6e>
  wait(0);
    3a35:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a3c:	e8 29 03 00 00       	call   3d6a <wait>
  printf(1, "uio test done\n");
    3a41:	c7 44 24 04 e4 51 00 	movl   $0x51e4,0x4(%esp)
    3a48:	00 
    3a49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a50:	e8 6b 04 00 00       	call   3ec0 <printf>
}
    3a55:	c9                   	leave  
    3a56:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3a57:	ba 70 00 00 00       	mov    $0x70,%edx
    3a5c:	b8 09 00 00 00       	mov    $0x9,%eax
    3a61:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3a62:	b2 71                	mov    $0x71,%dl
    3a64:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3a65:	c7 44 24 04 70 59 00 	movl   $0x5970,0x4(%esp)
    3a6c:	00 
    3a6d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a74:	e8 47 04 00 00       	call   3ec0 <printf>
    exit();
    3a79:	e8 e4 02 00 00       	call   3d62 <exit>
    printf (1, "fork failed\n");
    3a7e:	c7 44 24 04 69 51 00 	movl   $0x5169,0x4(%esp)
    3a85:	00 
    3a86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a8d:	e8 2e 04 00 00       	call   3ec0 <printf>
    exit();
    3a92:	e8 cb 02 00 00       	call   3d62 <exit>
    3a97:	89 f6                	mov    %esi,%esi
    3a99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003aa0 <argptest>:
{
    3aa0:	55                   	push   %ebp
    3aa1:	89 e5                	mov    %esp,%ebp
    3aa3:	53                   	push   %ebx
    3aa4:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3aa7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3aae:	00 
    3aaf:	c7 04 24 f3 51 00 00 	movl   $0x51f3,(%esp)
    3ab6:	e8 e7 02 00 00       	call   3da2 <open>
  if (fd < 0) {
    3abb:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3abd:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3abf:	78 45                	js     3b06 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3ac1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ac8:	e8 1d 03 00 00       	call   3dea <sbrk>
    3acd:	89 1c 24             	mov    %ebx,(%esp)
    3ad0:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3ad7:	ff 
    3ad8:	83 e8 01             	sub    $0x1,%eax
    3adb:	89 44 24 04          	mov    %eax,0x4(%esp)
    3adf:	e8 96 02 00 00       	call   3d7a <read>
  close(fd);
    3ae4:	89 1c 24             	mov    %ebx,(%esp)
    3ae7:	e8 9e 02 00 00       	call   3d8a <close>
  printf(1, "arg test passed\n");
    3aec:	c7 44 24 04 05 52 00 	movl   $0x5205,0x4(%esp)
    3af3:	00 
    3af4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3afb:	e8 c0 03 00 00       	call   3ec0 <printf>
}
    3b00:	83 c4 14             	add    $0x14,%esp
    3b03:	5b                   	pop    %ebx
    3b04:	5d                   	pop    %ebp
    3b05:	c3                   	ret    
    printf(2, "open failed\n");
    3b06:	c7 44 24 04 f8 51 00 	movl   $0x51f8,0x4(%esp)
    3b0d:	00 
    3b0e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3b15:	e8 a6 03 00 00       	call   3ec0 <printf>
    exit();
    3b1a:	e8 43 02 00 00       	call   3d62 <exit>
    3b1f:	90                   	nop

00003b20 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3b20:	69 05 a0 62 00 00 0d 	imul   $0x19660d,0x62a0,%eax
    3b27:	66 19 00 
{
    3b2a:	55                   	push   %ebp
    3b2b:	89 e5                	mov    %esp,%ebp
}
    3b2d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3b2e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3b33:	a3 a0 62 00 00       	mov    %eax,0x62a0
}
    3b38:	c3                   	ret    
    3b39:	66 90                	xchg   %ax,%ax
    3b3b:	66 90                	xchg   %ax,%ax
    3b3d:	66 90                	xchg   %ax,%ax
    3b3f:	90                   	nop

00003b40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3b40:	55                   	push   %ebp
    3b41:	89 e5                	mov    %esp,%ebp
    3b43:	8b 45 08             	mov    0x8(%ebp),%eax
    3b46:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3b49:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3b4a:	89 c2                	mov    %eax,%edx
    3b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3b50:	83 c1 01             	add    $0x1,%ecx
    3b53:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3b57:	83 c2 01             	add    $0x1,%edx
    3b5a:	84 db                	test   %bl,%bl
    3b5c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3b5f:	75 ef                	jne    3b50 <strcpy+0x10>
    ;
  return os;
}
    3b61:	5b                   	pop    %ebx
    3b62:	5d                   	pop    %ebp
    3b63:	c3                   	ret    
    3b64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3b6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003b70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3b70:	55                   	push   %ebp
    3b71:	89 e5                	mov    %esp,%ebp
    3b73:	8b 55 08             	mov    0x8(%ebp),%edx
    3b76:	53                   	push   %ebx
    3b77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3b7a:	0f b6 02             	movzbl (%edx),%eax
    3b7d:	84 c0                	test   %al,%al
    3b7f:	74 2d                	je     3bae <strcmp+0x3e>
    3b81:	0f b6 19             	movzbl (%ecx),%ebx
    3b84:	38 d8                	cmp    %bl,%al
    3b86:	74 0e                	je     3b96 <strcmp+0x26>
    3b88:	eb 2b                	jmp    3bb5 <strcmp+0x45>
    3b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3b90:	38 c8                	cmp    %cl,%al
    3b92:	75 15                	jne    3ba9 <strcmp+0x39>
    p++, q++;
    3b94:	89 d9                	mov    %ebx,%ecx
    3b96:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3b99:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3b9c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3b9f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3ba3:	84 c0                	test   %al,%al
    3ba5:	75 e9                	jne    3b90 <strcmp+0x20>
    3ba7:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3ba9:	29 c8                	sub    %ecx,%eax
}
    3bab:	5b                   	pop    %ebx
    3bac:	5d                   	pop    %ebp
    3bad:	c3                   	ret    
    3bae:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3bb1:	31 c0                	xor    %eax,%eax
    3bb3:	eb f4                	jmp    3ba9 <strcmp+0x39>
    3bb5:	0f b6 cb             	movzbl %bl,%ecx
    3bb8:	eb ef                	jmp    3ba9 <strcmp+0x39>
    3bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003bc0 <strlen>:

uint
strlen(const char *s)
{
    3bc0:	55                   	push   %ebp
    3bc1:	89 e5                	mov    %esp,%ebp
    3bc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3bc6:	80 39 00             	cmpb   $0x0,(%ecx)
    3bc9:	74 12                	je     3bdd <strlen+0x1d>
    3bcb:	31 d2                	xor    %edx,%edx
    3bcd:	8d 76 00             	lea    0x0(%esi),%esi
    3bd0:	83 c2 01             	add    $0x1,%edx
    3bd3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3bd7:	89 d0                	mov    %edx,%eax
    3bd9:	75 f5                	jne    3bd0 <strlen+0x10>
    ;
  return n;
}
    3bdb:	5d                   	pop    %ebp
    3bdc:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3bdd:	31 c0                	xor    %eax,%eax
}
    3bdf:	5d                   	pop    %ebp
    3be0:	c3                   	ret    
    3be1:	eb 0d                	jmp    3bf0 <memset>
    3be3:	90                   	nop
    3be4:	90                   	nop
    3be5:	90                   	nop
    3be6:	90                   	nop
    3be7:	90                   	nop
    3be8:	90                   	nop
    3be9:	90                   	nop
    3bea:	90                   	nop
    3beb:	90                   	nop
    3bec:	90                   	nop
    3bed:	90                   	nop
    3bee:	90                   	nop
    3bef:	90                   	nop

00003bf0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3bf0:	55                   	push   %ebp
    3bf1:	89 e5                	mov    %esp,%ebp
    3bf3:	8b 55 08             	mov    0x8(%ebp),%edx
    3bf6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3bf7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3bfa:	8b 45 0c             	mov    0xc(%ebp),%eax
    3bfd:	89 d7                	mov    %edx,%edi
    3bff:	fc                   	cld    
    3c00:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3c02:	89 d0                	mov    %edx,%eax
    3c04:	5f                   	pop    %edi
    3c05:	5d                   	pop    %ebp
    3c06:	c3                   	ret    
    3c07:	89 f6                	mov    %esi,%esi
    3c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003c10 <strchr>:

char*
strchr(const char *s, char c)
{
    3c10:	55                   	push   %ebp
    3c11:	89 e5                	mov    %esp,%ebp
    3c13:	8b 45 08             	mov    0x8(%ebp),%eax
    3c16:	53                   	push   %ebx
    3c17:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3c1a:	0f b6 18             	movzbl (%eax),%ebx
    3c1d:	84 db                	test   %bl,%bl
    3c1f:	74 1d                	je     3c3e <strchr+0x2e>
    if(*s == c)
    3c21:	38 d3                	cmp    %dl,%bl
    3c23:	89 d1                	mov    %edx,%ecx
    3c25:	75 0d                	jne    3c34 <strchr+0x24>
    3c27:	eb 17                	jmp    3c40 <strchr+0x30>
    3c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c30:	38 ca                	cmp    %cl,%dl
    3c32:	74 0c                	je     3c40 <strchr+0x30>
  for(; *s; s++)
    3c34:	83 c0 01             	add    $0x1,%eax
    3c37:	0f b6 10             	movzbl (%eax),%edx
    3c3a:	84 d2                	test   %dl,%dl
    3c3c:	75 f2                	jne    3c30 <strchr+0x20>
      return (char*)s;
  return 0;
    3c3e:	31 c0                	xor    %eax,%eax
}
    3c40:	5b                   	pop    %ebx
    3c41:	5d                   	pop    %ebp
    3c42:	c3                   	ret    
    3c43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003c50 <gets>:

char*
gets(char *buf, int max)
{
    3c50:	55                   	push   %ebp
    3c51:	89 e5                	mov    %esp,%ebp
    3c53:	57                   	push   %edi
    3c54:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3c55:	31 f6                	xor    %esi,%esi
{
    3c57:	53                   	push   %ebx
    3c58:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3c5b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3c5e:	eb 31                	jmp    3c91 <gets+0x41>
    cc = read(0, &c, 1);
    3c60:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3c67:	00 
    3c68:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3c6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c73:	e8 02 01 00 00       	call   3d7a <read>
    if(cc < 1)
    3c78:	85 c0                	test   %eax,%eax
    3c7a:	7e 1d                	jle    3c99 <gets+0x49>
      break;
    buf[i++] = c;
    3c7c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3c80:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3c82:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3c85:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3c87:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3c8b:	74 0c                	je     3c99 <gets+0x49>
    3c8d:	3c 0a                	cmp    $0xa,%al
    3c8f:	74 08                	je     3c99 <gets+0x49>
  for(i=0; i+1 < max; ){
    3c91:	8d 5e 01             	lea    0x1(%esi),%ebx
    3c94:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3c97:	7c c7                	jl     3c60 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3c99:	8b 45 08             	mov    0x8(%ebp),%eax
    3c9c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3ca0:	83 c4 2c             	add    $0x2c,%esp
    3ca3:	5b                   	pop    %ebx
    3ca4:	5e                   	pop    %esi
    3ca5:	5f                   	pop    %edi
    3ca6:	5d                   	pop    %ebp
    3ca7:	c3                   	ret    
    3ca8:	90                   	nop
    3ca9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003cb0 <stat>:

int
stat(const char *n, struct stat *st)
{
    3cb0:	55                   	push   %ebp
    3cb1:	89 e5                	mov    %esp,%ebp
    3cb3:	56                   	push   %esi
    3cb4:	53                   	push   %ebx
    3cb5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3cb8:	8b 45 08             	mov    0x8(%ebp),%eax
    3cbb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3cc2:	00 
    3cc3:	89 04 24             	mov    %eax,(%esp)
    3cc6:	e8 d7 00 00 00       	call   3da2 <open>
  if(fd < 0)
    3ccb:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3ccd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3ccf:	78 27                	js     3cf8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3cd1:	8b 45 0c             	mov    0xc(%ebp),%eax
    3cd4:	89 1c 24             	mov    %ebx,(%esp)
    3cd7:	89 44 24 04          	mov    %eax,0x4(%esp)
    3cdb:	e8 da 00 00 00       	call   3dba <fstat>
  close(fd);
    3ce0:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3ce3:	89 c6                	mov    %eax,%esi
  close(fd);
    3ce5:	e8 a0 00 00 00       	call   3d8a <close>
  return r;
    3cea:	89 f0                	mov    %esi,%eax
}
    3cec:	83 c4 10             	add    $0x10,%esp
    3cef:	5b                   	pop    %ebx
    3cf0:	5e                   	pop    %esi
    3cf1:	5d                   	pop    %ebp
    3cf2:	c3                   	ret    
    3cf3:	90                   	nop
    3cf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3cf8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3cfd:	eb ed                	jmp    3cec <stat+0x3c>
    3cff:	90                   	nop

00003d00 <atoi>:

int
atoi(const char *s)
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3d06:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3d07:	0f be 11             	movsbl (%ecx),%edx
    3d0a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3d0d:	3c 09                	cmp    $0x9,%al
  n = 0;
    3d0f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3d14:	77 17                	ja     3d2d <atoi+0x2d>
    3d16:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3d18:	83 c1 01             	add    $0x1,%ecx
    3d1b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3d1e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3d22:	0f be 11             	movsbl (%ecx),%edx
    3d25:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3d28:	80 fb 09             	cmp    $0x9,%bl
    3d2b:	76 eb                	jbe    3d18 <atoi+0x18>
  return n;
}
    3d2d:	5b                   	pop    %ebx
    3d2e:	5d                   	pop    %ebp
    3d2f:	c3                   	ret    

00003d30 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3d30:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3d31:	31 d2                	xor    %edx,%edx
{
    3d33:	89 e5                	mov    %esp,%ebp
    3d35:	56                   	push   %esi
    3d36:	8b 45 08             	mov    0x8(%ebp),%eax
    3d39:	53                   	push   %ebx
    3d3a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3d3d:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3d40:	85 db                	test   %ebx,%ebx
    3d42:	7e 12                	jle    3d56 <memmove+0x26>
    3d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3d48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3d4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3d4f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3d52:	39 da                	cmp    %ebx,%edx
    3d54:	75 f2                	jne    3d48 <memmove+0x18>
  return vdst;
}
    3d56:	5b                   	pop    %ebx
    3d57:	5e                   	pop    %esi
    3d58:	5d                   	pop    %ebp
    3d59:	c3                   	ret    

00003d5a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3d5a:	b8 01 00 00 00       	mov    $0x1,%eax
    3d5f:	cd 40                	int    $0x40
    3d61:	c3                   	ret    

00003d62 <exit>:
SYSCALL(exit)
    3d62:	b8 02 00 00 00       	mov    $0x2,%eax
    3d67:	cd 40                	int    $0x40
    3d69:	c3                   	ret    

00003d6a <wait>:
SYSCALL(wait)
    3d6a:	b8 03 00 00 00       	mov    $0x3,%eax
    3d6f:	cd 40                	int    $0x40
    3d71:	c3                   	ret    

00003d72 <pipe>:
SYSCALL(pipe)
    3d72:	b8 04 00 00 00       	mov    $0x4,%eax
    3d77:	cd 40                	int    $0x40
    3d79:	c3                   	ret    

00003d7a <read>:
SYSCALL(read)
    3d7a:	b8 05 00 00 00       	mov    $0x5,%eax
    3d7f:	cd 40                	int    $0x40
    3d81:	c3                   	ret    

00003d82 <write>:
SYSCALL(write)
    3d82:	b8 10 00 00 00       	mov    $0x10,%eax
    3d87:	cd 40                	int    $0x40
    3d89:	c3                   	ret    

00003d8a <close>:
SYSCALL(close)
    3d8a:	b8 15 00 00 00       	mov    $0x15,%eax
    3d8f:	cd 40                	int    $0x40
    3d91:	c3                   	ret    

00003d92 <kill>:
SYSCALL(kill)
    3d92:	b8 06 00 00 00       	mov    $0x6,%eax
    3d97:	cd 40                	int    $0x40
    3d99:	c3                   	ret    

00003d9a <exec>:
SYSCALL(exec)
    3d9a:	b8 07 00 00 00       	mov    $0x7,%eax
    3d9f:	cd 40                	int    $0x40
    3da1:	c3                   	ret    

00003da2 <open>:
SYSCALL(open)
    3da2:	b8 0f 00 00 00       	mov    $0xf,%eax
    3da7:	cd 40                	int    $0x40
    3da9:	c3                   	ret    

00003daa <mknod>:
SYSCALL(mknod)
    3daa:	b8 11 00 00 00       	mov    $0x11,%eax
    3daf:	cd 40                	int    $0x40
    3db1:	c3                   	ret    

00003db2 <unlink>:
SYSCALL(unlink)
    3db2:	b8 12 00 00 00       	mov    $0x12,%eax
    3db7:	cd 40                	int    $0x40
    3db9:	c3                   	ret    

00003dba <fstat>:
SYSCALL(fstat)
    3dba:	b8 08 00 00 00       	mov    $0x8,%eax
    3dbf:	cd 40                	int    $0x40
    3dc1:	c3                   	ret    

00003dc2 <link>:
SYSCALL(link)
    3dc2:	b8 13 00 00 00       	mov    $0x13,%eax
    3dc7:	cd 40                	int    $0x40
    3dc9:	c3                   	ret    

00003dca <mkdir>:
SYSCALL(mkdir)
    3dca:	b8 14 00 00 00       	mov    $0x14,%eax
    3dcf:	cd 40                	int    $0x40
    3dd1:	c3                   	ret    

00003dd2 <chdir>:
SYSCALL(chdir)
    3dd2:	b8 09 00 00 00       	mov    $0x9,%eax
    3dd7:	cd 40                	int    $0x40
    3dd9:	c3                   	ret    

00003dda <dup>:
SYSCALL(dup)
    3dda:	b8 0a 00 00 00       	mov    $0xa,%eax
    3ddf:	cd 40                	int    $0x40
    3de1:	c3                   	ret    

00003de2 <getpid>:
SYSCALL(getpid)
    3de2:	b8 0b 00 00 00       	mov    $0xb,%eax
    3de7:	cd 40                	int    $0x40
    3de9:	c3                   	ret    

00003dea <sbrk>:
SYSCALL(sbrk)
    3dea:	b8 0c 00 00 00       	mov    $0xc,%eax
    3def:	cd 40                	int    $0x40
    3df1:	c3                   	ret    

00003df2 <sleep>:
SYSCALL(sleep)
    3df2:	b8 0d 00 00 00       	mov    $0xd,%eax
    3df7:	cd 40                	int    $0x40
    3df9:	c3                   	ret    

00003dfa <uptime>:
SYSCALL(uptime)
    3dfa:	b8 0e 00 00 00       	mov    $0xe,%eax
    3dff:	cd 40                	int    $0x40
    3e01:	c3                   	ret    

00003e02 <exitS>:
SYSCALL(exitS)
    3e02:	b8 16 00 00 00       	mov    $0x16,%eax
    3e07:	cd 40                	int    $0x40
    3e09:	c3                   	ret    

00003e0a <waitpid>:
SYSCALL(waitpid)
    3e0a:	b8 17 00 00 00       	mov    $0x17,%eax
    3e0f:	cd 40                	int    $0x40
    3e11:	c3                   	ret    

00003e12 <set_prior>:
SYSCALL(set_prior)
    3e12:	b8 18 00 00 00       	mov    $0x18,%eax
    3e17:	cd 40                	int    $0x40
    3e19:	c3                   	ret    
    3e1a:	66 90                	xchg   %ax,%ax
    3e1c:	66 90                	xchg   %ax,%ax
    3e1e:	66 90                	xchg   %ax,%ax

00003e20 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3e20:	55                   	push   %ebp
    3e21:	89 e5                	mov    %esp,%ebp
    3e23:	57                   	push   %edi
    3e24:	56                   	push   %esi
    3e25:	89 c6                	mov    %eax,%esi
    3e27:	53                   	push   %ebx
    3e28:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3e2b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3e2e:	85 db                	test   %ebx,%ebx
    3e30:	74 09                	je     3e3b <printint+0x1b>
    3e32:	89 d0                	mov    %edx,%eax
    3e34:	c1 e8 1f             	shr    $0x1f,%eax
    3e37:	84 c0                	test   %al,%al
    3e39:	75 75                	jne    3eb0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    3e3b:	89 d0                	mov    %edx,%eax
  neg = 0;
    3e3d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3e44:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    3e47:	31 ff                	xor    %edi,%edi
    3e49:	89 ce                	mov    %ecx,%esi
    3e4b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3e4e:	eb 02                	jmp    3e52 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    3e50:	89 cf                	mov    %ecx,%edi
    3e52:	31 d2                	xor    %edx,%edx
    3e54:	f7 f6                	div    %esi
    3e56:	8d 4f 01             	lea    0x1(%edi),%ecx
    3e59:	0f b6 92 c7 59 00 00 	movzbl 0x59c7(%edx),%edx
  }while((x /= base) != 0);
    3e60:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    3e62:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    3e65:	75 e9                	jne    3e50 <printint+0x30>
  if(neg)
    3e67:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    3e6a:	89 c8                	mov    %ecx,%eax
    3e6c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    3e6f:	85 d2                	test   %edx,%edx
    3e71:	74 08                	je     3e7b <printint+0x5b>
    buf[i++] = '-';
    3e73:	8d 4f 02             	lea    0x2(%edi),%ecx
    3e76:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    3e7b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    3e7e:	66 90                	xchg   %ax,%ax
    3e80:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    3e85:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    3e88:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3e8f:	00 
    3e90:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    3e94:	89 34 24             	mov    %esi,(%esp)
    3e97:	88 45 d7             	mov    %al,-0x29(%ebp)
    3e9a:	e8 e3 fe ff ff       	call   3d82 <write>
  while(--i >= 0)
    3e9f:	83 ff ff             	cmp    $0xffffffff,%edi
    3ea2:	75 dc                	jne    3e80 <printint+0x60>
    putc(fd, buf[i]);
}
    3ea4:	83 c4 4c             	add    $0x4c,%esp
    3ea7:	5b                   	pop    %ebx
    3ea8:	5e                   	pop    %esi
    3ea9:	5f                   	pop    %edi
    3eaa:	5d                   	pop    %ebp
    3eab:	c3                   	ret    
    3eac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    3eb0:	89 d0                	mov    %edx,%eax
    3eb2:	f7 d8                	neg    %eax
    neg = 1;
    3eb4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    3ebb:	eb 87                	jmp    3e44 <printint+0x24>
    3ebd:	8d 76 00             	lea    0x0(%esi),%esi

00003ec0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3ec0:	55                   	push   %ebp
    3ec1:	89 e5                	mov    %esp,%ebp
    3ec3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    3ec4:	31 ff                	xor    %edi,%edi
{
    3ec6:	56                   	push   %esi
    3ec7:	53                   	push   %ebx
    3ec8:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3ecb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    3ece:	8d 45 10             	lea    0x10(%ebp),%eax
{
    3ed1:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    3ed4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    3ed7:	0f b6 13             	movzbl (%ebx),%edx
    3eda:	83 c3 01             	add    $0x1,%ebx
    3edd:	84 d2                	test   %dl,%dl
    3edf:	75 39                	jne    3f1a <printf+0x5a>
    3ee1:	e9 c2 00 00 00       	jmp    3fa8 <printf+0xe8>
    3ee6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3ee8:	83 fa 25             	cmp    $0x25,%edx
    3eeb:	0f 84 bf 00 00 00    	je     3fb0 <printf+0xf0>
  write(fd, &c, 1);
    3ef1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3ef4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3efb:	00 
    3efc:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f00:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    3f03:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    3f06:	e8 77 fe ff ff       	call   3d82 <write>
    3f0b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    3f0e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3f12:	84 d2                	test   %dl,%dl
    3f14:	0f 84 8e 00 00 00    	je     3fa8 <printf+0xe8>
    if(state == 0){
    3f1a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    3f1c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    3f1f:	74 c7                	je     3ee8 <printf+0x28>
      }
    } else if(state == '%'){
    3f21:	83 ff 25             	cmp    $0x25,%edi
    3f24:	75 e5                	jne    3f0b <printf+0x4b>
      if(c == 'd'){
    3f26:	83 fa 64             	cmp    $0x64,%edx
    3f29:	0f 84 31 01 00 00    	je     4060 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3f2f:	25 f7 00 00 00       	and    $0xf7,%eax
    3f34:	83 f8 70             	cmp    $0x70,%eax
    3f37:	0f 84 83 00 00 00    	je     3fc0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3f3d:	83 fa 73             	cmp    $0x73,%edx
    3f40:	0f 84 a2 00 00 00    	je     3fe8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3f46:	83 fa 63             	cmp    $0x63,%edx
    3f49:	0f 84 35 01 00 00    	je     4084 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3f4f:	83 fa 25             	cmp    $0x25,%edx
    3f52:	0f 84 e0 00 00 00    	je     4038 <printf+0x178>
  write(fd, &c, 1);
    3f58:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3f5b:	83 c3 01             	add    $0x1,%ebx
    3f5e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3f65:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3f66:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    3f68:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f6c:	89 34 24             	mov    %esi,(%esp)
    3f6f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    3f72:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    3f76:	e8 07 fe ff ff       	call   3d82 <write>
        putc(fd, c);
    3f7b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    3f7e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3f81:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3f88:	00 
    3f89:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f8d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    3f90:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    3f93:	e8 ea fd ff ff       	call   3d82 <write>
  for(i = 0; fmt[i]; i++){
    3f98:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3f9c:	84 d2                	test   %dl,%dl
    3f9e:	0f 85 76 ff ff ff    	jne    3f1a <printf+0x5a>
    3fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    3fa8:	83 c4 3c             	add    $0x3c,%esp
    3fab:	5b                   	pop    %ebx
    3fac:	5e                   	pop    %esi
    3fad:	5f                   	pop    %edi
    3fae:	5d                   	pop    %ebp
    3faf:	c3                   	ret    
        state = '%';
    3fb0:	bf 25 00 00 00       	mov    $0x25,%edi
    3fb5:	e9 51 ff ff ff       	jmp    3f0b <printf+0x4b>
    3fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3fc0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3fc3:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    3fc8:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    3fca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3fd1:	8b 10                	mov    (%eax),%edx
    3fd3:	89 f0                	mov    %esi,%eax
    3fd5:	e8 46 fe ff ff       	call   3e20 <printint>
        ap++;
    3fda:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3fde:	e9 28 ff ff ff       	jmp    3f0b <printf+0x4b>
    3fe3:	90                   	nop
    3fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3fe8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    3feb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    3fef:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    3ff1:	b8 c0 59 00 00       	mov    $0x59c0,%eax
    3ff6:	85 ff                	test   %edi,%edi
    3ff8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    3ffb:	0f b6 07             	movzbl (%edi),%eax
    3ffe:	84 c0                	test   %al,%al
    4000:	74 2a                	je     402c <printf+0x16c>
    4002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4008:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    400b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    400e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    4011:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4018:	00 
    4019:	89 44 24 04          	mov    %eax,0x4(%esp)
    401d:	89 34 24             	mov    %esi,(%esp)
    4020:	e8 5d fd ff ff       	call   3d82 <write>
        while(*s != 0){
    4025:	0f b6 07             	movzbl (%edi),%eax
    4028:	84 c0                	test   %al,%al
    402a:	75 dc                	jne    4008 <printf+0x148>
      state = 0;
    402c:	31 ff                	xor    %edi,%edi
    402e:	e9 d8 fe ff ff       	jmp    3f0b <printf+0x4b>
    4033:	90                   	nop
    4034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    4038:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    403b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    403d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4044:	00 
    4045:	89 44 24 04          	mov    %eax,0x4(%esp)
    4049:	89 34 24             	mov    %esi,(%esp)
    404c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    4050:	e8 2d fd ff ff       	call   3d82 <write>
    4055:	e9 b1 fe ff ff       	jmp    3f0b <printf+0x4b>
    405a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    4060:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4063:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    4068:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    406b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4072:	8b 10                	mov    (%eax),%edx
    4074:	89 f0                	mov    %esi,%eax
    4076:	e8 a5 fd ff ff       	call   3e20 <printint>
        ap++;
    407b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    407f:	e9 87 fe ff ff       	jmp    3f0b <printf+0x4b>
        putc(fd, *ap);
    4084:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    4087:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    4089:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    408b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4092:	00 
    4093:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    4096:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4099:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    409c:	89 44 24 04          	mov    %eax,0x4(%esp)
    40a0:	e8 dd fc ff ff       	call   3d82 <write>
        ap++;
    40a5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    40a9:	e9 5d fe ff ff       	jmp    3f0b <printf+0x4b>
    40ae:	66 90                	xchg   %ax,%ax

000040b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    40b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    40b1:	a1 40 63 00 00       	mov    0x6340,%eax
{
    40b6:	89 e5                	mov    %esp,%ebp
    40b8:	57                   	push   %edi
    40b9:	56                   	push   %esi
    40ba:	53                   	push   %ebx
    40bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    40be:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    40c0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    40c3:	39 d0                	cmp    %edx,%eax
    40c5:	72 11                	jb     40d8 <free+0x28>
    40c7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    40c8:	39 c8                	cmp    %ecx,%eax
    40ca:	72 04                	jb     40d0 <free+0x20>
    40cc:	39 ca                	cmp    %ecx,%edx
    40ce:	72 10                	jb     40e0 <free+0x30>
    40d0:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    40d2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    40d4:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    40d6:	73 f0                	jae    40c8 <free+0x18>
    40d8:	39 ca                	cmp    %ecx,%edx
    40da:	72 04                	jb     40e0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    40dc:	39 c8                	cmp    %ecx,%eax
    40de:	72 f0                	jb     40d0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    40e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    40e3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    40e6:	39 cf                	cmp    %ecx,%edi
    40e8:	74 1e                	je     4108 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    40ea:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    40ed:	8b 48 04             	mov    0x4(%eax),%ecx
    40f0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    40f3:	39 f2                	cmp    %esi,%edx
    40f5:	74 28                	je     411f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    40f7:	89 10                	mov    %edx,(%eax)
  freep = p;
    40f9:	a3 40 63 00 00       	mov    %eax,0x6340
}
    40fe:	5b                   	pop    %ebx
    40ff:	5e                   	pop    %esi
    4100:	5f                   	pop    %edi
    4101:	5d                   	pop    %ebp
    4102:	c3                   	ret    
    4103:	90                   	nop
    4104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4108:	03 71 04             	add    0x4(%ecx),%esi
    410b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    410e:	8b 08                	mov    (%eax),%ecx
    4110:	8b 09                	mov    (%ecx),%ecx
    4112:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4115:	8b 48 04             	mov    0x4(%eax),%ecx
    4118:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    411b:	39 f2                	cmp    %esi,%edx
    411d:	75 d8                	jne    40f7 <free+0x47>
    p->s.size += bp->s.size;
    411f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    4122:	a3 40 63 00 00       	mov    %eax,0x6340
    p->s.size += bp->s.size;
    4127:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    412a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    412d:	89 10                	mov    %edx,(%eax)
}
    412f:	5b                   	pop    %ebx
    4130:	5e                   	pop    %esi
    4131:	5f                   	pop    %edi
    4132:	5d                   	pop    %ebp
    4133:	c3                   	ret    
    4134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    413a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004140 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4140:	55                   	push   %ebp
    4141:	89 e5                	mov    %esp,%ebp
    4143:	57                   	push   %edi
    4144:	56                   	push   %esi
    4145:	53                   	push   %ebx
    4146:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4149:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    414c:	8b 1d 40 63 00 00    	mov    0x6340,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4152:	8d 48 07             	lea    0x7(%eax),%ecx
    4155:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    4158:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    415a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    415d:	0f 84 9b 00 00 00    	je     41fe <malloc+0xbe>
    4163:	8b 13                	mov    (%ebx),%edx
    4165:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4168:	39 fe                	cmp    %edi,%esi
    416a:	76 64                	jbe    41d0 <malloc+0x90>
    416c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    4173:	bb 00 80 00 00       	mov    $0x8000,%ebx
    4178:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    417b:	eb 0e                	jmp    418b <malloc+0x4b>
    417d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4180:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4182:	8b 78 04             	mov    0x4(%eax),%edi
    4185:	39 fe                	cmp    %edi,%esi
    4187:	76 4f                	jbe    41d8 <malloc+0x98>
    4189:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    418b:	3b 15 40 63 00 00    	cmp    0x6340,%edx
    4191:	75 ed                	jne    4180 <malloc+0x40>
  if(nu < 4096)
    4193:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4196:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    419c:	bf 00 10 00 00       	mov    $0x1000,%edi
    41a1:	0f 43 fe             	cmovae %esi,%edi
    41a4:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    41a7:	89 04 24             	mov    %eax,(%esp)
    41aa:	e8 3b fc ff ff       	call   3dea <sbrk>
  if(p == (char*)-1)
    41af:	83 f8 ff             	cmp    $0xffffffff,%eax
    41b2:	74 18                	je     41cc <malloc+0x8c>
  hp->s.size = nu;
    41b4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    41b7:	83 c0 08             	add    $0x8,%eax
    41ba:	89 04 24             	mov    %eax,(%esp)
    41bd:	e8 ee fe ff ff       	call   40b0 <free>
  return freep;
    41c2:	8b 15 40 63 00 00    	mov    0x6340,%edx
      if((p = morecore(nunits)) == 0)
    41c8:	85 d2                	test   %edx,%edx
    41ca:	75 b4                	jne    4180 <malloc+0x40>
        return 0;
    41cc:	31 c0                	xor    %eax,%eax
    41ce:	eb 20                	jmp    41f0 <malloc+0xb0>
    if(p->s.size >= nunits){
    41d0:	89 d0                	mov    %edx,%eax
    41d2:	89 da                	mov    %ebx,%edx
    41d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    41d8:	39 fe                	cmp    %edi,%esi
    41da:	74 1c                	je     41f8 <malloc+0xb8>
        p->s.size -= nunits;
    41dc:	29 f7                	sub    %esi,%edi
    41de:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    41e1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    41e4:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    41e7:	89 15 40 63 00 00    	mov    %edx,0x6340
      return (void*)(p + 1);
    41ed:	83 c0 08             	add    $0x8,%eax
  }
}
    41f0:	83 c4 1c             	add    $0x1c,%esp
    41f3:	5b                   	pop    %ebx
    41f4:	5e                   	pop    %esi
    41f5:	5f                   	pop    %edi
    41f6:	5d                   	pop    %ebp
    41f7:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    41f8:	8b 08                	mov    (%eax),%ecx
    41fa:	89 0a                	mov    %ecx,(%edx)
    41fc:	eb e9                	jmp    41e7 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    41fe:	c7 05 40 63 00 00 44 	movl   $0x6344,0x6340
    4205:	63 00 00 
    base.s.size = 0;
    4208:	ba 44 63 00 00       	mov    $0x6344,%edx
    base.s.ptr = freep = prevp = &base;
    420d:	c7 05 44 63 00 00 44 	movl   $0x6344,0x6344
    4214:	63 00 00 
    base.s.size = 0;
    4217:	c7 05 48 63 00 00 00 	movl   $0x0,0x6348
    421e:	00 00 00 
    4221:	e9 46 ff ff ff       	jmp    416c <malloc+0x2c>
