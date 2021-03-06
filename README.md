# Virtuel

### Terms
- _host_ - Your main computer OS; The thing that runs vagrant.
- _vm_ - Virtual Machine; An OS that runs on the _host_. 
- _guest_ - OS that runs on _host_ OS; See _vm_.
- _symbolic link_ - nickname/link for another file or directory.
- _BIOS_ - Boot firmware loaded which loads your _host_ OS
- _Vagrant_ - Tool that uses _vm_s to create portable development environments
- _Vagrantfile_ - Configuration file for a Vagrant VM. 

### Available VMs
- _colisee_ - vm for SIG-Game's new arena, Colisee
- _game_dev_ - vm for SIG-Game Game Server & Client development
- _compete_ - vm for MegaMinerAI competitors; supports running all clients & game server

### Getting started
1. Enable virtualization technology on your computer  
  - This will most likely be in your BIOS  
  - Accessing your BIOS is computer specific, but most likely involves tapping a F1-F12 key during bootup.  
  - If this does not work, please consult your specific device manual/google search  
  - If you have a very old kernel/computer, it may not support virtualization    
2. Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads)  
3. Install [Vagrant](https://www.vagrantup.com/docs/installation/)  
4. [Download](https://github.com/siggame/Virtuel/archive/master.zip) the repo (& unzip)  
  - You can use git to clone as well: `git clone https://github.com/siggame/Virtuel.git`  

### Simple Usage
5a. If host is linux, run `./virtuel.sh`  
5b. If host is windows, run `./virtuel.bat`  
6. Follow command line wizard   

### Manual Usage
5. Navigate to your desired VM folder -- such as `compete/vm/`  
  - See available VMs in _Available VMs_ section
  - The directory should contain a `Vagrantfile`
6. Create and configure VM with `vagrant up`  
7. Connect to the VM with `vagrant ssh`  
  - You are now in an Ubuntu environment, even if your _host_ OS is Windows
  - Changes made in your VM will persist
  - Changes made in the `/vagrant` folder will be synced to the host's working directory (where the `Vagrantfile` is)
8. Exit your VM with `exit`

### Other notes
- The VM `/vagrant` directory is synced with the host's directory (where the Vagrantfile is)
- The VM has a symbolic link at `~/workspace` to `/vagrant` (this means you can work in the `~/workspace` directory the and your changes will be relected in `/vagrant`)
- If you get permission errors when trying to edit files in the `/vagrant` directory, try running `vagrant reload` on the host machine.

### tmux
`tmux` is a special utility on Linux that allows you to split a single terminal into multiple smaller terminals. This is especially helpful when developing and operating with multiple clients, or simply have a need for multiple terminals open at the same time.

`tmux` - start a new session with a single window   
`tmux ls` - list all sessions  
`tmux at` - attach to previous session  
`tmux at -t <session>` - attach to a given session  
`tmux kill-session -t <session>` - kill a given session  


<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>"</kbd> - split pane with horizontal line  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>%</kbd> - split pane with vertical line  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>left</kbd> - move to left pane  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>right</kbd> - move to right pane  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>up</kbd> - move to pane above  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>down</kbd> - move to pane below  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>x</kbd> - kill current pane  

<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>c</kbd> - create a new window  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>p</kbd> - go to previous window  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>n</kbd> - go to next window  
<kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>&</kbd> - kill current window        
