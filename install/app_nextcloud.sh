sudo dnf install -y nextcloud-client nextcloud-client-nautilus
sudo rm /usr/share/cloud-providers/com.nextcloudgmbh.Nextcloud.ini
 echo -e "\nRemove the following lines from the NextCloud.desktop file.\n"
 echo -e "\t-Implements=org.freedesktop.CloudProviders\n"
 echo -e "\t[org.freedesktop.CloudProviders]"
 echo -e "\t-BusName=com.nextcloudgmbh.Nextcloud"
 echo -e "\tObjectPath=/com/nextcloudgmbh/Nextcloud\n"
 read -p "Press enter to open the .desktop file."
kitty -1 -e bash -c "sudoedit /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop"
