
#updatating pi
sudo apt update 
sudo apt upgrade

#setting hostname to SDU-Eagles-pi
sudo cp settings/hostname /etc/hostname


#setting up wifi hostspot
sudo apt install hostapd dnsmasq

sudo systemctl stop hostapd
sudo systemctl stop dnsmasq

mkdir backup

cp /etc/dhcpcd.conf backup/

sudo cp /etc/dhcpcd.conf /etc/dhcpcd.conf.orig


sudo cat settings/dhcp_settings >> /etc/dhcpcd.conf

cp /etc/dnsmasq.conf backup/

sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig


sudo cp settings/dnsmasq.conf /etc/dnsmasq.conf
sudo cp settings/hostapd.conf /etc/hostapd/hostapd.conf
sudo cat settings/hostapp_settings_for_defult >> /etc/default/hostapd

# setting up udev rules for drone
sudo cp 99-Drone.rules /etc/udev/rules.d/


