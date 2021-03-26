#
#Desgin of Netlink
#

MODULE_NAME :=kernel_demo
obj-m :=$(MODULE_NAME).o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	gcc user_demo.c -o user_demo

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
	rm -f user_demo