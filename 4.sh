#Go to terminal and open a file with vi editor:

sudo vi /etc/netplan/*.yaml

#Now add some line of code for assigning a new ip address and save it.For saving a text file in vi editor is → press “esc” then write :wq and press enter (esc→ :wq → enter).

ethernets:
    enp0s3:
      dhcp4: no
      dhcp6: no
      addresses: [10.0.2.17/24]
      gateway4: 10.0.2.17
      nameservers:
        addresses: [8.8.4.4, 8.8.8.8]

#Write this command for applying the changes

sudo netplan apply
