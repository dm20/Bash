# USEFUL COMMAND LINE CODE
### Enter these lines in Terminal on your Mac

## >> to tell the computer to say Hello, World out loud
    say Hello, World

## >> to find out what directory you're in
    pwd

## >> to find out what user is currently logged in
    whoami

## >> to use the '&' operator and run a process in the background and continue going about your business
    [some command] &

## >> to write a script in nano
##### from command line:

    nano scriptname.sh

##### now write your code in the nano file editor:
        
##### Example: 
        
	    #!/bin/bash
	    echo This is a Bash script # simple example that prints this message when script is run
            
        
##### now use keyboard shortcut (ctrl x) followed by the 'y' key to save the script and exit nano    

##### from command line:

    chmod +x scriptname.sh # make the script executable
    ./scriptname.sh # run the script

## >> to list all WiFi (port en0) networks your device has been on
    networksetup -listpreferredwirelessnetworks en0 
##### filter for certain string patterns using grep: 
  
    networksetup -listpreferredwirelessnetworks en0 | grep -i "someString" 
##### note that this ignores case (-i) and will accept substring arguments (i.e. if you look for "stanford" you could just search for "nfor")

## >> to get information about your network configuration, IP address, etc
    ifconfig

## >> to see all the network traffic on your machine
    sudo tcpdump
##### to see verbose output of all the network traffic on your machine

    sudo tcpdump -v
##### to convert the verbose output to slightly more human readable ASCII

    sudo tcpdump -AA -v

## >> to connect to a wifi network 
    networksetup -setairportnetwork port networkname password
#### Note about connecting to a wifi network:
##### port is your wifi port (on my Mac it's port en0)
##### networkname is the name of the network, like Starbucks
##### password is just the straight up password for the network
##### if the password is already saved in your keychain you don't need that param

