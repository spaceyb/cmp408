KERNEL = ${RPISRC}
CROSS = ${RPICROSS} 
PWD := $(shell pwd) 
obj-m += lkm01.o

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS) -C $(KERNEL) M=$(PWD) modules
clean:
	make -C $(KERNEL) M=$(PWD) clean
