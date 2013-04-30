.class public FunctionCallExample

.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static getNumber()I
	.limit stack 2
	.limit locals 1
	
	ldc 15    ; push a constant integer value of 15 onto the stack
	ldc 25    ; push a constant integer value of 25 onto the stack
	iadd      ; pop the values, add them, and place the result onto the stack
	
	ireturn   ; pop the value and return it
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3     ; we're allocating 2 items we plan to put on the stack
	.limit locals 1
	
	; get System.out
	getstatic java/lang/System/out Ljava/io/PrintStream;

	; calls "getNumber()" which will return an integer value to print to the console
	invokestatic FunctionCallExample/getNumber()I
	
	; print the result that's on the top of the stack
	invokevirtual java/io/PrintStream/println(I)V
	return
.end method