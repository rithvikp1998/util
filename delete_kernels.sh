#!/bin/bash

printf "Available kernels: " 
for version in /var/lib/initramfs-tools/* ;
do
	printf "${version##*/} "
done

printf "\nEnter the kernel versions to remove: "
read -a versions

for version in ${versions[@]}
do
	printf "Deleting kernel ${version}"
	sudo rm -rf /boot/vmlinuz-${version} /boot/vmlinuz-${version}.old \
		/boot/initrd.img-${version} \
		/boot/System.map-${version} /boot/System.map-${version}.old \
		/boot/config-${version} /boot/config-${version}.old \
		/lib/modules/${version}/ \
		/var/lib/initramfs-tools/${version}
done

sudo update-grub
