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
- Intergration with git 

I will cover these three aspects in detail.

### Accessible integration with language servers

What is LSP? A quato form the (microsoft lsp website).

_"The Language Server Protocol (LSP) defines the protocol used between an editor or IDE and a language server that provides language features like auto complete, go to definition, find all references etc. The goal of the Language Server Index Format (LSIF, pronounced like "else if") is to support rich code navigation in development tools or a Web UI without needing a local copy of the source code."_

It could also be an editor that doesn't implement LSP but provide the same features such as auto-complete.
But to keep it simple, I will refer it as lsp features.

A language server is extra important to us.
Why? Because we only see 1 line at a time and it takes more time to understand what is happening on that line.

We want to be as productive as possible so we need to navigate to the right line as fast as possible.

Lets say you have an error and no language server.
You have to read the error message of the compiler, which is most of the time in the terminal.
Then you know the error, and you need to navigate to the right line in the right file. That costs time.

With accessible integration of the lsp, you can vieuw a list of all your errors and then click on it to navigate to the right line in the right file.
This is way faster.

If you are reading code and you want to know more about a function, you can go to the definitionn with one shortcut and you do not have to navigate through tons of files.

Language servers are great, the productivity boost that you earn is way higher for visually impaired people then for people with sight. So find a editor that implements the protecol in a accessible way.

### Many shortcuts

For 

### Intergration with git

This is usefull because terminals are not so accessible.
If you have a way to work with git such as with github desktop, you do not need this. 

I like [vscodium](https://github.com/VSCodium/vscodium), but I wrote this in 2023 so my recommandation will probably soon be outdated.

