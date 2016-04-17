#include <stdio.h>
#include <stdlib.h>


/* Although this is a trivial case of scalar replacement, it is
 * instructive to study the unoptimized code.  Run "make trivial.llvm.bc",
 * disassemble the resulting file, and study it carefully to understand the
 * LLVM code that is generated.
 */
int
main(int argc, char** argv)
{


	//__attribute__((annotate("FirstLoop")) float r;
  	//for(__attribute__((annotate("perf,1"))) int j = 0; j < 50; j++)
  
  for(int iter = 0; iter < 100; iter++)
  {
	printf("whats this\n");
  }
  
  int x = 0;
  while(x < 500)
  {
  	printf("%d", x);
  
  	x++;
  }

  return 0;
}
