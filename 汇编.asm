# 相同的一串十六进制数字

74				03		 	           JZ 0185
0111 0100 		0000 0011 	

E9 				97			00 		   JMP 019C
1011 1001    	1001 0111   0000 0000 


A 10
B 11
C 12
D 13 
E 14
F 15
翻译软件 就是编译器

1.汇编指令 	通过翻译软件将汇编语言翻译成机器语言（机器码）
2.伪指令	告诉编译器，也就是翻译软件
3.符号体系	

1.什么是机器指令？  0101 0000 00
2.机器指令由谁执行？ cpu
3.机器指令和汇编指令的关系？通过编译器，也就是翻译软件，将汇编指令翻译成机器指令
4.什么是编译器？翻译软件(编译器)
5.什么是伪指令？告诉翻译软件，这里怎么翻译，那里怎么翻译

汇编指令存放在哪里？	内存 
机器指令以什么形式存放在内存？ 二进制
内存的编号：从0开始 0123
内存的计量单位？ 

100万条汇编指令，存放在哪里？
内存 绝大数指令和数据存放在内存条中


内存编号为什么是 073F:08CE 这样的形式？

u指令和d指令的解释不同
u指令是机器指令和汇编指令
d指令是数据指令

CPU 如何区分u指令和d指令？
74H  0111 0100 
一个字节，2个16进制位，8个2进制位
内存的最小单元是bite，1byte=8bit 1bite=1个2进制位
1kb=1024byte=1024*8bit

内存编号为什么从0开始？
cpu存放一部分指令和数据，大部分在内存中

指令和数据在内存中是没有任何区别的

Cpu 从内存条中读取指令和 数据 ，怎么做？ 写入，放回到内存中

主板电路表示3中信息
1.内存编号信息	地址线	内存地址
2.数据信息		数据线
3.读写信息		控制线

电路 只能表示高低点评，高电平为1，低电平为0
地址线的数量决定了能找到的多大的地址
寻址能力， 
1.内存编号为什么从0开始？物理限制，最小从0，低电平开始
2.什么叫寻址能力？ 地址线的数量决定了能找到的多大的地址


数据线和控制线

数据线决定cpu 和其他不见进行数据传送时一次性能够传送的数据　
1.cpu 的寻址能力为 8kb，地址总线的宽度为：13  8*1024byte 8192个地址格，byte 2^3，1024=2^10,8kb=2^13,
2.1kb的存储器有1024个存储单元从0到1023
3.1kb的存储器可以存储1024*8个bit，1024Byte
4. 8080，8088，的地址总线宽度为16根，20根，则寻址能力分别为2^16=2^6*2^10=64kb,2^20=1024kb=1mb
24根的寻址能力        2^24=2^4*2^10*2^10=16mb
32根         2^8*16mb=4gb
数据总线为8根，16根32根，依次可以传送 1byte    2Byte  4B
从内存中读取1024字节的数据，8086有16根数据线，至少要读512次，一次两个字节
存储器中，数据和程序指令以二进制存取

p33
e B800：400 回车
 1 空格 1空格
 2 空格 2 空格
 e 修改内存地址的内容 
 显存也是内存的一种
 RAM 允许读取和写入
 ROM 只读
 
 
 cpu给鼠标，键盘，音响编号，通过端口号访问，
 
 汇编语言是针对cpu的地址线，数据线，控制线的
 通过汇编语言中的汇编指令去修改寄存器中的内容从而控制整个计算机
 
 AX 是数据寄存器，地址寄存器
 
 p37
 AX BX CX DX 是通用寄存器，存放数据的，数据寄存器，箱子是有容量的
 
1byte=8bit
2byte=16bit  0000 0000 0000 0000 -1111 1111 1111 1111 一共6535 
				AH     AL
都是16位寄存器
但是他们可以各自分割位两个8位寄存器，
AX = AH + AL	AX的高8位构成AH寄存器
0000 0000~1111 1111 0~255 256
为了兼容8位寄存器
内存的最小单元是字节，8bit
cpu 从内存中读取一个字节，8bit 字节型数据，8位数据->8位寄存器中
数据线的宽度决定了cpu一次性读取多长的数据
字节型数据 byte 8bit 8位寄存器中
字型数据 2byte =16bit 放在16位寄存器中
一个字节是字型数据的高位字节AH ，还有一个低位字节

在使用mov指令时，要保证数据与寄存器之间的位数一致性
mov 将右边的数据给左边	8位寄存器给8位寄存器，8位数据给8位寄存器，16位数据给16位寄存器

加法超过寄存器
8位寄存器进行8位运算，保存8位寄存器，寄存器是相互独立的，al就是al，ah是ah不会互相影响

写出每条指令执行后的相关寄存器的值

mov ax,62627			ax=F4A3H
mov ah,31h				ax=31A3H
mov al,23h				ax=3123H
add ax,ax 				ax=6246H
mov bx,826ch   			bx=826CH	
mov cx,ax				cx=6246H
mov ax,bx				ax=826cH
add ax,bx				ax=04D8H
mov ah,bl				ax=6c82h
add ah,ah				ax=D882H
add al,6				ax=D888H
add al,al				ax=D810H
mov ax,cx 				ax=6246H

只使用目前学过的汇编指令，编程计算2的4次方 2*2*2*2
mov ax,2
add ax,ax
add ax,ax
add ax,ax

p41
ds es ss cs 

段地址：      	偏移地址
段地址寄存器  	偏移地址寄存器
ds	          	sp
es			  	bp
ss				si
cs				di	
				ip
				bx 
8086 cpu 有20根地址线 0000 0000 0000 0000 0000 ~ 1111 1111 1111 1111 1111
地址线的数量决定了cpu的寻址能力

地址加法器		地址的计算方式
短地址 x 16(10H) +偏移地址= 物理地址
段地址 X 16=基础地址
段地址			偏移地址
F230H x 10H		C8H =F23C8H   

段地址*16是因为2的四次方，将16位数扩至20位刚好对应20位地址线

段地址为0001 H ，仅仅通过变化偏移地址寻址，cpu 的寻址范围 
0001*10+(0~ffff)=10H~10H+FFFFH=1000Fh

数据存放在内存20000H单元中，给段地址SA，若想用偏移地址寻找到此单元，则SA应该满足的条件最小 和最大
SA*10H+(0~FFFFH )=20000H
20000H / 10H=2000H
20000H-FFFFH =10001H ,10001H / 10H =1000H
SA =1000H *10H =10000H ,10000H+FFFFH =1FFFFH不是20000H
SA =1001H *10H =10001H，＋FFFFH ＝20000H 


cpu 是如何区分指令和数据
u指令 将某个内存的地址开始的字节全部当多指令
d指令 将某个内存地址开始的字节全部当作数据
8086cpu在任意时刻，cpu将cs，ip指向的内存单元所指的内容全部当作指令来执行
在内存中，指令和数据是没有任何区别的，都是二进制信息，cpu只有在工作的时候才将有的信息当作指令，有的信息当作数据

机器码				汇编指令
b8 20
p46

汇编指令
指令是有长度的，一条指令可以由多个字节构成

指令的执行过程
1.cpu从cs:ip所指向的内存单元读取指令，存放到指令缓存器中
2.ip =ip +所读指令的长度，从而指向下一条指令
3.执行指令缓存器的内容，回到步骤1
为了实现一个功能
ip 寄存器和指令的关系


汇编指令 jmp jump
转移指令，可以修改CS 和 IP 2个寄存器，决定了cpu从哪里读取指令
jmp 2000:0
jmp 寄存器

题目：
1.假设CS=2000H，IP=0000 写出下列指令的执行过程

a 2000:0
mov ax,6622H
jmp 1000:3
mov cx,ax

a 1000:0
mov ax,0123H
mov ax, 0
mov bx,ax
jmp bx
mov cx,0

p48
call 转移指令 

下面3条指令执行后，cpu几次修改ip再什么时候？最后ip的值是多少
mov ax,bx    =》存放到指令缓存器中=》1=》执行ax =ax
sub ax,ax   =》存放到指令缓存器中=》1=》执行 ax =ax-ax ax=0
jmp ax     存放到指令缓存器中，=》1=》执行  1  ip=0
修改4次IP 最后ip为0

debug调试工具
r		查看，改变寄存器中的内容
d		查看内存中的内容
u		将内存中的机器指令翻译成汇编指令
a		一汇编指令的格式在内存中写入，可以覆盖原先的指令
t		执行 当前cs:ip 所指向的机器指令
e 		改写内存的内容


ASCII 编码 数字符号，英语字母

cpu是如何区分指令和数据的？
在任意时刻cpu将段地址寄存器cs和偏移地址寄存器ip所组合出来的地址从中读取的内容全部当作指令来执行。

指令是有长度的，和ip寄存器有关
p54
第三章	内存

一个字型数据 存放在内存中，可以由两个连续的地址单元组成
高地址内存单元存放字型数据的高位字节
低地址内存单元存放字型数据的低位字节 

ds段地址寄存器，访问数据

mov 寄存器，数据		mov ax,8
mov 寄存器，寄存器		mov ax,bx
mov 寄存器，内存单元	mov ax,[0]
mov 内存单元，寄存器	mov [0],ax
mov 段寄存器，寄存器	moc ds,ax

p58

ds 段地址寄存器
cs 指令有关
指令
 
 
mov ax,1
mov ds,ax 		 确定了内存地址的段地址

mov ax,ds:[0]	
 
p63 栈
栈是一段连续的内存单元，也就是一段连续的内存地址

和 mov 指令区别最大的地方

入栈 push	将16为寄存器或者内存中的字型数据-》 栈顶标记的上面	修改栈顶标记
出栈 pop	将栈顶标记所标识的 字型数据-》16位寄存器或者内存中	修改栈顶标记
看成是数据
数据从哪里来	寄存器中，	内存中
数据的长度	字型数据

栈顶标记 是 内存地址 由段地址和偏移地址来表示
在8086cpu中 在任意时刻，将 段地址寄存器ss和偏移地址寄存器sp所组合出来的 内存地址  当作栈顶标记
push ax			修改sp寄存器中的数值sp=sp-2
				将ax中 字型数据-》 ss：sp 所组合出来的内存地址中
				
pop bx		ss：sp所组合出来的 内存地址 中的字型数据-》bx
			修改栈顶标记 sp=sp+2 		成为新的栈顶标记 出栈
			


p67

我们可以决定栈顶标记在哪里
即栈在哪里，栈的大小
sp =10 H

16byte =8字型数据  push 可以操作8次
设置栈
起始地址+所设定的栈的大小的字节数
0000 + 16（10H） = 10 H ，ss：sp组合的栈顶标记



栈顶的越界

栈的最大空间
push 和 pop 只影响sp寄存器，sp 寄存器的变化范围
0~ FFFF   32768个字型数据
ss = 2000H   sp=0 设置了可以存放32768个字型数据的箱子

栈的作用
临时性保存数据
用栈进行数据交换

p72
检测点：
补全下面的程序，使其将 10000H ~ 1000FH中的8个字型数据，逆序复制到20000H~2000FH中
10000H 23H  =>逆序变成      20000H 33H
10001H 01H				    20001H 11H
10002H 66H					20002H 44H
10003H 22H  				20003H 78H
....						
1000CH 44H					
1000DH 78H					
1000EH 33H					2000EH 23H
1000FH 11H					2000FH 01H

程序：
mov ax,1000H
mov ds,ax   # 寄存器 ds=1000H
mov ax,2000H
————————————   #设置一个栈，对ss:sp 设置
mov ss,ax
————————————
mov sp,10H
————————————

push ds:[0]      # 1000H*10H + 0 = 10000H 字型数据 0123H 放入栈中
push ds:[2]		#push 指令步骤：1,sp=sp-2；2，向ss:sp指向的单元写入数据
push ds:[4]     #向2000E写入数据，首先sp=sp+2为初始sp地址，2000E+2=20010；
push ds:[6]
push ds:[8]
push ds:[A]
push ds:[C]
push ds:[E]

每执行一条t指令，就会将寄存器数据保存在栈中， 栈是临时性保存数据
call ip 保存到栈，为了让ret指令可以从栈中拿回来。


承上启下
我们在一段内存中 存放数据   数据段       		存放我们自己定义的数据
也可以在一段内存中存放指令  指令段（代码段）	存放我们自己定义的指令
将一段内存定义为 栈空间	因为我们处理数据的时候需要临时性的存放，栈段

对于数据来说，段地址-》ds 段地址寄存器，[0] [1].... mov add sub 指令去访问 内存单元
cpu可以将我们定义的 数据段的内容当作数据来访问
对于代码段，可以通过修改cs:ip指向我定义的代码段，CPU就会执行我们定义的代码段的指令

通过修改ss：sp两个寄存器来决定栈顶标记在那里
cpu在执行栈的操作时，push pop 就会将我们定义的  栈段 当作栈空间使用
进行临时性的数据存放或取出

内存段的安全 数据段  代码段 栈段
随意向内存空间写入内容是危险的
向安全的内存空间去写入内容
0:200~0:2ffh
256个字节
使用操作系统，操作系统给你分配的内存空间 是安全的

编译和链接
编译


exe可执行文件

link
系统要运行exe文件时，需要分配给他一段内存
exe 文件中除了整个程序 ，还包括文件有多大，程序在哪里
描述信息
系统就是根据这些描述信息，对寄存器进行相关的设置
start 伪指令 是告诉翻译软件 start 伪指令 在exe文件中的描述信息
就是将我们设置的程序的入口地址在哪里，记录exe文件描述信息中
然后系统通过描述文件的内容，去设置cs，ip以及其他一些内存

源代码文件 asm
汇编语言

汇编指令：被编译器翻译成00101001机器指令，机器码，最终由CPU执行
伪指令：由编译器执行的
符号体系：由编译器执行的
data segment 告诉编译器 data段从这里开始
data ends 	  告诉编译器 data段在这里结束  为了分配内存
段的名字随意取 

程序的跟踪 debug+程序名
cx=程序的长度
p执行 int指令
q退出
psp区  从ds；0 开始的256个字节
我们程序的名字
系统加载程序到内存中
它是用来 系统和程序之间进行的通信


p91
inc bx  将bx中的值+1 为了节约内存

如何修改重复的指令
jmp 指令，直接修改 cs：ip中的指令

如何编译asm文件
https://bingyishow.top/Technical-article/54.html

masm t1.asm
link t1.obj
debug t1.exe


mov cx, 循环次数
s:
	循环执行的程序段
	loop s
assume cs:code 
code segment
	mov ax,0
	mov cx,123
	
addNumber:	add ax,236
	        loop addNumber ;addNumber 就是内存地址
	mov ax,4c00h  ;程序返回，暂时不管
	int 21h
code ends
end	

	
编程题：
编程求FFFF:0到FFFF:F 字节型数据 的和 结果存放在dx中
mov ax,0FFFFH
	mov ds,ax
	
	mov bx,0
	mov cx,16
	
	mov ax,0	;ah=0  al= 读取的字节数据
	
addNumber:	mov al,ds:[bx]
			add dx,ax
			inc bx
			loop addNumber
编程题
将内存 FFFF:0~FFFF:F内存单元中的数据复制到 0:200~0:20F中
	mov ax,0ffffH
	mov ds,ax
	mov bx,0
	mov cx,16
	
setnumber:	push ds ;mov ds,0FFFFH 方法2;将ds=ffff复制ss:sp 的栈段中
			mov dl,ds:[bx]
	
			mov ax,20H
			mov ds,ax
			mov ds:[bx],dl
			inc bx
			pop ds		;将 ss:sp栈段中的FFFF返还给ds
			loop setnumber
	
		mov ax,4c0h
		int 21H
		
			mov cx,8;循环8次 快一倍
	
setnumber:	mov dx,ds:[bx]
			mov es:[bx],dx  ;每次传输一个字型数据
			add bx,2  
			loop setnumber

	mov cx,8
	
setnumber:	push ds:[bx]  ;直接入栈出栈，节省寄存器
			pop es:[bx]
			add bx,2

es 寄存器和数据相关
ds 代表数据从哪里来，es代表数据到哪里去

习题2
下面程序的功能将“mov ax,4c00H"之前的指令复制到内存0:200处，补全程序
assume cs:code
code segment 
			mov ax,____    ;mov ax,cs
			mov ds,ax
			mov ax,0020H
			mov es,ax
			mov bx,0
			mov cx,_____	;mov cx，指令的个数
			
			
s:			mov al,ds:[bx] 
			mov es:[bx],al
			inc bx
			loop s
			
			mov ax,4c00h
			int 21h
code ends
end

dw;d=define w=word  定义字型数据

如何定义自己的栈（通过系统分配的内存）

exe文件debug的时候，系统会分配内存

检测点6.1 题2
		dw 0123H,0456H,0789H,0ABCH,0DEFH,0FEDH,0CBAH,0987H
		dw 0,0,0,0,0,0,0,0
		;dw 0,0,0,0,0,0,0,0
start:
		mov ax,cs
		mov ss,ax
		mov sp,32
		
		mov ax,0
		mov ds,ax
		mov bx,0
		mov cx,8
s:
		push ds:[bx]
		pop cs:[bx]
		add bx,2
		loop s
		
		mov ax,4c0h
		int 21H
		
编写code段中的代码，将a段和b段的数据依次相加，结果存放到c段中
asume cs:code
a segment 
		db 1,2,3,4,5,6,7,8 ;denfine  byte 字节型数据
a ends

b segment 
		db 1,2,3,4,5,6,7,8
b ends
c segment 
		db 0,0,0,0,0,0,0,0
c ends
code segment
	start:
	?
	
	code ends
end start
******************************************************
start: mov ax,a  ;a 段的段地址给ds
		   mov ds,ax
		
		mov ax,c
		mov es,ax
		
		mov bx,0
		mov cx,8  ;循环次数
addnumber:
		push ds; 先将a的段地址保存到栈中
		mov dx,0 ;将dx寄存器初始化，dx的dl为0
		mov dl,ds:[bx] ; a段的数据给dl寄存器
		mov ax,b  ;
		mov ds,ax ;将b段的短地址给ds寄存器
		add dl,ds:[bx] ;将b段的数据给寄存器后加上dl数据，再给dl
				
		mov es:[bx],dl;dl相加的数据给c段
		inc bx;此时ds的段地址为b段地址，循环后应该为a地址
		pop ds;栈中的a地址替换此时ds中的b段地址
		loop addnumber

*********************************************************
程序如下，使用push指令将a段中的前8个字型数据，逆序复制到b段中
assume cs:code
a segment 
	dw	1,2,3,4,5,6,7,8,0AH,0BH,0CH,0DH,0EH,0FH.0FFH
a ends
b segment 
	dw 0,0,0,0,0,0,0,0
b ends
code segment
start:	


	
		mov ax,4C00H
		int 21H
code ends
end start
************************************************
start:	
		mov ax,b
		mov ss,ax
		mov sp,16
		
		mov ax,a
		mov ds,ax
		mov bx,0
		mov cx,8
set:	push ds:[bx]
		add bx,2
		loop set
	
		mov ax,4C00H
		int 21H
************************************************






数据处理的两个基本问题
数据的长度
不使用寄存器来确定数据的长度




div指令 除法指令
除数：8位和16位两种，，在一个寄存器或者内存单元中
被除数：默认放在ax或者 ax和dx中
	如果除数为8位，被除数为16位，默认放在ax中
	如果除数为16位，被除数魏32位，dx存放高16位，ax存放低16位
	
	结果：如果除数8位，al存储除法操作的商，ah存储除法操作的余数
	如果除数为16位，ax存储除法的商，dx存储除法操作的余数 

题目：
利用除法指令计算 100001/100


实验7
寻址方式在结构化数据访问中的应用
将data 段中的数据，按照如下格式写入到table段中，并计算21年中的人均收入（取整），结果
按照下面的格式保存在table段中
******************************************************************************************************
assume cs:code,ds:data,ss:stack

data segment 
					db	'1975','1976','1977','1978','1979','1980','1981','1982','1983'
					db	'1984','1985','1986','1987','1988','1989','1990','1991','1992'
					db	'1993','1994','1995'
					;以上表示21年的21个字符串
					dd	16,22,382,1356,2390,8000,16000,24486,50065,97479,140417,197514
					dd	345980,590827,803530,1183000,1843000,2759000,3753000,4649000,5937000
					;总收入
					dw	3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8556
					dw	11542,14430,15257,17800 ;员工数
data ends

table segment 				  ; 0123456789ABCDEF
					db 21 dup('year summ ne ?? ')
table ends
stack segment stack
		db	128 dup(0)
stack ends

code segment 
	start:		mov ax,stack
				mov ss,ax
				mov sp,128  ;设置stack段地址
				
				mov ax,data
				mov ds,ax	;设置data段地址
				
				mov ax,table;设置table段地址
				mov es,ax
				
				mov si,0	;ds:[si] data段年份
				mov di,21*4 ;ds:[di] data段收入
				mov bx,168	;ds:[bx] data段员工
				mov bp,0	;es:[bp] table段数据
				
				mov cx,21
 inputtable:
				push ds:[si]
				pop  es:[bp]
				push ds:[si+2]
				pop  es:[bp+2]
				
				mov ax,ds:[di]
				mov dx,ds:[di+2]
				mov es:[bp+5],ax
				mov es:[bp+7],dx
				
				push ds:[bx]
				pop  es:[bp+0Ah]
				div word ptr ds:[bx]
				mov es:[bp+0DH],ax
				
				add si,4
				add di,4
				add bx,2
				add bp,16
				loop inputtable
				
				mov ax,4c00h
				int 21h
code ends
end start	
************************************************************************************

转移指令
可以修改ip或者同时修改cs和ip

jmp     无条件转移指令
loop	条件转移指令

实验8
-----------------------------------------------
assume cs:code
code segment 
				mov ax,4c0h
				int 21h
				
		start:  mov ax,0 ;第一条指令开始
		s:		nop		;cpu 遇到nop指令什么都不做，占用一个字节
				nop
				
				mov di,0FFSET s	;得到标号s的偏移地址给di	 
				mov si,0FFSET s2	;得到s2的偏移地址给si
				mov ax,cs:[si]	;将cs:si地址指向的内容(jmp short s1 的机器码)给ax
				mov cs:[di],ax  ;将ax的内容给cs：di指向的内存即 s:
				
		s0:		jmp short s		;执行s的内容，ip-10到s
		
		s1:		mov ax,0
				int 21h
				mov ax,0
				
		s2:		jmp short s1 ;转移指令，短转移-128~127 向前执行10个字节，即ip-10
				nop
				
code ends
end start
			
-----------------------------------------------
jcxz 条件转移指令
j=jmp cx=cx寄存器	z=zero=0
当cx寄存器中的值=0 的时候进行 jmp
loop 指令 cx中的值不等于0时候进行跳转

所有条件的转移指令都是短转移，位移范围在-128~127
经过编译后机器码 包含了位移的范围

短转移的机器码为 	EBxx
编译器在编译时候计算的标号处的偏移地址——jmp指令后的第一个字节的位置

------------------------------------------------------------
检测点9.2
补全程序 利用jcxz 指令 实现在内存2000h段中查找第一个值为0 的字节找到后将它的偏移地址存在dx中
cx是16位，可以分为 cx=ch+cl		cx=0 ch=0 cl=0
assume cs:code 
code segment 
		start:	mov ax,20000h
				mov ds,ax
				mov bx,0
		s:		_______		mov ch,0;cx高8位为0	
				_______		mov cl,ds:[bx];读取内存2000h的字节数据
				_______		jcxz ok;如果cx为0，跳转到ok段
				_______		inc bx
				jmp short s	;进行循环
				
		ok:		mov ds,bx
				mov ax,4c00h
				int 21h
code ends
end start			

------------------------------------------------------------
loop指令
cx=cx-1
不等于0进行跳转，等于0执行下面指令
---------------------------------------------------------
检测点9.3补全程序，利用loop指令，实现在内存2000h段中查找第一个值为0的字节，找到后，将他的偏移地址存在ds中


---------------------------------------------------------
jmp dword ptr 内存单元地址（段间转移）
cs=内存单元+2
ip=内存单元地址
例如：
jmp dword ptr es:[1000h];ip=es:[1000h],cs=es:[1000h+2]

ASCII码


实验9
---------------------------------------
assume cs:code,ds:data,ss:stack
data segment 	
				;0123456789ABCDEF
		db		'welcome to masm!'
		
		db		00000010B;
		db		00100100B
		db		01110001B	
data ends

stack segment stack
		db	128 dup(0)
stack ends

code segment 
		start:	mov ax,stack
				mov ss,ax	;定义一个栈
				mov sp,128
				
				;数据从那里来
				mov bx,data		;将data段的段地址给ds
				mov ds,bx
				
				mov bx,0b800h	;显示器的缓存区域 B8000H~BFFFFH 32kb空间是80列 x 25行彩色字符模式
				mov es,bx		;es为显示段地址
				
				mov si,0
				mov di,160*10+30*2 ;缓冲区的位置 第十行 第30列
				mov bx,16 ;
				mov dx,0
				
				mov cx,3
				
showmasm:		push bx
				push cx
				push si
				push di
				
				mov cx,16		;循环16次
				mov dh,ds:[bx]  ;将ds:16即data段第二行的第一个字节给dh，第一个字节代表绿色
				
show:			mov dl,ds:[si];将ds:0的数据给dl寄存器
				mov es:[di],dx;此时dx的dl为数据，dh为状态，整个字型数据直接给缓存区域
				add di,2	;缓存+2
				inc si		;si为data段的偏移地址，一个一个加
				loop show
				
				pop di
				pop si
				pop cx
				pop bx
				add di,160;换下一层
				inc bx		;将ds:17的属性给赋给dh
				loop showmasm
				mov ax,4c00h
				int 21h
				
code ends
end start
-------------------------------------------------------------

根据位移修改ip寄存器，进行转移指令的优势

jmp 标号
jmp short 标号
jmp near 标号
jcxz 标号
loop 标号

位移=标号处的偏移地址—转移指令后的第一个字节地址





1.设计一个程序，程序处理的字符串以 0结尾，并且显示在屏幕上
2.在屏幕显示4个字符串，每一行需要换行
------------------------------------------------

assume cs:code,ds:data,ss:stack
data segment    ;0123456789ABCDEF
		db 		'1) restart pc ',0
		db		'2) start system',0
		db		'3) show clock ',0
		db		'4) set clock ',0
		
				
data ends

stack segment stack
		db 		128 dup(0)
stack ends

code segment 
	start:		mov ax,stack
				mov ss,ax
				mov sp,128  ;设置栈
				
				call init_reg  ; 数据初始化  首先将下一行指令的ip推入栈中，然后跳转到init_reg
				mov si,0
				mov di,160*10+30*2
				
				call show_string
				
				mov si,15
				mov di,160*11+30*2
				call show_string 
				
				mov si,1fh
				mov di,160*12+30*2
				call show_string 
				
				mov si,2EH
				mov di,160*13+30*2
				call show_string 

				
				mov ax,4c00h
				int 21h
show_string:	
				mov cx,0
				
showString:		mov cl,ds:[si]  ;data段的地址ds:0给cl寄存器
				jcxz showStringRet  ;判断cx寄存器是否为0，如果为0 跳出循环，执行showStringset指令
				mov es:[di],cl ;将cl的数据给es：di即显示器 
				add di,2  ;es:di偶数为数字，奇数为属性，+2
				inc si 
				jmp showString   ;继续循环
				
showStringRet: 	ret ;恢复之前入栈的ip执行call 下一条指令
				
init_reg:	mov bx,0B800H
			mov es,bx
			mov bx,data   ;data的段地址给bx》ds=data段地址
			mov ds,bx
			ret			



code ends
end start 
----------------------------------------------
改进
/////////////////////////////////////////////////
assume cs:code,ds:data,ss:stack
data segment    ;0123456789ABCDEF
		db 		'1) restart pc ',0
		db		'2) start system',0
		db		'3) show clock ',0
		db		'4) set clock ',0
		dw		0,15,1FH,2EH
				
data ends

stack segment stack
		db 		128 dup(0)
stack ends

code segment 
	start:		mov ax,stack
				mov ss,ax
				mov sp,128  ;设置栈
				
				call init_reg  ; 数据初始化  首先将下一行指令的ip推入栈中，然后跳转到init_reg
				
				call show_option
				
				mov ax,4c00h
				int 21h
				
				
show_option	:	
				
				mov cx,4
				mov di,160*10+30*2
				mov bx,3CH
				
showOption:		mov si,ds:[bx+0]
				call show_string
				add di,160
				add bx,2
				loop showOption ;loop指令cx-1
			
				
				ret

show_string:	
				push cx ;防止和外界的寄存器冲突
				push ds
				push es
				push si
				push di
				
				mov cx,0
				
showString:		mov cl,ds:[si]  ;data段的地址ds:0给cl寄存器
				jcxz showStringRet  ;判断cx寄存器是否为0，如果为0 跳出循环，执行showStringset指令
				mov es:[di],cl ;将cl的数据给es：di即显示器 
				add di,2  ;es:di偶数为数字，奇数为属性，+2
				inc si 
				jmp showString   ;继续循环
				
showStringRet: 	
				pop di
				pop si
				pop es
				pop ds
				pop cx
				
				ret ;恢复之前入栈的ip执行call 下一条指令
				
init_reg:	mov bx,0B800H
			mov es,bx
			mov bx,data   ;data的段地址给bx》ds=data段地址
			mov ds,bx
			ret			



code ends
end start 

/////////////////////////////////////////////////
课程设计1
实验10 ，编写3个子程序，用于完成独立的实验
1.显示字符串（在屏幕的某个位置显示字符串）
2.解决除法溢出的问题
3.数值显示问题，（数据变成字符串然后显示）

采用32位除法
程序名： short_div
ax,dx 保存数据（dx=0）
cx=除数（注意cx是16位寄存器，说明除数是16位
ax=商
dx=余数+30H ——》 显示在屏幕上
ax=0 商等于0，说明除法结束了， jcxz 判断

assume cs:code,ds:data,ss:stack

data segment 
		dw 1234
data ends

stack segment
		db 128 dup(0)
stack ends

code segment 
	start:		mov ax,stack
				mov ss,ax
				mov sp,128
				
				mov bx,data
				mov ds,bx
				mov si,0
				
				mov bx,0B800H
				mov es,bx
				mov di,160*10
				add di,40*2
				 
				mov ax,ds:[si] ;ax=商，dx=余数
				mov dx,0 
				
				call short_div
				
				mov ax,4c00h
				int 21H

short_div:		
				mov cx,10 ; 除数是cx
				div cx	
				add dl,30H ;显示到屏幕的ASII码
				mov es:[di+0],dl ;将dl的ASII码给屏幕
				mov byte ptr es:[di+1],00000010B;给字符串的属性
				mov cx,ax
				jcxz shortDivRet ;如果cx=0，跳转到
				mov dx,0 ;dx余数恢复为0
				sub di,2 ;从右向左
				jmp short_div

shortDivRet:	
				ret



code ends

end start















////////////////////////////////////////////////



第十一章  标志位寄存器
标志		真值1		假值0
OF 			OV			NV
SF			NG			PL

实验11
////////////////////////////
assume cs:code,ds:data,ss:stack
data segment 
	db "Beginer's All - purpose Sumbolic Instruction Code",0
data ends
stack segment stack
	db 128 dup(0)
stack ends

code segment 
	start:	mov ax,stack
			mov ss,ax
			mov sp,128
			
			call init_reg ;显示初始化
			call init_data
			call show_string1
			call up_letter
			
			mov di,160*13+20*2
			call show_string1
			
			mov ax,4c00h
			int 21h
;=============================
init_data:
			mov si,0
			mov di,160*12+20*2
			ret
			
;================================
show_string1:
			push dx
			push ds
			push es
			push si
			push di

showString:
			mov dl,ds:[si]
			cmp dl,0
			je showString ;如果dl=0，跳转到showString
			mov es:[di],dl
			add di,2
			inc si
			jmp showString
			
			
show_string2:
			pop di
			pop si
			pop es
			pop ds
			pop dx
			
			ret
;=================================	
init_reg:	
			mov bx,data
			mov ds,bx
			
			mov bx,0B800H
			mov es,bx
			ret
			
			
;========================================
up_letter:	push dx
			push ds
			push es
			push si
			
			
			mov si,0 ;对si初始化
			
upletter:	mov dl,ds:[si]
			cmp dl,0
			je upletterRet ;dl为0，字符串最后一个，跳转到upletterRet
			cmp dl,'a'
			jb nextletter ;dl比'a'小，说明不是小写字母，跳转到下一个字母
			cmp dl,'z'
			ja nextletter ;比'z'大，不是小写字母
			
			and byte ptr ds:[si],11011111B ;小写字母边大写字母
nextletter:
			inc si
			jmp upletter			
upletterRet:
			
			pop si
			pop es
			pop ds
			pop dx
			
			ret ;回到调用之前的指令
;=========================================
			
code ends
end start


///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
assume cs:code,ds:data,ss:stack

data segment
		db	'1975','1976','1977','1978','1979','1980','1981','1982','1983'
		db	'1984','1985','1986','1987','1988','1989','1990','1991','1992'
		db	'1993','1994','1995'
		;以上是表示21年的21个字符串 year


		dd	16,22,382,1356,2390,8000,16000,24486,50065,9749,14047,19751
		dd	34598,59082,80353,11830,18430,27590,37530,46490,59370
		;以上是表示21年公司总收入的21个dword数据	sum

		dw	3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8226
		dw	1154,1443,1525,1780
data ends

table segment

	        	;0123456789ABCDEF
	db	21 dup ('year summ ne ?? ')
		
table ends

stack segment stack
	db	128 dup (0)
stack ends



code segment

	start:	mov ax,stack
		mov ss,ax
		mov sp,128
		
		call input_table
		call clear
		call output_table
		
		
		


		mov ax,4C00H
		int 21H
clear:
				mov bx,0B800H
				mov es,bx
				mov bx,0
				
				mov dx,0700h ;z白色
				mov cx,2000
				
clearscreen:	mov es:[bx],dx
				add bx,2
				loop clearscreen
	
				ret
output_table:	
				mov bx,table
				mov ds,bx
				mov si,0
				
				mov bx,0B800H
				mov es,bx
				mov di,160*3 ;行
				
				mov cx,21
outputTable:	
				call show_year
				call show_summ
				call show_ne
				call show_average
				
				add di,160  ;换行
				add si,16
				loop outputTable
				ret
	            ;0123456789ABCDEF
	;db	21 dup ('year summ ne ?? ')	
	;====================================
show_average:	
				push ax
				push bx
				push cx
				push dx
				push ds
				push es
				push si
				push di

				mov ax,ds:[si+13]
				mov dx,0
				
				add di,50*2
				call short_div
				
				pop di
				pop si
				pop es
				pop ds
				pop dx
				pop cx
				pop bx
				pop ax	
					
				ret
show_ne:		
				push ax
				push bx
				push cx
				push dx
				push ds
				push es
				push si
				push di
				mov ax,ds:[si+10]
				mov dx,0
				
				add di,30*2
				call short_div
				
				pop di
				pop si
				pop es
				pop ds
				pop dx
				pop cx
				pop bx
				pop ax
				ret
				
				
show_summ:		push ax
				push bx
				push cx
				push dx
				push ds
				push es
				push si
				push di
				
				mov ax,ds:[si+5]
				mov dx,ds:[si+7]
				
				add di,25*2
				call short_div
				pop di
				pop si
				pop es
				pop ds
				pop dx
				pop cx
				pop bx
				pop ax
				
				ret
short_div:		
				mov cx,10
				div cx
				add dl,30H
				mov es:[di+0],dl
				mov byte ptr es:[di+1],00000010B ;加颜色
				mov cx,ax
				jcxz shortDivRet
				mov dx,0
				sub di,2
				jmp short_div
				
				
shortDivRet:	ret				
show_year:		
				push ax
				push cx
				push ds
				push es
				push si
				push di
				
				mov cx,4  ;
				add di,3*2;列
				
showYear:		mov al,ds:[si]
				mov es:[di],al
				add di,2
				inc si
				loop showYear
				
				pop di
				pop si
				pop es
				pop ds
				pop cx
				pop ax 
				ret
		
input_table:	mov bx,data
				mov ds,bx
				mov si,0
				
				mov bx,table
				mov es,bx
				mov di,0
				
				mov bx,21*4*2 ;21行，4列，每列2字型
				mov cx,21
				
				
inputTable:		
				push ds:[si+0] ;从数据段ds：0低8位给table 段es低8位
				pop es:[di+0]
				push ds:[si+2]
				pop es:[di+2]
				
				mov ax,ds:[si+21*4+0] ;将year低8位即01给第4个栈段
				mov dx,ds:[si+21*4+2] ;将year高8位23给第四个栈段
				
				mov es:[di+5],ax
				mov es:[di+7],dx
				
				push ds:[bx]
				pop es:[di+10]
				
				div word ptr es:[di+10]
				mov es:[di+13],ax
				
        	    ;0123456789ABCDEF
;	db	21 dup ('year summ ne ?? ')	
				add di,16
				add si,4
				add bx,2
				
				loop inputTable
				ret
code ends



end start
;=========================================================================
===========================================================================
============================================================================


第十二章 内中断
中断信息
1.除法错误 divide overflow
2.单步执行
3.执行into指令
4.执行int指令

cs:ip ==》需要处理的程序入口，短地址：偏移地址
中断向量表
0号处理中断信息的程序地址
1号处理中断信息的程序地址

实验12 编写0号中断处理程序

编写0号中断处理程序，是的在除法溢出发生时，在屏幕中间显示字符串
"divide error"
编程步骤
1.首先将中断程序复制到 0:200处
  然后更改中断向量表 ，将0000:0000的低位内存改为200h，0000:0002改为0，这样中断是
  cs=0，ip=200 就指向了0:200处
2.中断程序使用 offset - offset 得到中断程序的所有指令长度，然后循环放入0:200
3.显存地址为0B800:0~160(行)+(列)
========================================================
////////////////////////////////////////////////////////
========================================================
assume cs:code
code segment 
	start:
			;安装程序
			mov ax,cs
			mov ds,ax			;cs指令的段地址给ds
			mov si,offset do0 ;将do0指令的偏移地址给si
								;设置ds:si指向源地址
			mov ax,0
			mov es,ax
			mov di,200H			;设置es:di 即0:200指向目的地址
			
			mov cx,offset do0end - offset do0	;do0的代码长度，设置cx为指令长度
			cld	;整箱传输
			rep movsb;	
			
			;设置中断向量表
			mov ax,0
			mov es,ax
			mov word ptr es:[0*4],200h
			mov word ptr es:[0*4+2],0
; 引发除法溢出中断
			mov ax,0
			mov dx,1
			mov bx,1
			div bx
;=========================			
			
			mov ax,4c00h
			int 21H
			
do0:   		;显示字符串"divide error"
			jmp short do0start  ;短转移到do0start
			db "this is a divide error",0
			
do0start:	
			;设置字符串
			mov ax,cs ;字符串在do0代码的ds：si+2段，jmp short 指令长度为2
			mov ds,ax ; do0代码在0:200开始，字符串在0:202段
			mov si,202h
			
			mov ax,0b800h	; 显示段地址
			mov es,ax
			mov di,12*160+36*2; 设置es:di指向显存空间的中间位置
			
			mov cx,13;	divide error 共13个字符

show:		mov ax,0
			mov ah,00000010b
			mov al,ds:[si] ;将字符串复制给al
			
			cmp al,0
			je showend
			
			mov es:[di],al
			mov es:[di+1],ah ;变绿色
			
			inc si
			add di,2
			jmp  show ;执行13次，
			
			
			
			
			
			
showend:	mov ax,4c00h
			int 21h
			
			
do0end:		nop 


code ends
end start


=========================================================
////////////////////////////////////////////////////////
========================================================


第13章
int 指令
1.取中断类型码 N
2.标志位寄存器入栈  IF=0,TF=0
cs ip入栈
cs=n*4+2，ip=n*4

例1 写一个中断例程0号，整个屏幕显示"!"
*********************************************************
														*****
assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 
	start:	
			mov ax,stack 
			mov ss,ax
			mov sp,128
		
			call cpy_new_int0
			call set_new_int0
			
			int 0
			
			mov ax,4c00h
			int 21h
			
;===================
set_new_int0:  ;设置0号中断向量表
			mov bx,0
			mov es,bx
			
			cli
			mov word ptr es:[0*4],7e00h
			mov word ptr es:[0*4+2],0
			sti
			
			ret
			
;=================
new_int0:	
			push cx
			push bx
			push es
			push dx
			
			
			mov bx,0b800h
			mov es,bx    ;es 指向显存
			
			mov bx,0
			mov cx,2000
			mov dl,'!'
			
show_asc:	
			push ax
			mov ax,0
			mov ah,00000110b;设置颜色
			mov es:[bx],dl ;把dl的'!' 给es:[0]
			mov es:[bx+1],ah
			add bx,2  
			pop ax
			loop show_asc
			
			pop dx
			pop es
			pop bx
			pop cx
			
			iret
			
			
new_int0_end:	nop 		
;===================
cpy_new_int0:	mov bx,cs
				mov ds,bx
				mov si,offset new_int0 ;ds:[si]指向程序源
				
				mov bx,0
				mov es,bx    ;es:[di]指向目的地址
				mov di,7E00H
				
				mov cx,offset new_int0_end - offset new_int0
				cld ;正向
				rep movsb
				ret
			
code ends
end start
														****
********************************************************
实验2 编写和安装7CH中断程序 中断类型码7CH
实现一个数字的平方
参数ax=3456
返回值 dx=高16位 ax=低16位
------------------------------------------------------
												-------------
	assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 
	start:	
			mov ax,stack 
			mov ss,ax
			mov sp,128
			
			call cpy_new_int7ch
			call set_new_int7ch
			
			mov ax,3456
			int 7ch
			
			mov ax,4c00h
			int 21h
			
set_new_int7ch:
				push bx
				push dx
				push es
				
				cli  ;和标志位寄存器有关
				mov bx,0
				mov es,bx
				mov dx,7e00h
				mov word ptr es:[7ch*4],dx
				mov word ptr es:[7ch*4+2],0
				sti
				pop es
				pop dx
				pop bx
				
				ret
;================================			
new_int7ch:		mul ax
				iret
				
new_int7ch_end:		nop	

;set_new_int7ch:
			
cpy_new_int7ch:	
			mov bx,cs ;ds:si指向需要复制的指令
			mov ds,bx
			mov si,offset new_int7ch
			
			mov bx,0
			mov es,bx
			mov di,7e00h
			
			mov cx,offset new_int7ch_end - offset new_int7ch
			cld 
			rep movsb
			ret
			
			
		
code ends
end start
												-------------
	---------------------------------------------------------
编写和安装7ch中断程序
将一个全是字母，以0结尾的字符串，转化为大写
ds:si 指向字符首地址


屏幕中间显示80个！ 
用int 7ch 代替loop指令
assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 
	start:	
			mov ax,stack 
			mov ss,ax
			mov sp,128
			
			call cpy_new_7ch
			call set_new_7ch
			call inti_reg
			
			mov di,160*12
			mov cx,80
			
			mov bx,  offset s - offset se
s:			mov byte ptr es:[di],'!'
			mov byte ptr es:[di+1],00000010b
			add di,2
			int 7ch ;loop 标号处地址 - loop指令后第一个字节的地址
se: 		nop
			
			mov ax,4c00h
			int 21h
;===================================			u

inti_reg:	
			mov bx,0b800h
			mov es,bx
			
			ret
		
			
set_new_7ch:	
			mov bx,0
			mov es,bx
			cli
			mov word ptr es:[7ch*4],7e00h
			mov word ptr es:[7ch*4+2],0
			sti
			ret
;=======================
new_7ch:	push bp ;ss:[bp] bp和栈有关
			
			
			mov bp,sp ; 栈：	;		bp	ip	cs	pushf
			
			dec cx ;cx-1
			jcxz new7chret
			add ss:[bp+2],bx;
new7chret:	pop bp
	        iret
			
new_7ch_end:	nop			
			
			
;=======================
cpy_new_7ch:
			mov ax,cs
			mov ds,ax
			mov si,offset new_7ch
			
			mov bx,0
			mov es,bx
			mov di,7e00h
			
			mov cx,offset new_7ch_end - offset new_7ch
			cld
			rep movsb
			
			ret


		
code ends
end start


检测点 13.1 
7ch中断所能进行的最大位移-128 ~127
bx,offset s - offset se bx 最大为FFFFH

2.用7ch 中断完成 jmp near ptr s 指令的功能，完成显示一行以0结尾的字符串


//////////////////////////////////////////////////
//////////////////////////////////////////////////
/////////////////////////////////////////////////
在屏幕的2,4，6,8行显示4句英文，
方法1：
assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 
		
			
string1:	db 'Good,better,best',0
string2:	db 'Never let it rest',0
string3:	db 'Till good is better',0
string4:	db 'And better best',0
 
address_string:  dw offset string1
				 dw offset string2
				 dw offset string3
				 dw offset string4
				
				
				
				 
	start:	
			mov ax,stack
			mov ss,ax
			mov sp,128
			
			call init_reg
			call clear_screen
			call show_poes
			
			mov ax,4c00h
			int 21h
clear_screen:	
				mov bx,0
				mov dx,0700h
				mov cx,2000
				
clear:			mov es:[bx],dx
				add bx,2
				loop clear
				
				ret
;=============================================			
show_poes:	mov bx,offset address_string
			mov di,160*2; 偶数行
			mov cx,4 	;4次
showPoes:	mov si,ds:[bx]
			call show_string 
			add di,160
			add di,160
			add bx,2
			loop showPoes
			ret
			
show_string:push dx
			push bx
			push ds
			push es
			push si
			push di

showString:	mov dl,ds:[si]
			cmp dl,0
			je showStringRet
			mov es:[di],dl
			add di,2
			
			inc si
			jmp showString
showStringRet:	
			pop di
			pop si
			pop es
			pop ds
			pop bx
			pop dx
			ret
			
;=============================================
init_reg:	mov bx,0b800h
			mov es,bx
			
			mov bx,cs
			mov ds,bx
			
			
			ret


		
code ends
end start


方法2：

assume cs:code
code segment 
s1:	db 'Good,better,best','$'
s2:	db 'Never let it rest','$'
s3:	db 'Till good is better','$'
s4:	db 'And better best','$'
s:	dw offset s1,offset s2,offset s3,offset s4
;这样做的意义在于方便查找后面字符串的偏移地址
;第一行只需要offset s1,但是第一行不知道有多少个字符串，只能用s2来查找
;偏移地址，将4个字符串的首位地址存在数据段中，方便调用
row: db 2,4,6,8


start:
		
		mov ax,cs
		mov ds,ax
		mov bx,offset s
		mov si,offset row
		mov cx,4
		
ok:		mov bh,0  ;0页
		mov dh,cs:[si] ; 行号 cs:[si]指向cs:row 
		mov dl,0  ;列号
		mov ah,2  ;置光标
		int 10h
		
		mov dx,ds:[bx] ; ds:bx 指向字符串首地址bx=offset s
						;dx=s1 的偏移地址
						;ds:dx 指向字符串的首地址
						;ds=cs ,dx=s1,s2,s3,s4的偏移地址
		mov ah,9
		int 21h
		add bx,2    ;dx=ds:[bx+2] dx=s2的偏移地址
		inc si
		loop ok
		
testa:		mov ax,1000h
		loop testa
		
		mov ax,4c00h
		int 21h

code ends
end start


//////////////////////////////////////////////////
//////////////////////////////////////////////////
////////////////////////////////////////////////////////////


端口
实验
assume cs:code
code segment 
	start:	mov al,8
			out 70h,al ; 70h为地址口，需要读取8号单元的数据
			in al,71h	;71h为数据输出口 一个单元为8个二进制位
						;al=1111 0010
			mov ah,al  ;ah=1111 0010 al=1111 0010
			mov cl,4	;ah右移四位 ah=0000 1111
			shr ah,cl        ;1111给ah  月份的十位
			and dl,00001111b ;0000给dl	月份的个位
							;and 1&1=1,dl==0000 0010
							
			add ah,30h		;bcd码+30H=显示的ASCII码
			add al,30h
			
			mov bx,0b800h 
			mov es,bx
			mov byte ptr es:[160*12+40*2],ah ;显示月份的十位数码
			mov byte ptr es:[160*12+40*2+2],al;显示月份的个位数码
			
			mov ax,4c00h
			int 21h
code ends
end start


实验14 访问CMOS RAM
以年/月/日 时：分：秒 形式无限显示当前的日期和时间
assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 

TIME_STYLE:		db 'YY/MM/DD HH:MH:SS',0 
TIME_CMOS		db 9,8,7,4,2,0
	start:	
			mov ax,stack 
			mov ss,ax
			mov sp,128
			
			call inti_reg
			
			call show_clock
			
			mov ax,4c00h

			int 21h
			
show_clock:	
			call show_time_style
			
showtime:	mov si,offset TIME_CMOS
			mov di,160*10+30*2
			mov cx,6
			
showdate:	mov al,ds:[si] ;al=9 从cmos 9 单元读取数据
			out 70h,al
			in al,71h
			mov ah,al
			shr ah,1
			shr ah,1
			shr ah,1
			shr ah,1
			and al,00001111b
			
			add ah,30h
			add al,30h
			
			mov es:[di],ah  ;YY/MM 十位在左边，符合读取习惯
			mov es:[di+2],al
			
			inc si
			add di,6 ;YY/ di是显存，一个字符'Y'两个字节
		loop showdate
			jmp showtime

			ret
inti_reg:
			mov bx,0b800h
			mov es,bx
			mov bx,cs
			mov ds,bx
			ret
showstring:	push dx
			push ds
			push es
			push si
			push di
			
show_string:
			mov dl,ds:[si]
			cmp dl,0
			je showStringset
			mov es:[di],dl
			add di,2
			inc si
			jmp show_string
			
showStringset:	
				pop di
				pop si
				pop es
				pop ds
				pop dx
				
				ret
;================================================			
show_time_style:
				mov si,offset TIME_STYLE
				mov di,160*10+30*2
				
				call showstring
				
				ret
code ends
end start


第15章
外中断
1.读出60H端口的 扫描码，将这个扫描码 和对应的ASCII放到BIOS的键盘缓冲区
如果是控制键 ctrl shift 将其转变 状态字节 ，记录到一个存储状态的字节单元
3.对键盘系统的相关控制，向芯片发送应答事情，是否要用BIOS 提供的int 9

键盘缓冲区 15 字型数据， 扫描码 ASCII吗 高位字节放扫描码，低位字节放ASCII码

0040:0017：存储状态字节 ctrl shift insert alt capslock numlok


assume cs:code ,ds:data,ss:stack
data segment 
	db 128 dup(0)
data ends

stack segment stack
	db 128 dup (0)
stack ends

code segment 
	start:	
			mov ax,stack 
			mov ss,ax
			mov sp,128
			
			call init_reg 
			call show_keyword_status
			
			
			
			mov ax,4c00h
			int 21fh
			
init_reg:	mov bx,0b800h
			mov es,bx
			
			mov bx,40h
			mov ds,bx
			ret
			
show_status:
			push cx
			push dx
			push ds
			push es
			push si
			push di
	
			mov cx,8  ;一个字节有8位二进制
			
showStatus:	mov dx,0;al=0101 1010 最终结果显示al的8个二进制
			shl al,1 ;al左移，进位给cf cf=1
			adc dx,30H ; adc=dx+30H+cf 等于将一个二进制位0,1转变为一个显示字符
			mov es:[di],dl ;dl=dx的低八位 给显示屏幕
			add di,2
			loop showStatus ;循环8次 将al 0101 0010 全部变为8个字符显示
			
			pop di
			pop si
			pop es
			pop ds
			pop dx
			pop cx
			
			
			ret
show_keyword_status:	
			mov si,17h
			
			
			
			
testa:		
			mov al,ds:[si] ;将0040:0017 的数据放入al中
			mov di,160*10+40*2 ;显示在屏幕第十行 40列
			call show_status
			jmp testa
			ret
		
code ends
end start



call dword ptr ds:[0]的功能
1.cs ip入栈  	push cs,push ip
2.ip=ds*16+0,cs=ds*16+2
ip=ds:[0],cs=ds:[2] 


*******************************************************
														*****
游戏目录下 player2目录下有个config.cfg。你进去改改看
搜索下关键字
seta r_mode 分辨率"1680x1050 [16:10]" 1920x1080 [16:9] 你改成你能支持的分辨率试试
seta r_displayRefresh "75 Hz" 改成60 Hz试试



       sub ax,1 
		sbb dx,0 
		cmp ax,0 
		jne s1 		
		cmp dx,0
		jne s1
		
		
		
		
assume cs:code

stack segment 
	db 128 dup(0)
stack ends


code segment 
; 在自己编写的中断例程中 调用BIOS 的int9中断例程
start:	
		mov ax,stack
		mov ss,ax
		mov sp,128
		
		mov ax,0b800h
		mov es,ax
		mov ah,'a'
		
		
		
s:		mov es:[160*12+40*2],ah
		call delay
		inc ah
		
		cmp ah,'z'
		jna s ;jmp not above 不大于z 继续执行s
		
		mov ax,4c00h
		int 21h
		
delay:	push ax
		push dx
		mov dx,10h;循环1000h次
		mov ax,0
		
s1:		
		
		
		sub ax,1 ;ax=ax-1 ax=0-1 ax=0FFFF cf=1
		sbb dx,0 ;dx=dx-0-cf   dx=100 -0-1=99
		cmp ax,0 ;ax=0 zf=1  ax=!0 zf=0
		jne s1 ;ax=!0 跳转到s1/    ax=0不跳转，执行下一指令cmp dx,0 
		
		cmp dx,0
		jne s1 ;dx=0继续执行pop dx指令 最终跳出循环s1
		
		pop dx
		pop ax
		ret
		
		
code ends
end start 										
														*****
*************************************************************







标志寄存器为16位
15	14	13	12	11	10	9	8	7	6	5	4	3	1	0
				OF	DF	IF	TF	SF	ZF		AF		PF	CF
				
pushf 将标志寄存器入栈
pop ax 将标志寄存器出栈给ax
此时

ax=	15	14	13	12	11	10	9	8	7	6	5	4	3	1	0
					OF	DF	IF	TF	SF	ZF		AF		PF	CF
ah=	15	14	13	12	11	10	9	8
					OF	DF	IF	TF
								al= 7	6	5	4	3	1	0
									SF	ZF		AF		PF	CF
									
and ah,1111 11 0  0b ;0与任何都是0
			   IF TF ;将IF,TF置0

push ax 将更改过的标志位放入栈中
popf 更改标志位寄存器
	

模拟int指令的调用功能 ，调用入口地址在ds:0,ds:2中的中断例程程序位
pushf 	;标志寄存器入栈

pushf 
pop ax
and ah,11111100b
push ax
popf;if=0,tf=0
call dword ptr ds:[0];cs,ip入栈:(ip)=((ds)*16+0),(cs)=((ds)*16+2)

显示的位置是屏幕中间 第12行40列，显存中的偏移地址为:160*12+40*2
即字符的ASCII码要送入地址b800h,偏移地址为160*12+40*2
程序返回前，将中断向量表的int 9 中断例程的入口笛子恢复为原来的地址，否则程序返回后，别的程序无法使用键盘


assume cs:code
stack segment
	dw 128 dup(0)
stack ends

data segment 
	dw 0,0
data ends

code segment 
start:
		mov ax,stack
		mov ss,ax
		mov sp,128;设置栈
		
		mov ax,data
		mov ds,ax ;数据从ds(data):
		
		mov ax,0
		mov es,ax ;数据到es(0):
		
		push es:[9*4];将int 9 中断例程的入口地址入栈
		pop  ds:[0]
		push es:[9*4+2]
		pop  ds:[2];将原来的int 9 中断例程的入口地址从es(0):9*4 送到 ds(data):0单元
		
		mov word ptr es:[9*4],offset int9 ;将int9(ip)送入 0:9*4
		mov es:[9*4+2],cs;将cs 送入0:9*4+2
						 ;将中断向量表中设置新的int 9 中断例程的入口地址
		mov ax,0b800h
		mov es,ax
		mov ah,'a';设置显存
		
show_string:
		mov es:[160*12+40*2],ah ;显示字符
		call delay  ;延时函数
		inc ah  ;'a'+1='b'
		cmp ah,'z'
		jna show_string ;不是'z' 继续进行显示，是'z'跳出循环
		
		mov ax,0
		mov es,ax ;es=0
		
		push ds:[0]
		pop  es:[9*4]
		push ds:[2]
		pop  es:[9*4+2];将中断向量int 9中断例程的入口恢复原来的地址
		
		
		
		mov ax,4c00h
		int 21h
		
delay:
		push ax
		push dx
		mov dx,10h;循环1000h次
		mov ax,0
s1:		sub ax,1 ;0-1=ffff cf=1; ffff-1=fffe,cf=0不再进位
		sbb dx,0 ;dx=dx-0-cf
		cmp ax,0
		jne s1 ; ax从0，-1到0  ax再次等于0跳出循环
		cmp dx,0
		jne s1; dx从1000h一直减到0 才能跳出循环，执行下一条指令 pop dx
		pop dx
		pop ax
		
		ret
;======================
;新的int 9 中断例程
int9:	
		push ax
		push bx
		push es
		
		in al,60h ;键盘输入60h后，引发int9中断
		
		pushf ;先将标志寄存器入栈
		
		;=========模拟int 指令调用功能
		pushf 
		pop bx
		and bh,11111100b
		push bx
		popf
		call dword ptr ds:[0];对int指令模拟，调用原来的int9 例程
		
		cmp al,1 ;  ESC 的扫描码是 1 
		jne int9ret ;al 不等于1 跳出循环
					;al 等于1，执行mov ax,0b800h
		
		mov ax,0b800h
		mov es,ax
		inc byte ptr es:[160*12+40*2+1];将属性值加1，改变颜色
		
int9ret:
		pop es
		pop bx
		pop ax
		iret
		
		
code ends
end start
									
1.改变屏幕的颜色
从b8000h 开始的4000 个字节所有的奇地址单元的内容，当前屏幕的显示颜色发生改变
 按	F1 改变当前屏幕的颜色									
assume cs:code
stack segment 
	db 128 dup(0)
stack ends

code segment 
start:
		mov ax,stack
		mov ss,ax
		mov sp,128
		
		push cs
		pop ds
		
		mov ax,0
		mov es,ax
		
		mov si,offset int9;设置ds:si 指向源地址
		mov di,204h		  ;设置es:di 指向目的地址
		mov cx,offset int9end - offset int9;设置cx为传输长度
		cld 	;设置传输方向为正
		rep movsb ;复制指令
		
		push es:[9*4]  ;ip从es:[36]  到 es:[200]
		pop  es:[200h]
		push es:[9*4+2];将0:9*4 的int9中断例程的入口放在0:200
		pop  es:[202h] ;cs从0:[38]   到 0:[202]
		
		cli 
		mov word ptr es:[9*4],204h ;设置int9中断向量表   此时ip=204
		mov word ptr es:[9*4+2],0 ;0:9*4+2  里面的数据是cs= 0			cs=0
		sti
		
		
		
		
		
		mov ax,4c00h
		int 21h

int9:	push ax
		push bx
		push cx
		push es
		
		in al,60h;键盘中断
		;外部中断，首先cpu去中断向量表查找中断例程入口
		;中断向量表在0000:03FF
		;因此，只要有中断，这时cs=0 ip=中断类型码*4 和中断类型码*4+2
		;从0000:....读取 中断例程入口cs:ip
		
		;模拟int9指令 调用原来的int9例程
		pushf ;标志寄存器入栈
		call dword ptr cs:[200h] ;当此中断例程执行时 (cs)=0
;
;		????????为什么(cs)=0
;
		;ip 入栈，cs入栈(ip)=((ds)*16+0),(cs)=((ds)*16+2)
		; jmp 0:200h
		
		cmp al ,3bh ;F1的扫描码为3bh
		jne int9ret	; al=3bh 执行下一条，不等跳转到int9ret
		
		mov ax,0b800h
		mov es,ax
		mov bx,1
		mov cx,2000
		
s:		inc byte ptr es:[bx] ;0b800:奇数位 为属性
		add bx,2
		loop s
		
int9ret:
		pop es
		pop cx
		pop bx
		pop ax
		iret
int9end:	nop 
		
		
		
code ends
end start									
	
;======================================================
code segment 
	a db 1,2,3,4,5,6,7,8,
	b dw 0

code段使用a,b后面没有：可以同时描述内存地址和单元长度的标号
标号a，描述了地址code:0 ,和从这个地址开始，以后的内存单元都是字节单元
标号b,描述了地址code:8，从这个地址开始，以后的内存单元都是字单元

对于程序
mov ax,b;=mov ax,cs:[8]
mov b,2;= mov word ptr cs:[8],2
inc b;	= inc word ptr cs:[8]
在这些指令中，标号b代表了一个内存单元，地址为code:[8],长度为两个字节

mov al,b ;error b代表的是内存单元是字单元，al是8位寄存器，一个字节
对于程序中的 "a db 1,2,3,4,5,6,7,8"
mov al,a[si] ;=mov al,cs:0[si]

















微机原理知识点总结
BIU由16位段寄存器（cs，ds es ss）,16位指令指针寄存器ip,20位物理假发寄存器
一个由6字节的指令队列和总线控制电路组成
逻辑地址=段地址：偏移地址  物理地址=段地址*16+偏移地址

指令执行单元EU：完成指令译码和执行指令的工作
EU由算术逻辑单元 ALU FR标志寄存器，暂存寄存器和寄存器组（ax,bx,cx,dx,)
和4个专用16位寄存器di ,si,sp,bp,eu控制电路组成

按照功能氛围：通用寄存器8个 ax,bx,cx,dx,sp,bp,si,di，
				段寄存器：4个 cs,ds,es,ss
				控制寄存器：2,ip ,FR（标志寄存器）

标志寄存器FR 的控制标志 DF IF TF
				状态标志位：CF ZF PF SF AF OF 
				
ale 为地址锁存信号，高电平有效，ale信号不能处于高阻状态，de非为数据允许信号，
低电平有效，状态有效时，用作数据收发器宣统信号

INTR 可屏蔽中断请求，输入高电平有效
时总周期：每个时钟脉冲持续的时间 T=1/主频
指令周期：执行一条指令所需的时间：至少包括一条总线周期
2.5
总线：各种信号线的集合，是计算机各部件传输数据，地址与控制信息的公共通道
分类：1片总线，2系统总线 3，外总线 4局部总线
总线的宽度：总线中数据的位数8位，16位，32位，64位
总线的时钟频率：总线工作的最高频率
总线带宽：单位时间内总线可传送的数据量


第三章指令系统及其汇编
寻址方式有
1立即寻址 mov al,200h
2,寄存器寻址 mov bx,bp
3,存储气寻址：操作数放在存储器中
直接寻址 mov al ,[0063]
寄存器间接寻址： mov ax，bp
寄存器相对寻址： mov al ,[ax+9]
基址变址寻址，	mov al ,[bx+si+05]
指令系统
加减法指令
不带进位 add sub
带进位； adc sbb 多字节运算
比较指令 cmp 相等ZF=1
乘法和除法
mul cx;	ax*cx  高16位送dx ，低16位送ax
div bl；ax/bx 执行后 商给al，余数给高8位ah
条件转移指令
直接检测标志：JE JNE(zf=1,结果为0，je跳，zf=0，结果不等于0，jne跳)
间接检测标志：无符号比较(ja,jae,jb,jbe),有符号比较(jg,jge,jl,jle)
	
	字符串处理指令
	movs 串传送指令
	movsb 字节传送指令，si->di,si+-1,di+-1)
	movsw 字型传送  ， si->di,si+-2,di+-2) cx 为传送长度
	rep movsb 重复传送cx次
	
	stos存入串指令 rep stos 多次存入
	lods 从串取指令
	repe cmpsb 相等时继续比较（zf=1，跳转结果相等）
	scans 串扫描指令
	cld 清楚方向标志位指令，使方向标志位df=0
	std设置方向标志为，使方向标志位df=1
	串比较指令cmps：比较ds:si与es：di所指的源串中的字节、字，双字、做减法若相等zf=1，不相等zf=0
	
	输入输出指令
   	
	dos系统功能调用，
	9号调用 输出字符串，放入ah
	4ch调用：终止程序运行，返回dos系统
	01,02,0ah 出入字符串指令

逻辑指令
and与，or或 xor异或，not非

算术位移指令
shl逻辑左移指令		无符号数乘2
shr逻辑右移指令		无符号数除以2
sar 算术右移指令 有符号数除以2

循环移位指令：	rol循环左移指令，ror循环右移指令
				rcr带进位循环左移 RCR 带进位循环右移指令
第四章存储器系统
存储器概述：cpu通过总线直接访问内存，存储器可分为内存储器（半导体存储器）和外存储器（外存）容量大，存取速度慢

内存分为高速缓冲存储器（cashe）和主存储器
内存容量受cpu地址总线条数的限制，8086系统中，20位地址总线直接寻址的内存为
2的20次方，=1m字节   32位为4g

第五章输入输出技术
5.1 通常把处理器和主存储器以外的部分称为输入输出系统
IO接口的功能：将外设连接到系统总线上的一组逻辑电路的总称

1.cpu与外设之间设置相应的接口
I/O接口具有的功能
指令，数据和状态的缓冲，隔离和锁存（输入三态，输出锁存）
信号电平与类型的转换
增加信号的驱动能力
根据寻址信息选择外设

	=》DB	数据端口	数据线
cpu	=》AB	控制端口	控制信息	外设
	=》CB	状态端口	状态信息
	
端口地址用8位或16位进行编号
端口的寻址地址
io端口与内存统一偏址：内存的一部分地址分配给io端口
						内存空间减少，无io指令，编程灵活，地址译码时间长
io端口与内存独立编址：不占用内存，in/out指令访问端口，io操作地址线

io指令：
直接寻址指令	in al,00h~ffh
				out 00h,al
间接寻址io指令  in al,dx dx指向的端口内容送al
				out dx,al	al至dx指向的端口
端口地址为0000h~FFFFH时，要用DX间接寻址

cpu与外设的数据传送方式
1.无条件传送方式（同步传送）适用于总是准备好的简单设备
2.条件传送方式（查询方式）查询效率低，cpu通过程序读取外设状态，满足条件传送
3，中断控制传送方式，提高cpu的效率，而且提高了服务的实时性
4.直接存储器存取方式 速度快，需要硬件支持，硬件链接复杂传送方式为单字节或字节组的方式




