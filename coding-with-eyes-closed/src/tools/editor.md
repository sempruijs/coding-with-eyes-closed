# What's the most accessible editor?

We learned that the terminal is not as accessible as we hoped.
The best thing to do is look for a graphical application.

Start basic. Just something that can modify a ```.txt``` file. 
Why? Because reading code is in the beginning hard enough. 
It can be microsoft Word if that is something you're used to. 
Just paste a piece of code into a editor you like and try to understand what is going on.
Make sure that line-wrap is turned off. It does not matter if the text is not visable because we hear the text.

When people ask to me what it is like to code with eyes closed, I tell them that it is like using your IDE but only seeing 1 line at a time.
This seems almost impossible but believe me, you can be productive with this limitation.

Install a few different editors and experiment along with the exercises later on in the book.

Your editor should have at least the following:


- Accessible integration with language servers.
- Many shortcuts
- Integration with git 

I will cover these three aspects in detail.

### Accessible integration with language servers

What is LSP? A quato form the (microsoft lsp website).

_"The Language Server Protocol (LSP) defines the protocol used between an editor or IDE and a language server that provides language features like auto complete, go to definition, find all references etc. The goal of the Language Server Index Format (LSIF, pronounced like "else if") is to support rich code navigation in development tools or a Web UI without needing a local copy of the source code."_

It could also be an editor that doesn't implement LSP but provide the same features such as auto-complete.
But to keep it simple, I will refer it as LSP features.

A language server is extra important to us.
Why? Because we only see 1 line at a time and it takes more time to understand what is happening on that line.

We want to be as productive as possible so we need to navigate to the right line as fast as possible.
Language servers helps you do that.

Lets say you have an error and no language server.
You have to read the error message of the compiler, which is most of the time in the terminal.
Then you know the error, and you need to navigate to the right line in the right file. That costs time.

With accessible integration of LSP, you can vieuw a list of all your errors and then click on it to navigate to the right line in the right file.
This is way faster.

If you are reading code and you want to know more about a function, you can go to the definitionn with one shortcut and you do not have to navigate through tons of files.

Language servers are great, the productivity boost that you earn is way higher for visually impaired people then for people with sight. So find a editor that implements the protecol in a accessible way.

### Many shortcuts

Most coders with sight use the mouse to perform certain tasks.
They click on the commit button, then on the textfield to compose a commit message, click commit and finally click push.
Performing these tasks takes more time for visually impaired people. 
Finding those buttons with a screenreader can be a bit tideos. 

This tip does not only apply to coding but for every workflow you have: Learn many many shortcuts.
Shortcuts are so important, what I noticed from my experience in general is that shortcuts are more important then if a button is labeld.
With an unlabeld button, you have to figure out yourself what the button does.
But with a shortcut, you can perform the action of that button without even thinking about it.

If I know that the file I am searching is called ```main.rs```, then I should never go throw a file tree explorer that would take me 3 minutes.
I need a shortcut in this situation to quickly filter files on name so I can go to that specific file.

Finding visual buttons costs time for us so avoid it as much as possible.
Do not throw your IDE in the bin pure because their are some unlabeld images and buttons.
The shortcuts are important.

### Integration with git

Git is integrated in most modern editors and most editors profide good shortcuts so you can commit your changes fast.
This is usefull because it is hard for visually impaired users to interact with the git CLI.

If you find an editor that you like but it does not integrate well with git, you can always use a stand olen application to interact with git such as [github desktop](https://desktop.github.com).


## So, where shall I start?

Experiment with different editors to see which one works best for you.
I found that populair software is most of the time accessible too.

When I depended on TTS technoligy, I was very happy with [vscodium](https://vscodium.com).
[Github desktop](https://desktop.github.com) was also handy for me. It is graphical and had many shortcuts.
I wrote this in 2023 so there is a good chance if you're reading this that these products are not the most accessible anymore.
So experiment with different editors, going from most populair to less populair.

Nextup, we will learn more about searching for information on the web.