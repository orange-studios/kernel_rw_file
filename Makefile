obj-m :=read_userspace.o                        #要生成的模块名
read_userspace-objs:= read_userspace_file.o     #生成这个模块名所需要的目标文件

#KDIR := /lib/modules/`uname -r`/build/
KDIR := /lib/modules/$(shell uname -r)/build/
PWD := $(shell pwd)

default:
	make -C $(KDIR) M=$(PWD) modules

clean:
	rm -rf *.o *.cmd *.ko *.mod.c .tmp_versions Module.symvers modules.order
