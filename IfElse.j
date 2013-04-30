; class definition
.class public IfElse

; extends java.lang.Object
.super java/lang/Object

; default constructor -- public Calc() { super(); }
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

; main method -- public static void main(String args[]) { ... }
.method public static main([Ljava/lang/String;)V
	.limit stack 3     ; we're allocating many "things" we plan to put on the stack
	.limit locals 2    ; we're allocating 1 local
	
	; get System.out onto the stack
	getstatic java/lang/System/out Ljava/io/PrintStream;

	; store a local variable	x = 1
	ldc 2
	istore 0
	
	; store a local variable	y = 1
	ldc 1
	istore 1

	iload 0
	iload 1
	isub
	
	ifeq XEQUALSY
	goto XNOTEQUALSY
	
	XEQUALSY:
		ldc "x equals y"
		goto END
	
	XNOTEQUALSY:
		ldc "x does not equal y"
		goto END

	END:

	; print the result that's on the top of the stack
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

	return
.end method