0010 <__trap_interrupt>
0010:  3041           ret
4400 <__init_stack>
4400:  3140 0044      mov	#0x4400, sp
4404 <__low_level_init>
4404:  1542 5c01      mov	&0x015c, r5
4408:  75f3           and.b	#-0x1, r5
440a:  35d0 085a      bis	#0x5a08, r5
440e <__do_copy_data>
440e:  3f40 0000      clr	r15
4412:  0f93           tst	r15
4414:  0724           jz	$+0x10 <__do_clear_bss+0x0>
4416:  8245 5c01      mov	r5, &0x015c
441a:  2f83           decd	r15
441c:  9f4f 3a46 0024 mov	0x463a(r15), 0x2400(r15)
4422:  f923           jnz	$-0xc <__do_copy_data+0x8>
4424 <__do_clear_bss>
4424:  3f40 6400      mov	#0x64, r15
4428:  0f93           tst	r15
442a:  0624           jz	$+0xe <main+0x0>
442c:  8245 5c01      mov	r5, &0x015c
4430:  1f83           dec	r15
4432:  cf43 0024      mov.b	#0x0, 0x2400(r15)
4436:  fa23           jnz	$-0xa <__do_clear_bss+0x8>
4438 <main>
4438:  b012 2c45      call	#0x452c <login>
443c <__stop_progExec__>
443c:  32d0 f000      bis	#0xf0, sr
4440:  fd3f           jmp	$-0x4 <__stop_progExec__+0x0>
4442 <__ctors_end>
4442:  3040 3846      br	#0x4638 <_unexpected_>
4446 <unlock_door>
4446:  3012 7f00      push	#0x7f
444a:  b012 9445      call	#0x4594 <INT>
444e:  2153           incd	sp
4450:  3041           ret
4452 <test_password_valid>
4452:  0412           push	r4
4454:  0441           mov	sp, r4
4456:  2453           incd	r4
4458:  2183           decd	sp
445a:  c443 fcff      mov.b	#0x0, -0x4(r4)
445e:  3e40 fcff      mov	#0xfffc, r14
4462:  0e54           add	r4, r14
4464:  0e12           push	r14
4466:  0f12           push	r15
4468:  3012 7d00      push	#0x7d
446c:  b012 9445      call	#0x4594 <INT>
4470:  5f44 fcff      mov.b	-0x4(r4), r15
4474:  8f11           sxt	r15
4476:  3152           add	#0x8, sp
4478:  3441           pop	r4
447a:  3041           ret
447c .strings:
447c: "Enter the password to continue."
449c: "Remember: passwords are between 8 and 16 characters."
44d1: "Access granted."
44e1: "That password is not correct."
44ff: "Invalid Password Length: password too long."
452b: ""
452c <login>
452c:  3150 eeff      add	#0xffee, sp
4530:  f140 2a00 1100 mov.b	#0x2a, 0x11(sp)
4536:  3f40 7c44      mov	#0x447c "Enter the password to continue.", r15
453a:  b012 f845      call	#0x45f8 <puts>
453e:  3f40 9c44      mov	#0x449c "Remember: passwords are between 8 and 16 characters.", r15
4542:  b012 f845      call	#0x45f8 <puts>
4546:  3e40 3f00      mov	#0x3f, r14
454a:  3f40 0024      mov	#0x2400, r15
454e:  b012 e845      call	#0x45e8 <getsn>
4552:  3e40 0024      mov	#0x2400, r14
4556:  0f41           mov	sp, r15
4558:  b012 2446      call	#0x4624 <strcpy>
455c:  0f41           mov	sp, r15
455e:  b012 5244      call	#0x4452 <test_password_valid>
4562:  0f93           tst	r15
4564:  0524           jz	$+0xc <login+0x44>
4566:  b012 4644      call	#0x4446 <unlock_door>
456a:  3f40 d144      mov	#0x44d1 "Access granted.", r15
456e:  023c           jmp	$+0x6 <login+0x48>
4570:  3f40 e144      mov	#0x44e1 "That password is not correct.", r15
4574:  b012 f845      call	#0x45f8 <puts>
4578:  f190 2a00 1100 cmp.b	#0x2a, 0x11(sp)
457e:  0624           jz	$+0xe <login+0x60>
4580:  3f40 ff44      mov	#0x44ff "Invalid Password Length: password too long.", r15
4584:  b012 f845      call	#0x45f8 <puts>
4588:  3040 3c44      br	#0x443c <__stop_progExec__>
458c:  3150 1200      add	#0x12, sp
4590:  3041           ret
4592 <__do_nothing>
4592:  3041           ret
4594 <INT>
4594:  1e41 0200      mov	0x2(sp), r14
4598:  0212           push	sr
459a:  0f4e           mov	r14, r15
459c:  8f10           swpb	r15
459e:  024f           mov	r15, sr
45a0:  32d0 0080      bis	#0x8000, sr
45a4:  b012 1000      call	#0x10
45a8:  3241           pop	sr
45aa:  3041           ret
45ac <putchar>
45ac:  2183           decd	sp
45ae:  0f12           push	r15
45b0:  0312           push	#0x0
45b2:  814f 0400      mov	r15, 0x4(sp)
45b6:  b012 9445      call	#0x4594 <INT>
45ba:  1f41 0400      mov	0x4(sp), r15
45be:  3150 0600      add	#0x6, sp
45c2:  3041           ret
45c4 <getchar>
45c4:  0412           push	r4
45c6:  0441           mov	sp, r4
45c8:  2453           incd	r4
45ca:  2183           decd	sp
45cc:  3f40 fcff      mov	#0xfffc, r15
45d0:  0f54           add	r4, r15
45d2:  0f12           push	r15
45d4:  1312           push	#0x1
45d6:  b012 9445      call	#0x4594 <INT>
45da:  5f44 fcff      mov.b	-0x4(r4), r15
45de:  8f11           sxt	r15
45e0:  3150 0600      add	#0x6, sp
45e4:  3441           pop	r4
45e6:  3041           ret
45e8 <getsn>
45e8:  0e12           push	r14
45ea:  0f12           push	r15
45ec:  2312           push	#0x2
45ee:  b012 9445      call	#0x4594 <INT>
45f2:  3150 0600      add	#0x6, sp
45f6:  3041           ret
45f8 <puts>
45f8:  0b12           push	r11
45fa:  0b4f           mov	r15, r11
45fc:  073c           jmp	$+0x10 <puts+0x14>
45fe:  1b53           inc	r11
4600:  8f11           sxt	r15
4602:  0f12           push	r15
4604:  0312           push	#0x0
4606:  b012 9445      call	#0x4594 <INT>
460a:  2152           add	#0x4, sp
460c:  6f4b           mov.b	@r11, r15
460e:  4f93           tst.b	r15
4610:  f623           jnz	$-0x12 <puts+0x6>
4612:  3012 0a00      push	#0xa
4616:  0312           push	#0x0
4618:  b012 9445      call	#0x4594 <INT>
461c:  2152           add	#0x4, sp
461e:  0f43           clr	r15
4620:  3b41           pop	r11
4622:  3041           ret
4624 <strcpy>
4624:  0d4f           mov	r15, r13
4626:  023c           jmp	$+0x6 <strcpy+0x8>
4628:  1e53           inc	r14
462a:  1d53           inc	r13
462c:  6c4e           mov.b	@r14, r12
462e:  cd4c 0000      mov.b	r12, 0x0(r13)
4632:  4c93           tst.b	r12
4634:  f923           jnz	$-0xc <strcpy+0x4>
4636:  3041           ret
4638 <_unexpected_>
4638:  0013           reti	pc