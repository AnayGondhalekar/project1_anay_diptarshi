/* 
@file- conversion.c
@brief- This file includes functions for basic data manipulation.
* Conversion.c includes data manipulation functions such as indexed power 
* of a number, ascii to integer conversion and vice versa as well as
* little endian to big endian and vice versa.
@author- Anay Gondhalekar and Diptarshi Chakraborthy
@date- 4th October 2017
*/

#include<stdio.h>
#include<stdint.h>
#include"conversion.h"

/*typedef unsigned int size_t;
typedef unsigned char uint8_t;
typedef signed char int8_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
**/


uint32_t math_pow(int32_t number, char power){
	char i=1;
	uint32_t result;
	result=1;
	while(i<=power){
		result=result*number;
	}		
	return result;
}


uint8_t my_itoa(int32_t data,uint8_t* ptr,uint32_t base)
{
	
	int32_t rem;//stores remainder

	int32_t temp;//a temporary variable
	
	temp=data;	
	
	int8_t length;
	length=0;

	if(data<0)//makes data positive.sign can be added later on
		data=data/(-1);
	

	/*The if statements below take out each digit from the number
		and takes them into pointer/array*/

	if(base==2){	
		while(data!=0){
			rem=data%2;
			*ptr=rem+48;
			(ptr++);
			length++;
			data=data/2;
			}
	}
	
	if(base==8){	
		while(data!=0){
			rem=data%8;
			*ptr=rem+48;
			(ptr++);
			length++;
			data=data/8;
			}
	}
	
	if(base==10){	
		while(data!=0){
			rem=data%10;
			*ptr=rem+48;
			(ptr++);
			length++;
			data=data/10;
			}
	}

	if(base==16){	
		while(data!=0){
			rem=data%16;
			if(rem==10)
				rem='A';
			else if(rem==11)
				rem='B';
			else if(rem==12)
				rem='C';
			else if(rem==13)
				rem='D';
			else if(rem==14)
				rem='E';
			else if(rem==15)
				rem=='F';
			
			else	

			*ptr=rem+48;
			(ptr++);
			length++;
			data=data/16;
			}
	}
	
	if (temp<0){
	*ptr='-';
	ptr++;
	length++;
	}
	*ptr='\0';

	return length;
}
//I am assuming that the 0th index of the pointer will contain LSB for the function below

int32_t my_atoi(uint8_t* ptr,uint8_t digits,uint32_t base){
	
	int32_t ret_num;
	ret_num=0;
	char i;
	char c;	
	if(base==2||base==8||base==10){
		for(i=0;i<digits;i++){
			c=*ptr;
			if(c=='-')
				ret_num=-(ret_num);
			else
				c=*(ptr)-48;
			ret_num=ret_num+c*math_pow(base,i);
			ptr++;
		}
	}
	if(base==16){
		for(i=0;i<digits;i++){
			c=*(ptr);
			if(c=='A'||c=='a'){
				c=10;}
			else if(c=='B'||c=='b'){
				c=11;}
			else if(c=='C'||c=='c'){
				c=12;}
			else if(c=='D'||c=='d'){
				c=13;}
			else if(c=='E'||c=='e'){
				c=14;}
			else if(c=='F'||c=='e'){
				c=15;}
			else if(c=='-')
				ret_num=-(ret_num);

			else 
			c=c-48;
			ret_num=ret_num+c*math_pow(base,i);
		}	ptr++;
	}

	return ret_num;
}

int8_t big_to_little32(uint32_t* data,uint32_t length){

	uint32_t c;//character to extract each digit from the data array
	uint32_t l;//variable to store half the length;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;

	int8_t  ret_num=0;//number to be returned
	int32_t *temp;
	int32_t i;	
	for(i=0;i<l;i++){
		temp=*(data+i);	
		*(data+i)=*(data+i+length-1);
		*(data+i-length)=temp;
	}
	return 0;
}


int8_t little_to_big32(uint32_t* data,uint32_t length){

	uint32_t c;//character to extract each digit from the data array
	uint32_t l;//variable to store half the length;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;

	int8_t  ret_num=0;//number to be returned
	int32_t *temp;
	int32_t i;	
	for(i=0;i<l;i++){
		temp=*(data+i);	
		*(data+i)=*(data+i+length-1);
		*(data+i-length)=temp;
	}
	return 0;
}











