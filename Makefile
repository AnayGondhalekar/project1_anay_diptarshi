#ifeq($(PLATFORM),HOST)

#CC=gcc
#flags=-Wall -g -O0 -std=c99 
#lD=ld

#endif

flags=-Wall	 -g	 -O0	 -std=c99 
CC=gcc



#the recipies for the object files
conversion.o:conversion.c
	${CC} -c conversion.c ${flags}

memory.o:memory.c
	${CC} -c memory.c ${flags}
 
debug.o:debug.c
	${CC} -c debug.c ${flags}
project1.o:project1.c
	${CC} -c project1.c ${flags}
main.o:main.c
	${CC} -c main.c ${flags}

#the recipies for the .asm  files


memory.asm:memory.c
	${CC} -S memory.c ${flags}
conversion.asm:conversion.c
	${CC} -S conversion.c ${flag}
debug.asm:debug.c
	${CC} -S debug.c ${flags}
project1.asm:project1.c
	${CC} -S project1.c ${flags}

#the  recipies for  implementation files 

memory.i:memory.c
	${CC} -E memory.c ${flags}
conversion.i:conversion.c
	${CC} -E conversion.c ${flag}
debug.i:debug.c 
	${CC} -E debug.c ${flags}

project1.elf:project1.o memory.o conversion.o debug.o main.o
	${CC} -o project1.elf	main.c project1.c project1.o ${flags}
