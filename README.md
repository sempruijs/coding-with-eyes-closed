# Coding with eyes closed

Book for rehabilitative coders.
If you cannot code anymore because of a visual impairment, this book is for you.
This book teaches the building blocks of a good coder without sight.

Although this book is meant for people with an visual impairment, it can be interesting to read without an visual impairment.
Coding with eyes closed becomes less of a magic trick and more practical on how you can be a coder with a visual impairment.

You can read the book on [codingwitheyesclosed.com]](https://codingwitheyesclosed.com).

### Getting help

If you have any questions regarding the book or how people code with eyes closed, you can ask on [the matrix server](https://matrix.to/#/%23coding-with-eyes-closed:matrix.org).

### Contributing

Contributions are very welcome.
English is not my native language and I have dyslexia. 
If you find a spelling mistake, please submit an issue or pull request.

### Make an issue

Opening an issue is the easiest way to contribute.

1. [Create a new issue](https://github.com/sempruijs/coding-with-eyes-closed/issues/new).
2. Copy the spelling mistake from the book
3. Write how to spell it rightly.
4. Write in which chapter you found the spelling mistake.
5. Submit the issue.

Thank you for contributing! ♥

### Make a pull request

Opening a pull request is start forward.
You do not have to install anything.
This book is written in markdown and [mdbook](https://github.com/rust-lang/mdBook) generates a website out of it.

##### How to fix a spell mistake

All these actions can be accomplished done just on the GitHub website.

1. Fork the repository
2. Change content of the markdown file as you wish.
3. Commit the changes
4. Open a pull request
5. Wait for the checks to pass. The build pipeline checks for spell mistakes and if the website can be deployed. If the checks do not pass, check the log if you didn't made a spell mistake.
6. Wait for me to approve your pull request.

##### NixOS

This repository has a flake.
There is a devShell defined and also an .envrc.

You can enter the devShell by running:

```shell
  nix develop
```

Or if direnv is enabled:

```shell
  direnv allow
```

You can test the CI locally.

Build the site:

```shell
  nix build .#site
```

Check for spell mistakes:

On aarch64-linux:
```shell
  nix build .#checks.aarch64-linux.spellcheck -L
```

On x86_64-linux:
```shell
  nix build .#checks.x86_64-linux.spellcheck -L
```

To check if the book looks good, you can run in the coding-with-eyes-closed dir:

```shell
  mdbook serve --open
```

This will run a local server with the book and opens it in the default browser.

Thank you for contributing! ♥

### License

This book is published under the CC0 v1.0 license.


