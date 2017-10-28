#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
#include<stddef.h>
#include<setjmp.h>
#include<cmocka.h>


/*A test case that does nothing but succeeds*/

static void null_test_success(void **state){
	(void) state;/*unused*/
}

int main(void){
	const struct CMUnitTest tests[]={cmocka_unit_test(null_test_success),};
	return cmocka_run_group_tests(tests,NULL,NULL);
}
