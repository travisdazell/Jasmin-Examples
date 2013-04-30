.class public PassingValuesToFunctions

.super java/lang/Object

.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static addNumbers(II)I
	.limit stack 2
	.limit locals 1
	
	iload_0    ; push the first argument onto the stack
	iload_1	   ; push the second argument onto the stack
	iadd       ; add the two values and push the result onto the stack
	
	ireturn   ; pop the value and return it
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4     ; we're allocating 2 items we plan to put on the stack
	.limit locals 1

	; get System.out
	getstatic java/lang/System/out Ljava/io/PrintStream;

	; calls "getNumber()" which will return an integer value to print to the console
	ldc 25     ; push the first argument value for the function onto the stack
	ldc 150    ; push the second argument value for the function onto the stack

	; call the addNumbers function, which pops both arguments off the stack and stores them in local registers 0 and 1
	invokestatic PassingValuesToFunctions/addNumbers(II)I

	; print the result that's on the top of the stack
	invokevirtual java/io/PrintStream/println(I)V
	return
.end method