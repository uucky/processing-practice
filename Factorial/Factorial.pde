/*
@AUTHOR CHELL LI
@DATE 2018.01.16

1. Implement the factorial function
2. Implement a function called int fib(int n) which returns the nth integer in the Fibonacci series. In
the Fibonacci series fib(1) = 0 and fib(2) = 1 and any subsequent number in the series is the sum of previous two. In other words, for any n > 2 fib(n) = fib(n-1) + fib(n-2)
*/
void setup() {
  println(factorial(5));
  println(fib(7));
}

int factorial(int n) {
   if( n > 1 ) {
      return(  n* factorial( n-1 )  );
   }
   else 
      return( 1 );
}

//fib(1) = 0 and fib(2) = 1
//for any n > 2 fib(n) = fib(n-1) + fib(n-2)

//assume input n > 0
int fib(int n) {
	if (n < 1) {
		return 0;
	}
	if (n == 1 | n == 2) {
		return n-1;
	} else return fib (n -1) + fib (n -2);
}
