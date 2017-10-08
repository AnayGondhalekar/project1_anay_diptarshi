
#include<stdio.h>
#include<stdint.h>
#include"conversion.h"
#include"platform.h"

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
	i++;
	}		
	return result;
}

uint8_t my_itoa (int32_t data, uint8_t * ptr, uint32_t base)
{

  uint8_t rem;//stores remainder
  //char c;
  int i;
  int32_t temp;			//a temporary variable
  temp = data;

  uint8_t length;
  length = 0;

  if (data < 0)			//makes data positive.sign can be added later on
    data = -(data);


  /*The if statements below take out each digit from the number
     and takes them into pointer/array */

  if (base == 2)
    {
      while (data != 0)
	{
	  rem = data % 2;
	  *(ptr) = rem + 48;
	  (ptr++);
	  length++;
	  data = data / 2;
	}
    }

  if (base == 8)
    {
      while (data != 0)
	{
	  rem = data % 8;
	  *(ptr) = rem + 48;
	  (ptr++);
	  length++;
	  data = data / 8;
	}
    }

  if (base == 10)
    {
      while (data != 0)
	{
	  rem = data % 10;
	  *(ptr) = rem + 48;
	  (ptr++);
	  length++;
	  data = data / 10;
	}
    }
    
  if (base == 16)
    {
      while (data != 0)
	{
	  rem = data % 16;
	  if (rem == 10)
	    *ptr = 'A';
	  else if (rem == 11)
	    *ptr = 'B';
	  else if (rem == 12)
	    *ptr = 'C';
	  else if (rem == 13)
	    *ptr = 'D';
	  else if (rem == 14)
	    *ptr = 'E';
	  else if (rem == 15)
	    *ptr = 'F';
	  else
	    *(ptr) = (rem + 48);
	  (ptr++);
	  length++;
	  data = data / 16;
	}
    }
  if (temp < 0)
    {
      *ptr = '-';
      ptr++;
      length++;
    }
  //*ptr='\0';
 ;
  
 int l;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;
	ptr=ptr-length;
	for(i=0;i<l;i++)
	{
		temp=*(ptr+i);
		*(ptr+i)=*(ptr+length-i-1);
		*(ptr+length-i-1)=temp;
	}
 //ptr=ptr-length;
  return length;
}

int32_t my_atoi (uint8_t * ptr, uint8_t digits, uint32_t base)
{

  int32_t ret_num = 0;
  int b=1;
  int d=0;
  uint8_t i;
  unsigned char c;
  if (base == 2 || base == 8 || base == 10)
    {
      for (i = 0; i < digits; i++)
	{
	  c = *(ptr);
	  if (c == '-')
	    b = 0;
	  else
	    c = *(ptr) - 48;
	  ret_num = ret_num + c * (math_pow (base, digits - i - 1));
	  ptr++;
	}
    }
  if (base == 16)
    {
      for (i = 0; i < digits; i++)
	{ HERE:
	  c = *(ptr);

	  if (c == 'A' || c == 'a')
	    {
	      d = 10;
	      
	    }
	  else if (c == 'B' || c == 'b')
	    {
	      d = 11;
	      
	    }
	  else if (c == 'C' || c == 'c')
	    {
	      d = 12;
	      
	    }
	  else if (c == 'D' || c == 'd')
	    {
	      d = 13;
	      
	    }
	  else if (c == 'E' || c == 'e')
	    {
	      d = 14;
	    }
	  else if (c == 'F' || c == 'f')
	    {
	      d = 15;
	    }
	  else if (c == '-')
	   {
	       b=0;
	   ret_num = -(ret_num);
	    ptr++;
	    i++;
        goto HERE;
	   }
	   else
	   {
	       d=c-48;
	   }
	  ret_num = ret_num + d * math_pow (base, digits - i - 1);
	  ptr++;
	}
    }
    if (b==0)
    {
        ret_num=-ret_num;
    }
    return ret_num;
}

int8_t big_to_little32(uint32_t* data,uint32_t length){

	//uint32_t c;//character to extract each digit from the data array
	uint32_t l;//variable to store half the length;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;

	
	uint32_t temp;
	uint32_t i;	
	for(i=0;i<l;i++){
		temp=*(data+i);	
		*(data+i)=*(data-i+length-1);
		*(data-i+length-1)=temp;
	}
	return 0;
}


int8_t little_to_big32(uint32_t* data,uint32_t length){

	//uint32_t c;//character to extract each digit from the data array
	uint32_t l;//variable to store half the length;
	if(length%2==0){
		l=length/2;
	}
	else
		l=(length-1)/2;

	
	uint32_t temp;
	uint32_t i;	
	for(i=0;i<l;i++){
		temp=*(data+i);	
		*(data+i)=*(data-i+length-1);
		*(data-i+length-1)=temp;
	}
	return 0;
}











