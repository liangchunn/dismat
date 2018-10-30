# Discrete Mathematics Lecture Notes (WS18/19)
Created by Liang Chun

## Lecture 1 (10.10.2018)
### Prelude: Motivation
#### What is the aim of the lecture?
Learn basic frameworks used in all areas of mathematics:

- Mathematicians deal with statements
- Usually the statements are about numbers
- The statements may be true or false
- To descide whether a statement is true or false requires a proof
- Use this framework to acquire some knowledge about principles of counting
- Graph theory has a direct application in real world problems
- The basic knowledge about algebraic methods will be used in coding theory


#### Example:
1. 15 is a multiple of 3
2. 20 is a multiple of 3

Theorem: 15 is a multiple of 3

Proof: $15 = 3 * 5$

### Chapter 1: Principles of Counting
### Basic Counting Problems

- Permutation: $\frac{n!}{(n - r)!}$
- Combinations: $\frac{n!}{(n - r)!r!}$


#### Definition 1.2.1
##### Remarks
Supose that $X$ and $Y$ are sets. We say that we have a function/map from $X$ to $Y$ if for each $x \in X$ we can specify a unique element in $Y$, which we denote by $f(x)$.
 
```
X         Y

o ------> o
          o
          o
o ------> o
```

- $f(x)$ is defined  $\forall x \in X$
- these are just one such object $\forall x \in X$

##### Inverse Image Example
Given the function 
\begin{equation}f:\{1, 2, 3\}' \mapsto \{a, b, c, d\}\end{equation} 
defined by
\begin{equation}
f(x)= 
\begin{cases}
    a, & \text{if } x = 1\\
    a, & \text{if } x = 2\\
    c, & \text{if } x = 3
\end{cases}
\end{equation}

The produced map is:

\begin{equation}
\begin{tabular}{ccc}
a & $\rightarrow$ & 1 \\
a & $\rightarrow$ & 2 \\
b & & \\
c & $\rightarrow$ & 3 \\
d & &
\end{tabular}
\end{equation}

The image/inverse image of the following sets under $f$ are:

1. set {$2, 3$}; image: {$a, c$}
2. set {$a$}; inverse image: {$1, 2$}
3. set {$a, b$}; inverse image: {$1, 2$}
4. set {$b, d$}; inverse image: $\emptyset$

#### Definition 1.2.2 Cardinality
A set $A$ is finite if a bijective mapping $A \mapsto \{1,..., n\}$ exists. _(This means that there a exactly n number of elements inside set A)_. 

In this case n is called the **cardinality** of $A$ and $A$ has $|A| := n$ elements.

Two sets A, B are defined to have the same cardinality if a bijective mapping $A \mapsto B$ exists.

#### Not Disjoint Sets
```
+--------------+
|     |--|     |
|  A  |--|  B  |
|     |--|     |
+--------------+
```

1. $A = \{1, 2, 3, 4, 5\}$, $|A| = 5$
2. $B = \{3, 4, 5, 6, 7\}$, $|B| = 5$

\begin{align}
|A \cup B| \\
&= |{1, 2, 3, 4, 5, 6, 7}| \\
&= 7 \\
&\neq |A| + |B|
\end{align}


#### Counting Sets

1. $|X \cup Y| = |X| + |Y| - |X \cap Y|$
2. $|X \cup Y \cup Z| = |X| + |Y| + |Z| + (|X \cap Y| + |X \cap Z| + |Y \cap Z|) + |X \cap Y \cap Z|$

#### Double Counting Principle
```
      a   b
    o---o---o
    1   2   3
```

1. $N = {1, 2, 3}$, (nodes)
2. $E = {a, b}$    (edges)
3. $R =$ incidence


\begin{equation}|R| \text{ (over the nodes)}\end{equation}
\begin{align}
&= |{x \in E | 1 \text{ is incident to x}}| + |{x \in E | 2 \text{ is incident to x}}| + |{x \in E | 3 \text{ is incident to x}}| \\
&= |{a}| + |{a, b}| + |{b}| \\
&= 4
\end{align}

\begin{equation}|R| \text{ (over the edges)}\end{equation}
\begin{align}
&= |{x \in N | x \text{ is incident to a}}| + |{x \in N | x \text{ is incident to b}}| \\
&= |{1, 2}| + |{2, 3}| \\
&= 4
\end{align}


\newpage


## Lecture 2 (17.10.2018)

### Slide 21
#### Examples
1) The first person may choose among 100 seats, the second among 99 etc. So we have $100*99*...$ 

\begin{equation} \frac{100!}{(100-95)!}, (n)_k \end{equation}

2) Let the perls be enumerated by 1 to 1. Then we cut the necklace at the part with number 1. So each assignment of pearls is bijectively mapped to an $n$-list, where the first element of the list always is the pearl with numbers 1. So these exists $(n-1)!$ possibilities


### Slide 24
#### Example
A card game consists of 52 cards:

- Each car has a suit out of {I, II, III, IV}
- Each card has a value out of {2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A}
- 2 cards form a pair, if they have the same value

How many possibilities exists so that we have among 5 arbitrary cards one pair and 3 cards with each the same value (but other than the pair)?

#### Solution
1) Choose the value of the pairs (13 possibilities)
2) Choose the value of the three cards (12 possibilities)
3) Choose the suit of the pair (4C2 = 6 possibilities)
4) Choose the suit of the other three cards (4C3 = 4 possibilities)

Therefore, we need the product rule:

\begin{align}
p &= 13 * 12 * C(4,2) * C(4,3) \\
&= 3744
\end{align}


### Slide 28
\begin{equation}C(n,m_1)*C(n-m_1,m_2) * ... * C(m_k,m_k)\end{equation}
\begin{equation}= \frac{n!}{(n-m_1)!m_1!} * \frac{(n-m_1)!}{(n-m_1-m_2)!m_2!} * ... * \frac{m_k!}{m_k!(m_k - m_k!)}\end{equation}
\begin{equation}= \frac{n!}{m_1!*...*m_k!}\end{equation}


\newpage


## Lecture 3 (24.10.2018)
### Slide 35
The Stirling numbers$_{n, k}$ of first orders it the number of permutation of a n-set with exactly k cycles

### Theorem 1.8.4
$S(n, 1) = 1$, $S(n,n) = 1$ denotes from set n, choosing 1 partition or n partitions results in only one element

### Slide 39
Let f, g be the permutation
\begin{equation}f =
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
2 & 1 & 4 & 5 & 3
\end{tabular}
\Big)
\end{equation}

\begin{equation}g =
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
2 & 1 & 4 & 5 & 1
\end{tabular}
\Big)
\end{equation}

then

\begin{equation}f \circ g =
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
1 & 4 & 5 & 3 & 2
\end{tabular}
\Big)
\end{equation}

\begin{equation}g \circ f =
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
3 & 2 & 5 & 1 & 4
\end{tabular}
\Big)
\end{equation}

This example shows that in general the composition of permutation is not commutative since a permutation is bijective, 
also the inverse function is a permutation.

Let $f$ be
\begin{equation}f = 
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
2 & 1 & 4 & 5 & 3
\end{tabular}
\Big)
\end{equation}

First we invert, then we order the first row 
\begin{equation}f^{-1} = 
\Big(
\begin{tabular}{ccccc}
2 & 1 & 4 & 5 & 3 \\
1 & 2 & 3 & 4 & 5
\end{tabular}
\Big)
=
\Big(
\begin{tabular}{ccccc}
1 & 2 & 3 & 4 & 5 \\
2 & 1 & 5 & 3 & 4
\end{tabular}
\Big)
\end{equation}

\begin{equation}
f \circ f^{-1} = id, f^{-1} \circ f = id
\end{equation}

### Slide 41
#### Example
Let $f$ be
\begin{equation}f = 
\Big(
\begin{tabular}{ccccccccc}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\
2 & 4 & 8 & 1 & 5 & 9 & 3 & 7 & 6
\end{tabular}
\Big)
\end{equation}

We take the cycles without repitition:

i. 1: $1 \mapsto 2 \mapsto 4 \mapsto 1$. The cycle is $(1, 2, 4)$
ii. 3: $3 \mapsto 8 \mapsto 7 \mapsto 3$. The cycle is $(3, 8, 7)$
iii. 5: $5 \mapsto 5$. The cycle is $(5)$
iv. 6: $6 \mapsto 9 \mapsto 6$. The cycle is $(6, 9)$

The cycle representation of $f$ is: 
\begin{equation}f = (1, 2, 4) \circ (3, 8, 7) \circ (5) \circ (6, 9)\end{equation}

### Slide 42
Let $f$ be the permutation which describes the change of sorting:

\begin{align}
f &= 
\Big(
\begin{tabular}{cccccccccccc}
1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & 11 & 12 \\
1 & 5 & 9 & 2 & 6 & 10 & 3 & 7 & 11 & 4 & 8 & 12
\end{tabular}
\Big) \\
&= (2, 5, 6, 10, 4) \circ (3, 9, 11, 8, 7) \textit{ (starting the cycle at 2)}
\end{align}

Since the two cycles have length 5, the cards are back to its original position after 5 procedures.

### Slide 42
Let $f$ be a composition of transpositions:

\begin{align}
f &= 
\Big(
\begin{tabular}{cccc}
1 & 2 & 3 & 4 \\
2 & 3 & 4 & 1
\end{tabular}
\Big) \\
&= (1, 2, 3, 4) \\
&= (1, 4) \circ (1, 3) \circ (1, 2)
\end{align}

But also adding $(3, 4)$ and $(4, 3)$ doesn't change the identity:

\begin{align}
f &= (1, 4) \circ (4, 3) \circ (3, 4) \circ (1, 3) \circ (1, 2)
\end{align}


### Slide 43
#### Further Remarks
Generalization of polynomials, where the number of terms is allowed to be infinite. The solution of a combinatorial problem can often be expressed as a sequence $u_n$. In such cases it is often appropriate to use methods based on the representation of $u_n$ as a power series: 

\begin{equation}U(x) = u_0 + u_1x + u_2x^2 + ...\end{equation}

where $U(x)$ is called the generating function for the sequence $u_n$

### Slide 47
#### Taylor Series
The n-th Taylor polynomial is defined as:
\begin{equation}
T_nf(x, a) = \sum_{k=0}^{n} \frac{f^{(k)}(a)}{k!}(x - a)^k
\end{equation}

\begin{equation}
= f(a) + f'(a)(x-a) + \frac{f''(a)}{2}(x-a)^2 + ...
\end{equation}

In the special case where $a = 0$, then the Taylor series is called Mclaurin series. 

\begin{align}
f(x) &= (1+x)^n \\
&\Rightarrow f^{(k)}(x) \\
&= (n(1+x)^{n-1})^{(k-1)} \\
&= (n(n-1)(1+x)^{n-2})^{(k-2)} * ... \\
&= n(n-1) * (n(1+x)^{n-1})^{(k-1)} * ... \\
&\Rightarrow f^{(k)}(0) = n(n-1)(n-2)*...*(n-(k-1))
\end{align}

This is to compute the sequence of coefficients from the generating function. The other way round, given a sequence and then compute the function is easy: sequence

\begin{equation}\langle f_0, f_1, ...\rangle = F(x) = f_0x^0 + f_1x^1 + f_2x^2 + ...\end{equation}

\begin{equation}
F(x) = (1+x)^n = \Big({n \atop 0}\Big) + (n, 1)x + (n, 2)x^2 + ...
\end{equation}

can be regarded as saying the the generating function for the sequence defined by $u_n = (n, k)$ for any given integer $n$ is $F(x) = (1+x)^n$ 

### Slide 48
Convolution definition
\begin{equation}c_k = a_0b_k + a_1b_{k-1} + ... + a_kb_0\end{equation} \\

#### Example
Given
\begin{equation}f(x) = 2 + 3x - 4x^2\end{equation}
\begin{equation}g(x) = 5 - x + x^3\end{equation}

\begin{align}
c_0 &= a_0b_0 = 2 * 5 = 10\\
c_1 &= a_0b_1 + a_1b_0 = (2 * -1) + (3 * 5) = 13\\
c_2 &= a_0b_2 + a_1b_1 + a_2b_0 = (2 * 0) + (3 * -1) + (-4 * 5) = -23
\end{align}

\begin{align}
f(x) * g(x) = c_0 + c_1x^1 + c_2x^2 + ...
\end{align}



### Slide 50
#### Example
Geometrical Series

\begin{align}
(1-x) \sum_{k=0}^{\infty} x^k \\
&= \sum_{k=0}^{\infty} x^k - \sum_{k=0}^{\infty} x^{k + 1} \\
&= 1 + \sum_{k=1}^{\infty} x^k - \sum_{k=1}^{\infty} x^k = 1
\end{align}

So $(1-x)$ is inverse to the geometrical series and we get $\sum_{k=0}^{\infty} x^k = \frac{1}{1-x}$