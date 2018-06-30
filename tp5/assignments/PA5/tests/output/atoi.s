# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const27:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"A2I"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"stop"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const12
	.ascii	"Enter a number>"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"+"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"-"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"9"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"8"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"7"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"6"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"5"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"4"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"3"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"0"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"tests/atoi.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const21
# child: IO
# child: Int
# child: Bool
# child: String
# child: A2I

	.word	str_const22
# child: Main

	.word	str_const23

	.word	str_const24

	.word	str_const25

	.word	str_const26

	.word	str_const27

class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	A2I_protObj
	.word	A2I_init
	.word	Main_protObj
	.word	Main_init
Object_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
IO_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
	# method # 3
	.word	IO.out_string
	# method # 4
	.word	IO.out_int
	# method # 5
	.word	IO.in_string
	# method # 6
	.word	IO.in_int
Int_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
Bool_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
String_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
	# method # 3
	.word	String.length
	# method # 4
	.word	String.concat
	# method # 5
	.word	String.substr
A2I_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
	# method # 3
	.word	A2I.c2i
	# method # 4
	.word	A2I.i2c
	# method # 5
	.word	A2I.a2i
	# method # 6
	.word	A2I.a2i_aux
	# method # 7
	.word	A2I.i2a
	# method # 8
	.word	A2I.i2a_aux
Main_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
	# method # 3
	.word	IO.out_string
	# method # 4
	.word	IO.out_int
	# method # 5
	.word	IO.in_string
	# method # 6
	.word	IO.in_int
	# method # 7
	.word	Main.newline
	# method # 8
	.word	Main.prompt
	# method # 9
	.word	Main.main
	.word	-1
Object_protObj:
	.word	0	# class tag
	.word	3	# size
	.word	Object_dispTab
	.word	-1
IO_protObj:
	.word	1	# class tag
	.word	3	# size
	.word	IO_dispTab
	.word	-1
Int_protObj:
	.word	2	# class tag
	.word	4	# size
	.word	Int_dispTab
	.word	0	# val(0)
	.word	-1
Bool_protObj:
	.word	3	# class tag
	.word	4	# size
	.word	Bool_dispTab
	.word	0	# val(0)
	.word	-1
String_protObj:
	.word	4	# class tag
	.word	5	# size
	.word	String_dispTab
	.word	int_const0	# int(0)
	.word	0	# str(0)
	.word	-1
A2I_protObj:
	.word	5	# class tag
	.word	3	# size
	.word	A2I_dispTab
	.word	-1
Main_protObj:
	.word	6	# class tag
	.word	3	# size
	.word	Main_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

IO_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	Object_init

	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Int_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	Object_init

	# init attrib _val
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Bool_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	Object_init

	# init attrib _val
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

String_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	Object_init

	# init attrib _val
	la	$a0 int_const0
	sw	$a0 12($s0)
	# init attrib _str_field
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

A2I_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	Object_init

	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Main_init:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# init parent
	jal	IO_init

	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

A2I.c2i:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const1

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label0

	la	$a0 int_const0
	# jumpt finish
	b	label1

# False:
label0:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const2

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label2

	la	$a0 int_const1
	# jumpt finish
	b	label3

# False:
label2:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const3

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label4

	la	$a0 int_const2
	# jumpt finish
	b	label5

# False:
label4:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const4

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label6

	la	$a0 int_const3
	# jumpt finish
	b	label7

# False:
label6:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const5

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label8

	la	$a0 int_const4
	# jumpt finish
	b	label9

# False:
label8:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const6

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label10

	la	$a0 int_const5
	# jumpt finish
	b	label11

# False:
label10:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const7

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label12

	la	$a0 int_const6
	# jumpt finish
	b	label13

# False:
label12:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const8

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label14

	la	$a0 int_const7
	# jumpt finish
	b	label15

# False:
label14:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const9

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label16

	la	$a0 int_const8
	# jumpt finish
	b	label17

# False:
label16:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const10

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label18

	la	$a0 int_const9
	# jumpt finish
	b	label19

# False:
label18:
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	la	$a0 int_const0
# Finish:
label19:
# Finish:
label17:
# Finish:
label15:
# Finish:
label13:
# Finish:
label11:
# Finish:
label9:
# Finish:
label7:
# Finish:
label5:
# Finish:
label3:
# Finish:
label1:

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

A2I.i2c:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const0

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label21

	la	$a0 str_const1
	# jumpt finish
	b	label22

# False:
label21:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const1

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label23

	la	$a0 str_const2
	# jumpt finish
	b	label24

# False:
label23:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const2

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label25

	la	$a0 str_const3
	# jumpt finish
	b	label26

# False:
label25:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const3

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label27

	la	$a0 str_const4
	# jumpt finish
	b	label28

# False:
label27:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const4

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label29

	la	$a0 str_const5
	# jumpt finish
	b	label30

# False:
label29:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const5

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label31

	la	$a0 str_const6
	# jumpt finish
	b	label32

# False:
label31:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const6

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label33

	la	$a0 str_const7
	# jumpt finish
	b	label34

# False:
label33:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const7

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label35

	la	$a0 str_const8
	# jumpt finish
	b	label36

# False:
label35:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const8

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label37

	la	$a0 str_const9
	# jumpt finish
	b	label38

# False:
label37:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const9

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label39

	la	$a0 str_const10
	# jumpt finish
	b	label40

# False:
label39:
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label41:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	la	$a0 str_const11
# Finish:
label40:
# Finish:
label38:
# Finish:
label36:
# Finish:
label34:
# Finish:
label32:
# Finish:
label30:
# Finish:
label28:
# Finish:
label26:
# Finish:
label24:
# Finish:
label22:

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

A2I.a2i:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label42:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto length
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const0

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label43

	la	$a0 int_const0
	# jumpt finish
	b	label44

# False:
label43:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Dispatch. First eval and save the params.
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label45:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto substr
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const12

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label46

	# Neg
	# Eval e1 and make a copy for result
	# Dispatch. First eval and save the params.
	# Dispatch. First eval and save the params.
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Int operation : Sub
	# First eval e1 and push.
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label48:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto length
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const1
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label49:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto substr
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label50:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 24($t1)

	# jumpto a2i_aux
	jalr		$t1

	jal	Object.copy

	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)

	# jumpt finish
	b	label47

# False:
label46:
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Dispatch. First eval and save the params.
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label51
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label51:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto substr
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const13

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label52

	# Dispatch. First eval and save the params.
	# Dispatch. First eval and save the params.
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Int operation : Sub
	# First eval e1 and push.
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label54:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto length
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const1
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label55
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label55:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto substr
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label56
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label56:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 24($t1)

	# jumpto a2i_aux
	jalr		$t1

	# jumpt finish
	b	label53

# False:
label52:
	# Dispatch. First eval and save the params.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label57:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 24($t1)

	# jumpto a2i_aux
	jalr		$t1

# Finish:
label53:
# Finish:
label47:
# Finish:
label44:

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

A2I.a2i_aux:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# Let expr
	# First eval init
	la	$a0 int_const0
	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Let expr
	# First eval init
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label58:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto length
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Let expr
	# First eval init
	la	$a0 int_const0
	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# While loop
	# start:
label59:
	# ACC = pred
	# Int operation : Less than
	# First eval e1 and push.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	# Object:
	# It is a let variable.
	lw	$a0 12($sp)


	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Pretend that t1 < t2
	la	$a0 bool_const1
	# If t1 < t2 jumpto finish
	blt	$t1 $t2 label61
	la	$a0 bool_const0
label61:
	# extract int inside bool
	lw	$t1 12($a0)

	# if pred == false jumpto finish
	beq	$t1 $zero label60

	# Assign. First eval the expr.
	# Int operation : Add
	# First eval e1 and push.
	# Int operation : Mul
	# First eval e1 and push.
	# Object:
	# It is a let variable.
	lw	$a0 12($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const10
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	mul	$t3 $t1 $t2
	sw	$t3 12($a0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	# Dispatch. First eval and save the params.
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 8($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# if obj = void: abort
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label62:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto substr
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label63:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto c2i
	jalr		$t1

	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	add	$t3 $t1 $t2
	sw	$t3 12($a0)

	# Now find the lvalue.
	# It is a let variable.
	sw	$a0 12($sp)
	# Assign. First eval the expr.
	# Int operation : Add
	# First eval e1 and push.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const1
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	add	$t3 $t1 $t2
	sw	$t3 12($a0)

	# Now find the lvalue.
	# It is a let variable.
	sw	$a0 4($sp)
	# Jumpto start
	b	label59
	# Finish:
label60:
	# ACC = void
	move	$a0 $zero
	# pop
	addiu	$sp $sp 4

	# pop
	addiu	$sp $sp 4

	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	# pop
	addiu	$sp $sp 4


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

A2I.i2a:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const0

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label64

	la	$a0 str_const1
	# jumpt finish
	b	label65

# False:
label64:
	# If statement. First eval condition.
	# Int operation : Less than
	# First eval e1 and push.
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	# Object:
	# It is a param.
	lw	$a0 12($fp)


	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Pretend that t1 < t2
	la	$a0 bool_const1
	# If t1 < t2 jumpto finish
	blt	$t1 $t2 label66
	la	$a0 bool_const0
label66:
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label67

	# Dispatch. First eval and save the params.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label69:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto i2a_aux
	jalr		$t1

	# jumpt finish
	b	label68

# False:
label67:
	# Dispatch. First eval and save the params.
	# Dispatch. First eval and save the params.
	# Int operation : Mul
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	# Neg
	# Eval e1 and make a copy for result
	la	$a0 int_const1
	jal	Object.copy

	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)

	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	mul	$t3 $t1 $t2
	sw	$t3 12($a0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label70:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto i2a_aux
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	la	$a0 str_const12
	# if obj = void: abort
	bne	$a0 $zero label71
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label71:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 16($t1)

	# jumpto concat
	jalr		$t1

# Finish:
label68:
# Finish:
label65:

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

A2I.i2a_aux:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 int_const0

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label72

	la	$a0 str_const11
	# jumpt finish
	b	label73

# False:
label72:
	# Let expr
	# First eval init
	# Int operation : Div
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const10
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	div	$t3 $t1 $t2
	sw	$t3 12($a0)

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Dispatch. First eval and save the params.
	# Dispatch. First eval and save the params.
	# Int operation : Sub
	# First eval e1 and push.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	# Int operation : Mul
	# First eval e1 and push.
	# Object:
	# It is a let variable.
	lw	$a0 8($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2 and make a copy for result.
	la	$a0 int_const10
	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	mul	$t3 $t1 $t2
	sw	$t3 12($a0)

	jal	Object.copy

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	# Extract the int inside the object.
	lw	$t1 12($t1)
	lw	$t2 12($t2)

	# Modify the int inside t2.
	sub	$t3 $t1 $t2
	sw	$t3 12($a0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label74:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 16($t1)

	# jumpto i2c
	jalr		$t1

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 8($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label75:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto i2a_aux
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label76
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label76:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 16($t1)

	# jumpto concat
	jalr		$t1

	# pop
	addiu	$sp $sp 4

# Finish:
label73:

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 4

	# return
	jr	$ra	

Main.newline:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# Dispatch. First eval and save the params.
	la	$a0 str_const14
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label77:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Main.prompt:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# Dispatch. First eval and save the params.
	la	$a0 str_const15
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label78:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label79:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto in_string
	jalr		$t1


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Main.main:
	# push fp, s0, ra
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)

	# fp now points to the return addr in stack
	addiu	$fp $sp 4

	# SELF = a0
	move	$s0 $a0

	# evaluating expression and put it to ACC
	# Let expr
	# First eval init
	la	$a0 A2I_protObj
	jal	Object.copy
	jal	A2I_init
	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# While loop
	# start:
label80:
	# ACC = pred
	la	$a0 bool_const1
	# extract int inside bool
	lw	$t1 12($a0)

	# if pred == false jumpto finish
	beq	$t1 $zero label81

	# Let expr
	# First eval init
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label82
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label82:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto prompt
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# If statement. First eval condition.
	# equal
	# First eval e1 and push.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Then eval e2.
	la	$a0 str_const16

	# Let's pop e1 to t1, move e2 to t2
	addiu	$sp $sp 4
	lw	$t1 0($sp)
	move	$t2 $a0

	la	$a0 bool_const1
	la	$a1 bool_const0
	jal	equality_test
	# extract the bool content from acc to t1
	lw	$t1 12($a0)

	# if t1 == 0 goto false
	beq	$t1 $zero label83

	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label85
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label85:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	# jumpt finish
	b	label84

# False:
label83:
	# Let expr
	# First eval init
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a let variable.
	lw	$a0 12($sp)

	# if obj = void: abort
	bne	$a0 $zero label86
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label86:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 20($t1)

	# jumpto a2i
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Let expr
	# First eval init
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a let variable.
	lw	$a0 16($sp)

	# if obj = void: abort
	bne	$a0 $zero label87
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label87:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 28($t1)

	# jumpto i2a
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 8($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label88
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label88:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 16($t1)

	# jumpto out_int
	jalr		$t1

	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label89
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label89:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 28($t1)

	# jumpto newline
	jalr		$t1

	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label90
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label90:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label91
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label91:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 28($t1)

	# jumpto newline
	jalr		$t1

	# pop
	addiu	$sp $sp 4

	# pop
	addiu	$sp $sp 4

# Finish:
label84:
	# pop
	addiu	$sp $sp 4

	# Jumpto start
	b	label80
	# Finish:
label81:
	# ACC = void
	move	$a0 $zero
	# pop
	addiu	$sp $sp 4


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	


# end of generated code
