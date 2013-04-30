; class definition
.class public HelloWorld

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
	.limit stack 2     ; we're allocating 2 items we plan to put on the stack
	
	; get System.out onto the stack
	getstatic java/lang/System/out Ljava/io/PrintStream;
	
	ldc "Hello World"
	
	; print the result that's on the top of the stack
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	return
.end method