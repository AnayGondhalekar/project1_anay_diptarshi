#include<stdio.h>
#include<stdint.h>



uint8_t* my_memcpy(uint8_t* src,uint8_t* dst,size_t length);
/*This is a function that copies the data in the source pointer to the destination
* pointer.It does not take care of overlap.The inputs are the source pointer,the destination
* pointer and the length of both the pointer arrays.Then the source and the destination
* pointer is dereferenced where one is copied to the other.Both the pointers are then
*incremented till the length of the pointers.*/



uint8_t* my_memmove(uint8_t* src,uint8_t* dst,size_t length);
/*This is a function that copies the data in the source pointer to the destination
* pointer.It does takes care of overlap.The inputs are the source pointer,the destination
* pointer and the length of both the pointer arrays.Both the pointers are first incremented 
* till the end of the pointer array then the source and the destination
* pointer is dereferenced where one is copied to the other.Both the pointers are then
* decremented till the length of the pointers.*/


int8_t* my_memset(uint8_t* src,size_t length,uint8_t value);
/*This function sets all the indices of a given pointer array to a given value
* It takes the source pointer and the value as the input and fills it with the values at every index*/


uint8_t* my_memzero(uint8_t* src,size_t length);
/*The function is the same as my_memset except that all the pointer indices are set to 0
* The function returns the source pointer.*/

uint8_t* my_reverse(uint8_t* src,size_t length);
/*This function reverses a pointer array.It takes the source pointer and the 
* the size of the source pointer as the input.A temporary variable goes halfway through
* the array and all the data on the other side is exchanged with the current pointer 
* index.This way all the data of a pointer array is reversed.The function returns
* the source pointer.*/

int32_t*  reserve_words(size_t length);
/*this function reserves an array of pointers for the given length.It takes the length
* of the pointer as the input.*/

void free_words(int32_t* src);








