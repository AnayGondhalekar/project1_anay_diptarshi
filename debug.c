#include<stdio.h>
#include<stdint.h>
#include "debug.h"

/*typedef unsigned char uint8_t;
typedef unsigned int int32_t;*/

void print_memory(uint8_t* start,uint32_t length){
	uint32_t i;
	for(i=0;i<length;i++){
		printf("%x",*(start+i));
	}
}

