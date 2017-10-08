#include<stdio.h>
#include<stdint.h>


uint8_t my_itoa(int32_t data,uint8_t* ptr,uint32_t base);
/** This functions converts a given integer into a string representation
* using ASCII values.
* The function takes the 32 bit or 4 byte signed integer, an 8 bit unsigned
* integer pointer and the base of the number as the input.
* By extracting each digit in the data and obtaining the corresponding character  	
* it is copied to the destination pointer ptr.
* the function returns the the length of the resultant ptr array obtained.
*/

int32_t my_atoi(uint8_t* ptr,uint8_t digits,uint32_t base);
/**This function accepts an unsigned integer pointer,number of
* digits and base of the number as the input.
* a loop extracts each character from a pointer and calculates the corresponding number
* (signed) and returns it using the base and its place value.
* The function returns the signed integer number
* I have assumed that the input is little Endian i.e the LSB is at the first index
*/

int8_t big_to_little32(uint32_t* data,uint32_t length);
/**This function converts big endian array notation
*  into little endian.In big endian notation the MSB is at the first
* index of memory pointer. AS the data pointer and length of the memory
* pointer are inputs, I simply reverse all elements within the pointer and then
* return 0.For that i move halfway within the array.I use a temporary variable 
* called temp. The function returns 0 and an error if incorrect due to pointer malfunction.
*/

int8_t little_to_big32(uint32_t* data,uint32_t length);
/**This function converts big endian array notation
*  into little endian.In little endian notation the LSB is at the first
* index of memory pointer. AS the data pointer and length of the memory
* pointer are inputs, I simply reverse all elements within the pointer and then
* return 0.For that i move halfway within the array.I use a temporary variable 
* called temp. The function returns 0 and an error if incorrect due to pointer malfunction.
*/


