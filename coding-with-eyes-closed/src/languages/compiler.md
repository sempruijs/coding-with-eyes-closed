# The compiler is your sight

This chapter is written all around 1 idea. **The compiler is your sight**.

I will explain why the compiler is so important if you're coding with eyes closed.

We have a big limitation. We can only read 1 line at a time. If you have partial sight maybe 3 lines at a time.
This is what makes coding with eyes closed very hard.
The trick is to not use that sight to search for errors.
The compiler should search for errors.

This idea is not new at all, but many coders do not listen to this advice at all.
As I am wrting this, the 2 most populair programming languages are javascript and python.
Neither of these languages implement this idea well enough.
Javascript says so many times stuff like ```object is undifind``` or ```null is undifiend```.
The compiler just has no idea what kind of mistake the coder made.

Because of this, people have to search for erros instead of the compiler.
For people with sight, this is frustating and it makes people less productive.
But having to search for those errors without sight is insainly hard.

It could be something so small as a semicolen. 
People with sight can look at each line very fast to find where the semicolen is missin.
For us it takes time, way too much time.

If we use a language that has a good strict compiler that gives good error messeges, we do not have to search for errors because the compiler already found them.
A strict compiler tells you where the semicolen is missin, why that screws up the rest of the program and a suggestion where you should put the semicolen to fix it.

With a bad compiler, you can maybe be 30% productive compared to a sighted coder.
But with a strict compiler, you can be 90% productive compared to a sighted coder.

Bad languages are not just a bad language, we cannot make scaleble products because of our sight.

That doesn't mean people without sight cannot code, they can only code in languages that have strict compilers.

We will first talk about type systems. One of the most important aspects of a programming language.