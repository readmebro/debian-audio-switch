# debian-audio-switch
This is just a simple script you can use to assign a keyboard shortcut to switch your audio device (e.g. friom headset to speakers). Feel free to take and modify any way you want!  
- Note down the exact names of the two devices you want to switch between.
## Step 1: Find your Audio Devices you want to use
Open your terminal and type <pre lang="markdown">pactl list short sinks</pre> this will return your devices something like this:

<img width="1398" height="81" alt="image" src="https://github.com/user-attachments/assets/1664281f-994f-472b-986a-35d375308eaf" />
In my case I want "alsa_output.usb-Razer_Razer_Nari_Essential-00.iec958-stereo" and "lsa_output.pci-0000_2f_00.4.analog-stereo"

---

## Step 2: Add Your Devices to the Audio Switching Script

1. **Open Your Audio Switch Script**  
Find the script file you download to use to toggle audio devices (e.g., `switch-specific-audio.sh`) in your downloads folder. (I moved this to my home folder)

2. **Edit the Script to Include Your Devices**  
Inside the script, there will be placeholders for two device names. Replace those placeholders with the exact device names you noted earlier.
<pre lang="markdown">nano ~/switch-specific-audio.sh</pre>
  and replace SINK1 and SINK2 with your devices, leave the quotations 
<img width="977" height="606" alt="image" src="https://github.com/user-attachments/assets/bcae7989-f3f0-4011-acf6-2fb0a26a9004" />


4. **Save the Script**  
After replacing the device names, save and close the script file.
ctrl+x and enter when prompted 

---

## Step 3: Make the Script Executable

1. **Set the Script as Executable**  
Before running the script, make sure it has permission to execute. You can do this by running a command in the terminal or following your system’s instructions for file permissions.
<pre lang="markdown">chmod +x switch-specific-audio.sh</pre>

2. **Set Permissions**
Now for security, since this script only needs to be run by you, the best practice is to limit access to yourself only.
<pre lang="markdown">chmod 700 ~/switch-specific-audio.sh</pre>

---

## Step 4: Create a Custom Keyboard Shortcut

1. **Open Keyboard Settings**  
Go to menu and then → **Keyboard** → **Shortcuts** tab.

2. **Add a New Custom Shortcut**  
- Click the **Custom Shortcuts** section.  
- Click the **Add Custom Shortcut** button.  
- Give the shortcut a name like “**Switch Audio Devices**.”  
- For the command, enter the full path to your audio switching script (for example: `/home/yourusername/switch-specific-audio.sh`).

3. **Assign a Shortcut Key**  
Click on the shortcut’s empty field next to its name and press your desired key combination (e.g., `Alt + A`).

4. **Apply and Close**  
Save the shortcut. Now your custom keyboard shortcut is ready to toggle your audio output devices.
<img width="904" height="635" alt="image" src="https://github.com/user-attachments/assets/34d2be38-f2e9-4a15-b1ea-83ba8e8cfb65" />

---

## Step 5: Test Your Shortcut

Press your chosen keyboard shortcut. The audio output should switch between the two devices you configured in the script.

---

# Additional Tips

- **Run the script without `sudo`**: The script needs to run as your regular user, not with elevated permissions.  
- **Check your device names carefully**: Device names are case-sensitive and must be exact.  
- **Get help if needed**: If it doesn’t work, check the script permissions or ask for assistance.


