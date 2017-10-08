#include<stdlib.h>
#include<stdio.h>
#include<stdint.h>
#include "memory.h"
#include <malloc.h>
#include"platform.h"
/*typedef unsigned int size_t;
typedef unsigned char uint8_t;
typedef signed char int8_t;
typedef signed int int32_t;*/





uint8_t* my_memcpy(uint8_t* src,uint8_t* dst,size_t length){
	size_t i;
	for(i=0;i<length;i++){
		*(dst)=*(src);
		src++;
		dst++;
	}
	return dst;
}

uint8_t* my_memmove(uint8_t* src,uint8_t* dst,size_t length){
	size_t i=0;	
	
	
	uint8_t* temp=(uint8_t*) malloc(sizeof(uint8_t)*length);
	for(i=0;i<length;i++)
	{
		*(temp+i)=*(src+i);
		
	}
	        for(i=0;i<length;i++)
        {
                *(dst+i)=*(temp+i);

        }


	
	return dst;
}

int8_t* my_memset(uint8_t* src,size_t length,uint8_t value)
	{
	size_t i;
        int8_t* isrc;
	for(i=0;i<length;i++){
		*(src)=value;
		src++;
	}
        isrc = (int8_t*)src;
	return isrc;
}

uint8_t* my_memzero(uint8_t* src,size_t length){
	size_t i;
	for(i=0;i<length;i++){
		*(src+i)=0;
	}
	return src;
}

uint8_t* my_reverse(uint8_t* src,size_t length){
	size_t i;
	size_t l;
	uint8_t temp;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;
	
	for(i=0;i<l;i++){
		temp=*(src+i);
		*(src+i)=*(src+length-i-1);
		*(src+length-i-1)=temp;
	}
	return  src;
 }
int32_t*  reserve_words(size_t length){
	
	int32_t * src;
	src=(int32_t*)malloc(sizeof(int32_t)*length);
	return src;
}

void free_words(int32_t* src){
	/*while(src!=NULL){
		*src='\0';
		src++;
	}*/
	free(src);
}
