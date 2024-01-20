# Coding with eyes closed

Book for rehabilitative coders.
If you cannot code anymore because of an visual impairment, this book is for you.
This book teaches the building blocks of a good coder without sight.

Although this book is meant for people with an visual impairment, it can be interesting to read without an visual impairment.
Coding with eyes closed becomes less of a magic trick and more practical on how you can be a coder even without sight.

### Contributing

Contributions are very welcome.
English is not my native language and I have dyslexia. 
If you find a spell mistake, please submit an issue or pull request.

Contributing is easy. 
You do not have to install anything.
This book is written in markdown and [mdbook](https://github.com/rust-lang/mdBook) generates a website out of it.

##### How to fix a spell mistake

All these actions can be accomplished just on the GitHub website

1. Fork the repository
2. Change content of the markdown file as you wish.
3. Commit the changes
4. Open a pull request
5. Wait for the checks to pass. The build pipeline checks for spell mistakes and if the website can be deployed. If the checks do not pass, check the log if you didn't made a spell mistake.
6. Wait for me to approve your pull request.

##### NixOS

This repository has a flake.
Their is a devShell defined and also an .envrc.

You can enter the devShell by running:

```shell
  nix develop
`

Or if direnv is enabled:

```
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

### Getting help

If you have any questions regarding the book or how people code with eyes closed, you cna ask on [the coding with eyes closed matrix server](https://matrix.to/#/%23coding-with-eyes-closed:matrix.org).

### License

This book is published under the CC0 v1.0 license.


