title: The Little Schemer——read again
date: 2015-11-18 22:51:15
tags: [lisp,pl]
archives: pl
---

<style>img{max-width:100%;}</style>
<img data-src="/img/learn-programm.png" alt="oh,man.I just want to learn programm video game!">
oh,man.I just want to learn programm video game!


## The Law of Car

> The primitive car is defined only for non-empty lists.

<!-- more -->
```scheme
Q:
What is the car of l
where
	l is (((hotdogs))(and)(pickle) relish)

A:
((hotdogs)),
	read as:
	"The list of the list of hotdogs."
	((hotdogs)) is the first S-expression of l.
```
["S表达式", "列表"]
<hr>
```scheme
Q:
What is (car l)
where
	l is (((hotdogs)) (and) (pickle) relish)

A:
((hotdogs)),
because (car l) is another way to ask for "the car of the 
list l."
```

<hr>

```scheme
Q:
What is (car (car l))
where
	l is (((hotdogs)) (and))
A:
(hotdogs).
```
<hr>

```scheme
Q:
What is the cdr of l
where
	l is (a b c)
A:
(b c)
	because (b c) is the list l without (car l).
```

<hr>

```scheme
Q:
What is the cdr of l
where
	l is ((a b c) x y z)
A:
(x y z)
```

<hr>

```scheme
Q:
What is the cdr of l
where
	l is (hamburger)
A:
()
```

<hr>

```scheme
Q:
What is (cdr a)
where 
a is hotdogs
A:
No answer
	You cannot ask for the cdr of an atom.
```

## The Law of Cdr
> The primitive cdr is defined only for non-empty lists.
The cdr of any non-empty list is always another list.
<hr>

```scheme
Q:
what is (car (cdr l))
where
l is ((b)(x y)((c)))
A:
(x y),
because((x y)((c))) is (cdr l), and (x y) is the car of
(cdr l).
```
<hr>

```scheme
Q:
What is (cdr (cdr l))
where
	l is ((b)(x y)((c)))
A:
(((c))),
because(x y)((c)) is (cdr l), and (((c))) is the cdr of (cdr l).
```
<hr>

```scheme
Q:
what does car take as an argument?
A:
it takes any non-empty list.
```

<hr>

```scheme
Q:
What does cdr take as an argument?
A:
It takes any non-empty list.
```
<hr>

```scheme
Q:
What is the cons of the atom a and the list l
Where a is peanut
and
	l is (butter and jelly)
This can also be written "(cons a l)".
	Read: "cons the atom a onto the list l."
A:
(peanut butter and jelly),
	because cons adds an atom to the front of a list.
```

```scheme
Q:
What is (cons s l)
where
	s is ((help) this)
and
	l is (is very ((hard) to learn))
A:
(((help) this) is very ((hard) to learn)).
```

```scheme
Q:
What does cons take as its arguments?
A:
cons takes two arguments:
	the first one is any S-expression;
	the second one is any list.
```

## The Law of Cons
> The primitive cons takes two arguments.
The second argument to cons must be a list.
The result is a list.
