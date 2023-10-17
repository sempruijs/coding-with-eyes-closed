# Why dynamic types are even worse for someone with an visual impairment

We will look at type systems. 
First I'll explain what the differences are between a dynamic type system and a static typesytem and afterwards why you should prefer a static type system over a dynamic type system.

## What's the differance?

With a dynamic type system, types can change over lifetime.
With a static type system, types are decided at compile time. They cannot change over lifetime.

Here is an example so you can see how the types behaviour differntly in different languages.

Here is an example in python. Python has a dynamic type system.

```python
# x is a string here
x ="this is a string"
  
# x is a a interger here
x = 42
```

_Note that the types change here, this is differnt from [shadowing in rust](https://doc.rust-lang.org/stable/book/ch03-01-variables-and-mutability.html?highlight=shadowing#shadowing)_

So as we see, ```a``` was first an interger and now it's a string.
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

This code does not compile, because x is first a interger but then tries to be a string.
This means that the types change and the rust compiler does not allow that behaviour.

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

We can change the value of x, but the value should change within the rnage of the interger type.
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