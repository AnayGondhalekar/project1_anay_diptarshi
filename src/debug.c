#include <stdio.h>
#include <stdint.h>
#include "debug.h"
#include"platform.h"

void print_memory(uint8_t* start,uint32_t length){
	uint32_t i;
	for(i=0;i<length;i++){
		printf("%x",*(start+i));
	}
}

