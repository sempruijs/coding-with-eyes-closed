# Goodbye terminal life

This chapter is meant for people who depend on TTS technoligy. 
Terminals are great for people with partial sight. Every TUI (terminal user interface) has maximum contrast. It's just a grid of characters. 
If hav partial sight please keep using your terminal.

### What is the problem with terminals?

With shells like bash or zsh, you type a string and it returns a string.
You may think that that is a good thing. The only thing that is left is to read with a speach syntesiser that string and your done.

Sadly for us, people can very creative with just a grid of characters. 

#### Problem 1: We cannot filter strings precise enough to work fast with terminals

Neofetch is a TUI that prints information about your system. 
On the left a ASCII art logo of your operating system and on the right information about your system.
This is great for people with sight but for people like us that logo is dirstracting. 
If that string is read to us, we hear something like: 

OS: macOS 13.4.1 22F82 arm64:MMMMMMMMMMMMMMMMMMMMMMMM: DE: Aqua .MMMMMMMMMMMMMMMMMMMMMMMMX. WM: Quartz Compositor kMMMMMMMMMMMMMMMMMMMMMMMMWd. 

There is alloot of garbage in this string and we do not know how to filter it.

Here is another example: we want to know the file premissions of a file called ```zellij.md```. 
We know it is in our home directory so we run the ```ls -la``` command. 

First all other files are read before the file that starts with the z is read. 
Now we have to wait and here all other premissions before we here the file we need.

I believe this is fixable by adding flags to the ls commands to filter it or piping the output in another cli that can filter only that specific line but it costs allot of time because you need to think how you are going to filter that string to find what you need.
Visual people whould only do that with strings that are longer then 100 lines, but we need a filter with 10 and that is time consuming.

You can find a workaround but it does not feel natural.

#### Problem 2: Graphical terminal user interfaces

We also have sort of graphical applications for the terminal.

[Lazygit](https://github.com/jesseduffield/lazygit) for example has a part on the screen to show which files are staged for commits, a other view for on which branch you are on, pop-up dialogs for selecting a remote a simulair actons and a view showing the changes made for each file. 
All in 1 single view. A screen reader has no idea what is going on here because a screenreader only sees a grid of text.

[Helix](https://github.com/helix-editor/helix) is a vim-like editor written in rust. 
It is a great editor but not for people who depend on screenreaders. 
A screenreader has no idea when it is in normal mode and in insert mode so it has no idea when a ```j``` keypress should read the next line or if the user is typing ```joyfull``` in insert mode.

These are exampels to illustrate the problem with terminals for screenreader users.
Helix and lazygit are great tools that I personally use everyday, but it is not accessible for the blind.

#### Problem 3: Finding a terminal

Most terminals do not integrate so well with your screenreader.
I tried to use git bash with nvda on windows but it was just a mess. I could barely hear contents of a small file with ```cat```. 

The default console that comes with gnome did not read the output with the default gnome screenreader called orca.

Kitty does not read text with VoiceOver on MacOS nor with orca on NixOS.

Iterm2 worked pretty good on Mac, but navigating with a braille display was harder.

The best experience I had with terminals and screenreaders was VoiceOver on MacOS with the default MacOS terminal.

### How can we fix this?

I really hope that terminals we be just as accessible as gui's.
The best thing to do for now is avoid the terminal as much as possible.

### How to avoid the terminal?

I will cover the basic stuff here. A terminal is so powerful that you should come up with your own ideas for you specific situation.
You will never be able to do everything a programmer with sight can do.
That is why it is not a bad thing to ask someone if you cannot do something in the terminal.

####  1. Navigating files

Don't use ```ls```, ```cd```, ```cat``` or ```less```. Use a graphical interface such as finder or explorer.

#### 2. Your editor

This part was pretty emotional for me, but you should not use ```vim```.
I will cover which editor you should use in another chapter.

#### 3. git

Don't worry, we still use git, but avoid the cli.

Most graphical IDE's come s with intergrated git functionallity.
Those buttons have labels so you can do git like operations with the cli.

### 4. Write scripts.

If you have common tasks in the terminal that are hard. Automate it.

I hope terminals will become accessible in the future, but this is the best option we have.


Next up, we will talk about editors.

