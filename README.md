# dotfiles

You can install Conquerer of Completion (Coc) by:
    * First Installing nodejs, with Node Package Manager (npm)
    * Then installing coc with Vim Plug
    * You can also then install the language servers like clang for example
    * You should look through the config files.
    * To run zig, you need to get zig, add to PATH, get zls, add to PATH
    * Then put said path into the config files
    * To enable coc you should uncomment the plugin in plugins.vimrc
    * Work with plugins by issuing :CocConfig, and then adding whatever you want 
    * 'none' in config removes autocomplete, coc#refresh() in mapping.vimrc allows <Tab> in insert mode to trigger completions

bashrc:
    * ulimit -s unlimited

Making terminal nice:
    * Install fastfetch
        - Install to PPA -> sudo apt install fastfetch
    * Install synth shell -> yes prompt, no rest

problemtools problems:
    - python virtual environment for requirements can be necessary
    - kernel.randomize_va_space = 0 in /etc/sysctl.conf for disabling aslr on wsl

