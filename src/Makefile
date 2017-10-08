include sources.mk
CPU= cortex-m0plus
FPU= fpv4-sp-d16
SPECS= nosys.specs
ARCHITECTURE= armv6-m
PLATFORM= HOST
LINKER_FILE= ../platform/MKL25Z128xxx4_flash.ld

#These are all the for the host platform

ifeq ($(PLATFORM),HOST)
CFLAGS=-Wall -g -O0 -std=c99 -Werror $(INCLUDES)
CC=gcc
CPPFLAGS= -DHOST -DPROJECT1 -DVERBOSE
LDFLAGS= -Wl,-Map=project1.map 
SOURCE= $(SOURCES:.c = .o)
SIZE= arm-linux-gnueabi-size -Bd
DEPS= $(SOURCES:.c=.d)
LIB_OBJS= $(LIB_SRCS:.c=o)

endif

ifeq ($(PLATFORM),BBB)
CC=arm-linux-gnueabi-gcc
CFLAGS=-Wall -g -O0 -std=c99 -Werror $(INCLUDES)
CPPFLAGS= -DBBB -DPROJECT1 -DVERBOSE
LDFLAGS= -Wl,-Map=project1.map 
SOURCE= $(SOURCES:.c =.o)
SIZE=  arm-linux-gnueabi-size -Bd
DEPS= $(SOURCES:.c=.d)
LIB_OBJS= $(LIB_SRCS:.c=o)

endif

ifeq ($(PLATFORM),KL25Z)
CFLAGS=-Wall -g -O0 -std=c99 -Werror $(INCLUDES_KL25Z) \
	-mthumb -mfpu=$(FPU) --specs=$(SPECS) -mcpu=$(CPU) \
	-march=$(ARCHITECTURE) -mfloat-abi=soft 
CC=arm-none-eabi-gcc
CPPFLAGS= -DKL25Z -DPROJECT1 -DKL25Z
LDFLAGS= -Wl,-Map=project1.map -T $(LINKER_FILE)
SOURCE= $(SOURCES_KL25Z:.c = .o) startup_MKL25Z4.o
SIZE=  arm-none-eabi-size -Bd
DEPS= $(SOURCES:.c=.d)
LIB_OBJS= $(LIB_SRCS_K:.c=o)
endif

#the recipies for the object files
 
#debug.o:debug.c
#	${CC} -c debug.c -I. ${flags}
#	${CC} -c conversion.c -I. ${flags}

#memory.o:memory.c
#	${CC} -c memory.c -I. ${flags}

#conversion.o:conversion.c
#	${CC} -c conversion.c -I. ${flags}

 
#project1.o:project1.c
#	${CC} -c project1.c -I. ${flags}
#main.o:main.c
#	${CC} -c main.c -I.  ${flags}

#the recipies for the .asm  files


memory.asm:memory.c
	${CC} -S memory.c ${CFLAGS}
conversion.asm:conversion.c
	${CC} -S conversion.c ${CFLAGS}
debug.asm:debug.c
	${CC} -S debug.c ${CFLAGS}
project1.asm:project1.c
	${CC} -S project1.c ${CFLAGS}
main.asm:main.c
	${CC} -S main.c ${CFLAGS}
#the  recipies for  implementation files 

memory.i:memory.c
	${CC} -E memory.c ${CFLAGS}
conversion.i:conversion.c
	${CC} -E conversion.c ${CFLAGS}
debug.i:debug.c 
	${CC} -E debug.c ${CFLAGS}

%.o : %.c
	@echo "Generating o file"
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

%.d : %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -M $< -o $@

compileall : $(SOURCE)

.PHONY : build

build : $(SOURCE)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(SOURCE) -o  project1.elf

clean:
	rm -f *.o project1.elf *.asm *.map *.i
