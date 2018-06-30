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
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Nil"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Cons"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"BookList"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Article"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Book"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"PC Magazine"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Ulanoff"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const12
	.ascii	"The Top 100 CD_ROMs"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	10
	.word	String_dispTab
	.word	int_const13
	.ascii	"Aho, Sethi, and Ullman"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	16
	.word	String_dispTab
	.word	int_const14
	.ascii	"Compilers, Principles, Techniques, and Tools"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	12
	.word	String_dispTab
	.word	int_const15
	.ascii	"- dynamic type was Article -\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	11
	.word	String_dispTab
	.word	int_const16
	.ascii	"- dynamic type was Book -\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"periodical:  "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const17
	.ascii	"author:     "
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const17
	.ascii	"title:      "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const18
	.ascii	"tests/book_list.cl"
	.byte	0	
	.align	2
	.word	-1
int_const18:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	18
	.word	-1
int_const17:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const16:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	26
	.word	-1
int_const15:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const14:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	44
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
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
	.word	10
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	7
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
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
	.word	4
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
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
	.word	str_const16
# child: IO
# child: Int
# child: Bool
# child: String
# child: Main

	.word	str_const17
# child: Book
# child: BookList

	.word	str_const18

	.word	str_const19

	.word	str_const20

	.word	str_const21
# child: Article

	.word	str_const22

	.word	str_const23
# child: Cons
# child: Nil

	.word	str_const24

	.word	str_const25

	.word	str_const26

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
	.word	Book_protObj
	.word	Book_init
	.word	Article_protObj
	.word	Article_init
	.word	BookList_protObj
	.word	BookList_init
	.word	Cons_protObj
	.word	Cons_init
	.word	Nil_protObj
	.word	Nil_init
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
Book_dispTab:
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
	.word	Book.initBook
	# method # 8
	.word	Book.print
Article_dispTab:
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
	.word	Book.initBook
	# method # 8
	.word	Article.print
	# method # 9
	.word	Article.initArticle
BookList_dispTab:
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
	.word	BookList.isNil
	# method # 8
	.word	BookList.cons
	# method # 9
	.word	BookList.car
	# method # 10
	.word	BookList.cdr
	# method # 11
	.word	BookList.print_list
Cons_dispTab:
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
	.word	Cons.isNil
	# method # 8
	.word	BookList.cons
	# method # 9
	.word	Cons.car
	# method # 10
	.word	Cons.cdr
	# method # 11
	.word	Cons.print_list
	# method # 12
	.word	Cons.init
Nil_dispTab:
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
	.word	Nil.isNil
	# method # 8
	.word	BookList.cons
	# method # 9
	.word	BookList.car
	# method # 10
	.word	BookList.cdr
	# method # 11
	.word	Nil.print_list
Main_dispTab:
	# method # 0
	.word	Object.abort
	# method # 1
	.word	Object.type_name
	# method # 2
	.word	Object.copy
	# method # 3
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
	.word	int_const1	# int(0)
	.word	0	# str(0)
	.word	-1
Book_protObj:
	.word	5	# class tag
	.word	5	# size
	.word	Book_dispTab
	.word	str_const27	# str()
	.word	str_const27	# str()
	.word	-1
Article_protObj:
	.word	6	# class tag
	.word	6	# size
	.word	Article_dispTab
	.word	str_const27	# str()
	.word	str_const27	# str()
	.word	str_const27	# str()
	.word	-1
BookList_protObj:
	.word	7	# class tag
	.word	3	# size
	.word	BookList_dispTab
	.word	-1
Cons_protObj:
	.word	8	# class tag
	.word	5	# size
	.word	Cons_dispTab
	.word	0	# void
	.word	0	# void
	.word	-1
Nil_protObj:
	.word	9	# class tag
	.word	3	# size
	.word	Nil_dispTab
	.word	-1
Main_protObj:
	.word	10	# class tag
	.word	4	# size
	.word	Main_dispTab
	.word	0	# void
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
	la	$a0 int_const1
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

Book_init:
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

	# init attrib title
	la	$a0 str_const27
	sw	$a0 12($s0)
	# init attrib author
	la	$a0 str_const27
	sw	$a0 16($s0)
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Article_init:
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
	jal	Book_init

	# init attrib per_title
	la	$a0 str_const27
	sw	$a0 20($s0)
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

BookList_init:
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

Cons_init:
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
	jal	BookList_init

	# init attrib xcar
	# init attrib xcdr
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Nil_init:
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
	jal	BookList_init

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
	jal	Object_init

	# init attrib books
	# ret = SELF
	move	$a0 $s0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# return
	jr	$ra	

Book.initBook:
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
	# Assign. First eval the expr.
	# Object:
	# It is a param.
	lw	$a0 16($fp)

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 12($s0)
	# Assign. First eval the expr.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 16($s0)
	# Object:
	# It is self.
	move	$a0 $s0


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 8

	# return
	jr	$ra	

Book.print:
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
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	# Object:
	# It is an attribute.
	lw	$a0 12($s0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label2:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# Dispatch. First eval and save the params.
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	# Object:
	# It is an attribute.
	lw	$a0 16($s0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label3:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label4:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label5:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# Object:
	# It is self.
	move	$a0 $s0


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Article.initArticle:
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
	# Object:
	# It is a param.
	lw	$a0 20($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Object:
	# It is a param.
	lw	$a0 16($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 28($t1)

	# jumpto initBook
	jalr		$t1

	# Assign. First eval the expr.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 20($s0)
	# Object:
	# It is self.
	move	$a0 $s0


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 12

	# return
	jr	$ra	

Article.print:
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
	# Static dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label7:
	# Now we locate the method in the dispatch table.
	# t1 = Book.dispTab
	la	$t1 Book_dispTab

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto print
	jalr		$t1

	# Dispatch. First eval and save the params.
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	# Object:
	# It is an attribute.
	lw	$a0 20($s0)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label9:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label10:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	# Object:
	# It is self.
	move	$a0 $s0


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

BookList.isNil:
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
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label11:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	la	$a0 bool_const1

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

BookList.cons:
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
	la	$a0 Cons_protObj
	jal	Object.copy
	jal	Cons_init
	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Dispatch. First eval and save the params.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Object:
	# It is self.
	move	$a0 $s0

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is a let variable.
	lw	$a0 12($sp)

	# if obj = void: abort
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label12:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 48($t1)

	# jumpto init
	jalr		$t1

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

BookList.car:
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
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label13:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

BookList.cdr:
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
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label14:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
	jalr		$t1

	la	$a0 BookList_protObj
	jal	Object.copy
	jal	BookList_init

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

BookList.print_list:
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
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label15:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 0($t1)

	# jumpto abort
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

Cons.isNil:
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
	la	$a0 bool_const0

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Cons.init:
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
	# Assign. First eval the expr.
	# Object:
	# It is a param.
	lw	$a0 16($fp)

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 12($s0)
	# Assign. First eval the expr.
	# Object:
	# It is a param.
	lw	$a0 12($fp)

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 16($s0)
	# Object:
	# It is self.
	move	$a0 $s0


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 8

	# return
	jr	$ra	

Cons.car:
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
	# Object:
	# It is an attribute.
	lw	$a0 12($s0)


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Cons.cdr:
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
	# Object:
	# It is an attribute.
	lw	$a0 16($s0)


	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Cons.print_list:
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
	# case expr
	# First eval e0
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is an attribute.
	lw	$a0 12($s0)

	# if obj = void: abort
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label16:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto print
	jalr		$t1

	# If e0 = void, abort
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 1
	jal	_case_abort2
label17:
	# T1 = type(acc)
	lw	$t1 0($a0)
	# tag = 5 : goto case 0
	li	$t2 5
	beq	$t1 $t2 label18

	# tag = 6 : goto case 1
	li	$t2 6
	beq	$t1 $t2 label19

	# ----------------
	# tag = 6 : goto case 0
	li	$t2 6
	beq	$t1 $t2 label18

	# ----------------
	# No match
	jal	_case_abort
	b	label20
# eval expr 0
label18:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Dispatch. First eval and save the params.
	la	$a0 str_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label21:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	addiu	$sp $sp 4
	# Jumpto finish
	b	label20
# eval expr 1
label19:
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# Dispatch. First eval and save the params.
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Object:
	# It is self.
	move	$a0 $s0

	# if obj = void: abort
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label22:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 12($t1)

	# jumpto out_string
	jalr		$t1

	addiu	$sp $sp 4
	# Jumpto finish
	b	label20
#finish:
label20:

	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is an attribute.
	lw	$a0 16($s0)

	# if obj = void: abort
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label23:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 44($t1)

	# jumpto print_list
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

Nil.isNil:
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
	la	$a0 bool_const1

	# pop fp, s0, ra
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12

	# Pop arguments
	addiu	$sp $sp 0

	# return
	jr	$ra	

Nil.print_list:
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
	la	$a0 bool_const1

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
	# Dispatch. First eval and save the params.
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init
	# if obj = void: abort
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 28($t1)

	# jumpto initBook
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Let expr
	# First eval init
	# Dispatch. First eval and save the params.
	la	$a0 str_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	la	$a0 Article_protObj
	jal	Object.copy
	jal	Article_init
	# if obj = void: abort
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 36($t1)

	# jumpto initArticle
	jalr		$t1

	# push
	sw	$a0 0($sp)
	addiu	$sp $sp -4

	# Assign. First eval the expr.
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 4($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	# Dispatch. First eval and save the params.
	# Object:
	# It is a let variable.
	lw	$a0 12($sp)

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# eval the obj in dispatch.
	la	$a0 Nil_protObj
	jal	Object.copy
	jal	Nil_init
	# if obj = void: abort
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto cons
	jalr		$t1

	# if obj = void: abort
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label27:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 32($t1)

	# jumpto cons
	jalr		$t1

	# Now find the lvalue.
	# It is an attribute.
	sw	$a0 12($s0)
	# Dispatch. First eval and save the params.
	# eval the obj in dispatch.
	# Object:
	# It is an attribute.
	lw	$a0 12($s0)

	# if obj = void: abort
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label28:
	# Now we locate the method in the dispatch table.
	# t1 = self.dispTab
	lw	$t1 8($a0)

	# t1 = dispTab[offset]
	lw	$t1 44($t1)

	# jumpto print_list
	jalr		$t1

	# pop
	addiu	$sp $sp 4

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
