virt-install --debug --connect=qemu:///system --name={{ name }} --ram={{ memory }} --vcpus={{ vcpus }} --disk pool={{ poolname }},bus=virtio,size=5,sparse=false --location={{ netinstall }} --graphics vnc,listen=:: --os-type=linux --virt-type=kvm --noautoconsole {{ autostartflag }}--wait=-1 --hvm --network={{ bridge }},model=virtio --extra-args="auto=true priority=critical language=en locale=en_US console-setup/ask_detect=false keyboard-configuration/xkb-keymap=us hostname={{ name }} {{ virtinstnetwork }} url={{ preseedurl }}"
