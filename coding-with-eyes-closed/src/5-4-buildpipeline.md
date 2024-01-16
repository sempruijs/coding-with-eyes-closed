# Make build pipelines that last

Build pipelines are glorious when they work.
The problem is that they sometimes break. 
This is annoying for people with sight but for people without sight this is even worse.

That is because many CI/CD products work with YAML files.
YAML is horrible. People try to use it as a sort of programming language while it is not.
You can easily make syntax errors and if you want to debug your CI you need to push it to your repo and you'll have to find all the buttons on the webpage to see your error message.

Build pipelines should not be your focus but when you need to build a pipeline, use [Nix](https://nixos.org) or a better alternative.

Nix is a simple language. It is sort of like JSON with functions.
With nix, You can easily define build pipelines that last.

- You can make a build pipeline with nix for every language.
- It is reproducible, meaning that all your tools are pined to a specific version. That way you can reproduce your build in the future.
- You can test your build pipeline locally because your pipeline is reproducible. You can reproduce it on your local machine.
- Because you can test your pipeline locally, you can read the error messages locally. No need to navigate a website with a screen reader.
- Because it is reproducible, it will not break in the future. Once it works, it will always work.
- Nix integrates with CI products such as github actions. Nix can build docker images. Learn once, deploy everywhere.

It is hard to hack a build pipeline together with a few yaml files here and their because we can only see one line at a time.
We need structure, error messages. We should know what we are doing.

If you want to make a build pipeline, learn Nix. It can be a bit hard to learn but once you master it you can deploy software insanely fast.
I recommend [zero to nix](https://zero-to-nix.com). 
CI/CD is a hard. But when you have a visual impairment, working with YAML files and writing docker images is harder then writing a build pipeline in Nix.
