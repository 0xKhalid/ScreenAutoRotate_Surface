# ScreenAutoRotate_Surface
A script that you can run at startup that allows automatic screen rotation on Microsoft Surface devices running the KDE Plasma desktop environment. The Surface kernel must be installed on the device to enable the use of the accelerometer and gyroscope for screen rotation. More information on insalling the Surface kernel can be found [here](https://github.com/linux-surface/linux-surface)

This script has been tested on a Microsoft Surface Pro 7 running KDE Plasma 5.24.4 desktop environment on Ubuntu 22.04.

## How to use
1. Clone the repository to your local machine.
2. Open a terminal and navigate to the directory where the repository was cloned.
3. Run the following command to make the script executable:
```chmod +x ScreenAutoRotate.sh```
4. Run the following command to execute the script:
```./ScreenAutoRotate.sh```
5. The script will now run in the background and automatically rotate the screen based on the orientation of the device.

## Running the script at startup
To run the script at startup, you can add it to the autostart applications in KDE Plasma. Here's how to do it:
1. Open the KDE System Settings application.
2. Go to the "Startup and Shutdown" section.
3. Click on "Autostart" in the left-hand menu.
4. Click on the "Add..." button.
5. Click on the "Add Login Script" option and navigate to the directory where the repository was cloned.
6. Select the "ScreenAutoRotate.sh" file and click "Open".
7. Click "OK" to save the changes.

And that's it! The script will now run automatically at startup and provide automatic screen rotation on your Microsoft Surface device.