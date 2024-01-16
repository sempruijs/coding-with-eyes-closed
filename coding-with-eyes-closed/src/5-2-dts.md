# Why dynamic types are even worse for someone with an visual impairment

We will look at type systems. 
First I'll explain what the differences are between a dynamic type system and a static type system and afterwards why you should prefer a static type system over a dynamic type system.

## What's the difference?

With a dynamic type system, types can change over lifetime.
With a static type system, types are decided at compile time. They cannot change over lifetime.

Here is an example so you can see how the types behavior differently in different languages.

Here is an example in python. Python has a dynamic type system.

```python
# x is a string here
x ="this is a string"
  
# x is a a integer here
x = 42
```

_Note that the types change here, this is different from [shadowing in rust](https://doc.rust-lang.org/stable/book/ch03-01-variables-and-mutability.html?highlight=shadowing#shadowing)_

So as we see, ```a``` was first an integer and now it's a string.
This compiles as expected because python has dynamic types.

Now we will look how a static type system will happen if we wrote this in Rust.
Rust has a static type system.


```rust
  fn main() {
      let mut x = 5;
      x = "hello";
      println!("{}", x);
  }
```

_Note: mut means mutable, so the value can change_

This code does not compile, because x is first a integer but then tries to be a string.
This means that the types change and the rust compiler does not allow that behavior.

The compiler shows the following error:

```
error[E0308]: mismatched types
 --> src/main.rs:3:9
  |
2 |     let mut x = 5;
  |                 - expected due to this value
3 |     x = "hello";
  |         ^^^^^^^ expected integer, found `&str`
```

We can change the value of x, but the value should change within the range of the integer type.
Here is an example:

```Rust
fn main() {
    let mut x = 5;
    x = 42;
    println!("{}", x);
}
```

This program will compile just fine and print 42 to the console.

So as we saw, a static type system does not mean values cannot change, types cannot change.

Now I will explain why this difference is important for visually impaired coders.


## Why static is better then dynamic

Here is a quote from the [type system wikipedia page](https://en.wikipedia.org/wiki/Type_system)

_"Type systems are often specified as part of programming languages and built into interpreters and compilers, although the type system of a language can be extended by optional tools that perform added checks using the language's original type syntax and grammar. The main purpose of a type system in a programming language is to reduce possibilities for bugs in computer programs due to type errors.[2] The given type system in question determines what constitutes a type error, but in general, the aim is to prevent operations expecting a certain kind of value from being used with values of which that operation does not make sense (validity errors)."_

So, type systems help us find bugs and they make sure we use our stuff in a correct way.
This is useful. 
We want a compiler that can assist us well because we can only see one line at a time.
We do not want a blind compiler.

Static type systems are way better and finding bugs and assisting the coder then dynamic type systems.
The compiler can under stand better how types should behave and types can only change if specified by the coder.

This way, the compiler knows how code should behave and as a coder, your code becomes generally speaking more readable.
This is one of the ways how we can use the compiler as our sight.

### Which languages have a static type system?

We want to avoid dynamic type systems.
Before you decide to learn a language, look at the type system.
These languages have a static type system:

- Java
- Rust
- C#
- Swift
- Kotlin
- Haskell

Just ot name a few.
Remember, the better errors a language has, the better the compiler can assist you.

Here is a list of languages that have a dynamic type system:

- Python
- Javascript
- Php

Making scalable products is hard with these languages.
Especially if you are coding with eyes closed.

Of course, type system is not everything.
The C language has static types but is not memory save, so you may have to deal with allot of memory bugs that are hard to fix.
So consider your options before you learn a new language.
Error messages are important.

I like Rust because it has a static type system, it is memory safe and it has amazing error messages that assist me well.
Haskell has a strict and expressive type system and is memory safe.
Typescript has good error messages too.

Java is also a good option. 
Static type system, memory safe and good error messages.
I recommend java if you haven't learned a static typed language already.
It has the stuff you want as a visually impaired coder and it reach the point that their is so much code out there written in java that you can easily find a job for it.

Next up, lets talk about indentation.
