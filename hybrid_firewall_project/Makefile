obj-m += firewall_lkm.o
firewall_lkm-objs := kernel/firewall_lkm.o kernel/netlink_comm.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
