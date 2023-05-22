# WiFi Pineapple nano and tetra wps module fixed
Note: If you are getting error 161 it may be an issue with newer libpcap versions. I am trying to compile an older version but so far its not working. If anyone has an older version of libpcap for the wifi pineapple nano or tetra (somewhere between 0.8 and 1.4) or knows how to compile it without errors please tell me in the issues section. Or make a pull request

To Do:<br>
fix error 161<br>
add oneshot functionality<br>

The wps module for the WiFi Pineapple nano and tetra. It has been edited by m5kro (aka kraken5) to run properly on the latest firmwares.  Thanks to Whistle Master for the original and adde88 for the updated reaver, bully, and pixiewps ipks.

After downloading, place the wps folder in either /pineapple/modules or /sd/modules. Once the files are there, reboot the pineapple. Then at the web interface go to the wps module and install dependencies.

After pressing the install dependencies button you may choose to delete the ipks to free up space if needed. ipks are stored in "/pineapple/modules/wps/ipks/" or "/sd/modules/wps/ipks/" depending on where you chose to install. 

[Checkout my ZeroTier module for the WiFi Pineapple!](https://github.com/m5kro/WiFi-Pineapple-mkvi-ZeroTier-module)

Disclaimer: I'm not responsible for what you do with this so don't be a dick and hack people without permission.
