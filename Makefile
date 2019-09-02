ifneq ($(KERNELRELEASE),)
obj-m := test.o
else
PWD := $(shell pwd)
KDIR := /usr/src/kernels/$(shell uname -r)
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
clean: 
	-rm -rf *.ko *.o *.symvers
endif
