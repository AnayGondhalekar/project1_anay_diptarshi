/* 
@file- memory.c
@brief- This file includes function definitions for memory manipulation.
* Memory.c includes the function definitions for memory move, transfer from 
* source to destination, reserve words and free words and clearing memory
* as well as setting the memory.
@author- Anay Gondhalekar and Diptarshi Chakraborthy
@date- 4th October 2017
*/

#include<stdio.h>
#include<stdint.h>



uint8_t* my_memcpy(uint8_t* src,uint8_t* dst,size_t length);
/*
* @brief- This is a function that copies the data in the source pointer to the destination
* pointer.It does not take care of overlap.
* @param-The inputs are the source pointer,the destination
* pointer and the length of both the pointer arrays.Then the source and the destination
* pointer is dereferenced where one is copied to the other.Both the pointers are then
*incremented till the length of the pointers.
* @ return- destination 
*/



uint8_t* my_memmove(uint8_t* src,uint8_t* dst,size_t length);
/*
* @brief-This is a function that copies the data in the source pointer to the destination
* pointer.It does takes care of overlap.The inputs are the source pointer,the destination
* pointer and the length of both the pointer arrays.
* @param- Both the pointers are first incremented 
* till the end of the pointer array then the source and the destination
* pointer is dereferenced where one is copied to the other.Both the pointers are then
* decremented till the length of the pointers.
* @return- destination
*/


int8_t* my_memset(uint8_t* src,size_t length,uint8_t value);
/* @brief- This function sets all the indices of a given pointer array to a given value
* @param- It takes the source pointer and the value as the input and fills it with the values at every index
* @return- source
*/

uint8_t* my_memzero(uint8_t* src,size_t length);
/*
* @brief- The function is the same as my_memset except that all the pointer indices are set to 0
* @param- source 
* @return- The function returns the source pointer.*/

uint8_t* my_reverse(uint8_t* src,size_t length);
/*@brief- This function reverses a pointer array.It takes the source pointer and the 
* the size of the source pointer as the input.
* @param- A temporary variable goes halfway through
* the array and all the data on the other side is exchanged with the current pointer 
* index.This way all the data of a pointer array is reversed.
* @return- The function returns the source pointer.*/

int32_t*  reserve_words(size_t length);
/*@brief- this function reserves an array of pointers for the given length.
* @param- It takes the length of the pointer as the input.
* @return- source  */

void free_words(int32_t* src);
/*@brief- free the words by making null character 
* @param- source
* @return- null
*/





