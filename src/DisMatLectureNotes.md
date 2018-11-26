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
\begin{equation}c_k = a_0b_k + a_1b_{k-1} + ... + a_kb_0\end{equation} 

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

So $(1-x)$ is inverse to the geometrical series and we get $\sum_{k=0}^{\infty} x^k = \frac{1}{1-x}$\

Here are some more generating functions:
\begin{align}
\sum_{k=0}^{\infty} (-1)^kx^k \\
&= 1 - x + x^2 - x^3 + ...\\
&\hat{=} (1, -1, 1, -1, ...)
\end{align}

\begin{align}
\sum_{k=0}^{\infty} x^2k \\
&= 1 + x^2 + x^4 + x^6 + ... \\
&\hat{=} (1, 0, 1, 0, 1, ...)
\end{align}


### Slide 52
\begin{equation}F_n = F_{n-1} + F_{n-2}\end{equation}
The above equation is a homogeneous (no constants) linear recursion equation of second order (going back 2 steps)

### Slide 53
#### Example: Fibonacci Numbers
The main idea now is to expand the right series as a formal power series. To do this we factorize the denominator. We put:

\begin{equation}
1-x-x^2 = (1-ax)(1-bx)
\end{equation}

If we substitute $x = \frac{1}{y}$, equation (2) is equivalent to 

\begin{align}
1 - \frac{1}{y} - \frac{1}{y^2} &= (1 - \frac{a}{y})(1-\frac{b}{y})\\ 
&\Leftrightarrow y^2 - y - 1 \\
&= (y-a)(y-b)
\end{align}

\begin{align}
y_{1, 2} &= \frac{1}{2} + \sqrt{\frac{1}{4} + 1} \\
&= \frac{1}{2} + \frac{\sqrt{5}}{2}
\end{align}

The zeroes of $y^2 - y - 1$ are:
\begin{equation}
a = \frac{1}{2} + \frac{\sqrt{5}}{2}, \quad b = \frac{1}{2} - \frac{\sqrt{5}}{2}
\end{equation}

Now we decompose into partial fractions
\begin{equation}
\frac{1+x}{1-x-x^2} = \frac{\alpha}{(1-ax)} + \frac{\beta}{(1-bx)}
\end{equation}

\begin{align}
1 + x &= \alpha(1-bx) + \beta(1-ax) \\
1 + x &= \alpha + \beta + (-\alpha b - \beta a)x \\
&\Rightarrow \alpha + \beta = 1 ,\quad -\alpha b - \beta a = 1 \\
&\Rightarrow \alpha = \frac{1+a}{-b+a} = \frac{1+a}{\sqrt{5}}, \quad \beta = 1 - \frac{1+a}{\sqrt{5}} = -\frac{1+b}{\sqrt{5}}\end{align}

Each summand from the right hand side is now expanded by the sum rule for the geomtrical series:
\begin{align}
\Rightarrow \frac{1+x}{1-x-x^2} &= \frac{1+a}{\sqrt{5}(1-ax)} - \frac{1+b}{\sqrt{5}(1-bx)} \\
&= \frac{1+a}{\sqrt{5}} \sum_{k=0}^{\infty}{a^kx^k} - \frac{1+b}{\sqrt{5}} \sum_{k=0}^{\infty}{b^kx^k} \\
&= \sum_{k=0}^{\infty}{\bigg[\frac{1+a}{\sqrt{5}} a^k - \frac{1+b}{\sqrt{5}} b^k\bigg]} x^k \\
&\Rightarrow F_k = \frac{a^{k+2}}{\sqrt{5}} - \frac{b^{k+2}}{\sqrt{5}} \quad (1 + a = a^2, 1+b=b^2)
\end{align}

We can then compute the specific numbers $k$ in $F_k$:
\begin{align}
F_2 &= \frac{(\frac{1}{2} + \frac{\sqrt{5}}{2})^4}{\sqrt{5}} - \frac{(\frac{1}{2} + \frac{\sqrt{5}}{2})^4}{\sqrt{5}} \\
&= 3
\end{align}


### Slide 54
#### Special case: Fibonacci numbers

\begin{equation}
F_n = F_{n-1} + F_{n-2}
\end{equation}

So we have $k = 0$, $h_k = 0$, $\beta_1 = -1$, $\beta_2 = -1$, $\beta_j = 0$ for $3 \leq j \leq n$

### Slide 55
#### Remark on the proof 1.10.5

\begin{equation}
p_{n+k} = \sum_{j=0}^{n}{a_{n+k-j}\beta_j} = 0, \quad \forall k \geq 0
\end{equation}

\begin{align}
A(x) &= a_0 + a_1x + a_2x^2 + ... \\
A(x) &= \sum_{j=0}^{n}{\beta_{j}x^j} \\
&= a_0\beta_0x^0 + (a_0\beta_1 + a_1\beta_0)x^1 + (a_0\beta_2+a_1\beta_1+a_2\beta_0)x^2 + ... \\
&= \underbrace{(a_0\beta_n + a_1\beta_{n-1} + ... + a_n\beta_0)}_\text{$=0$ due to recursion formula} x^n 
\end{align}

At first we substitute in the equation $1+\beta_1x+\beta_2x^2+...=0$

After multiplication by $y^n$ we get the auxiliary equation:
\begin{equation}y^n+\beta_1y^{n-1}+...+\beta_n = 0\end{equation}

According to the fundemental theorem of algebra, there exists numbers:
\begin{equation}y_1,...,y_5 \in \mathbb{C}\end{equation} 
such that:
\begin{equation}y^n+\beta_1y^{n-1} + ... + \beta_n = (y - y_1)^{m_1}(y-y_2)^{m_2} \dot ... \dot (y-y_5)^{m_5}\end{equation}
and
\begin{equation}\sum_{j=0}^{5}{m_j} = n\end{equation}

By back substituting, we have:

\begin{align}
1+\beta_1x + \beta_2x^2 + ... + \beta_nx^n &= x^n(y^n+\beta_1y^{n-1} + ... + \beta{n}) \\
&= x^n(y-y_1)^{m_1}(y-y_2)^{m_2}...(y-y_5)^{m_5} \\
&= x^n(\frac{1}{x} - y_1)^{m_1}(\frac{1}{x} - y_2)^{m_2}...(\frac{1}{x} - y_5)^{m_5} \\
&= (1-y_1x)^{m_1}(1-y_2x)^{m_2}...(1-y_5)^{m_5}
\end{align}

So:
\begin{align}
A(x) = \frac{P(x)}{(1-y_1x)^{m_1}(1-y_2x)^{m_2}...(1-y_5)^{m_5}}
\end{align}

According to the theorem of partial fraction decomposition, it holds:
\begin{equation}
A(x) = \sum_{k=1}^{5}{\frac{H_k(x)}{(1-y_kx)^{m_k}}}
\end{equation}

with polynomial $H_k$ and $deg(H_k) < m_k$.

Futhermore for each summand holds (omitting index $k$) due to partial fraction decomposition: 

\begin{equation}
\frac{H(x)}{(1-\beta x)^{m}}  = \sum_{j=1}^{m}{\frac{\gamma_j}{(1-\beta x)^j}}, \quad \gamma_j \in \mathbb{R}
\end{equation}

Each summand on the right hand sind can now be expanded by means of the geometrical series into a power series.

## Lecture 4 (7.11.2018)

### Slide 57
The number of possibilities for the leaves are:

![](images/Slide57.pdf)

For example: $CCVCC: 19 * 20 * 6 * 19 * 20$

### Slide 66
#### Example double counting principle
![](images/Slide66.pdf)
\begin{tabular}{|l|l|l|l|l|l|l|}
\hline
v\textbackslash{}E & \{1, 2\} & \{1, 4\} & \{4, 3\} & \{3, 2\} & \{4, 2\}  & countSum \\ \hline
1                  & x        & x        &          &          &           & 2 \\ \hline
2                  & x        &          &          & x        & x         & 3 \\ \hline
3                  &          &          & x        & x        &           & 2 \\ \hline
4                  &          & x        & x        &          & x         & 3 \\ \hline
                   & 2        & 2        & 2        & 2        & 2         & 10 \\ \hline
\end{tabular}

### Slide 67

#### Remark to proof 2.1.4
$|V_0|$ has to be even because:

\begin{tabular}{l|ll}
t    & even & odd  \\ \hline
even & even & odd  \\
odd  & odd  & even
\end{tabular}

### Slide 69
![](images/Slide69.pdf)

\begin{tabular}{llll}
1 & 2 & 3 & 4 \\ \hline
2 & 1 & 2 & 1 \\
4 & 3 & 4 & 2 \\
  & 4 &   & 3
\end{tabular}

### Slide 70
#### Example adjacency matrix
![](images/Slide69.pdf)
\begin{equation}
\Bigg(
\begin{tabular}{cccc}
0 & 1 & 0 & 1 \\
1 & 0 & 1 & 1 \\
0 & 1 & 0 & 1 \\
1 & 1 & 1 & 0
\end{tabular}
\Bigg)
\end{equation}

#### Another adjacency matrix

![](images/Slide69_A1.pdf)
![](images/Slide69_A2.pdf)

\begin{equation}
A_1 = 
\Bigg(
\begin{tabular}{ccccc}
0 & 0 & 1 & 1 & 0 \\
0 & 0 & 1 & 1 & 1 \\
1 & 1 & 0 & 0 & 0 \\
1 & 1 & 0 & 0 & 1 \\
0 & 1 & 0 & 1 & 0
\end{tabular}
\Bigg)
\end{equation}

\begin{equation}
A_2 = 
\Bigg(
\begin{tabular}{ccccc}
0 & 1 & 1 & 0 & 0 \\
1 & 0 & 1 & 1 & 0 \\
1 & 1 & 0 & 0 & 1 \\
0 & 1 & 0 & 0 & 1 \\
0 & 0 & 1 & 1 & 0
\end{tabular}
\Bigg)
\end{equation}


### Slide 77
#### Remarks to the Proof 2.3.3 (No. 2)
- Here we have the case $\{u, v\} \in E$. So $\{3, 2\} \in E, G' = (V', E')$, $V' = V \cup \{a\}$, $E' = E \cup \{\{2, a\}, \{3, a\}\}$ and a closed Euler line is $(1, 2, a, 3, 4, 2, 3, 1)$

- Here we have the case $\{u, v\} \notin E$. So $\{1, 3\} \notin E$, $G' = (V, E')$, $E' = E \cup \{\{1, 3\}\}$ and a closed Euler line is $(1, 3, 5, 4, 3, 2, 1)$


### Slide 78
#### Example
![](images/Slide78.pdf)

a. $w = v_0, \quad F = E = \{a, b, c\}$
b. $deg(v_0, F) = 2 \quad \Rightarrow v_1 \text{ with } \{v_0, v_1\} \in F, W = (v_0, v_1), F = \{b, c\}$
c. $deg(v_1, F) = 1 \quad \Rightarrow v_2 \text{ with } \{v_2, v_1\} \in F, W = (v_0, v_1, v_2), F = \{c\}$
d. $deg(v_2, F) = 1 \quad \Rightarrow v_0 \text{ with } \{v_2, v_0\} \in F, W = (v_0, v_1, v_2, v_0), F = \emptyset$
e. $deg(v_0, F) = 0 \quad \Rightarrow \text{STOP}$

## Lecture 5 (14.11.2018)

### Slide 87
#### The principle of induction

Suppose that P(n) is a statement with the following properties:

a. $P(1)$ is true (induction basis)
b. if $P(k)$ is true (induction hypothesis), then $P(k+1)$ is true (induction step) $\forall k \in \mathbb{N}$,
then $P(n)$ is true $\forall n \in \mathbb{N}$

##### Example
Prove that $\forall n \in \mathbb{N}$, $n^3 + 5n$ is a multiple of 6:

a. $P(1)$ is true: $1^3 + 5*1 = 6$  is a multiple of 6
b. Suppose that $P(k)$ is true, that is $k^3 + 5k = 6m$, $m \in \mathbb{N}$. We have to deduce that $P(k+1)$ is true.

Inserting 
\begin{align}
n &= k + 1:  (k+1)^3 + 5(k+1) \\
&= k^3 + 3k^2 + 3k + 1 + 5k + 5
\end{align}

In order to use the assumption, we rewrite this as follows:
\begin{align}
(k^3 + 5k) + 3(k^2 + k + 2 ) = 6m + 3k(k+1) + 6 
\end{align}

Now $k(k+1)$ is an even number, say:
\begin{align}
2r \Rightarrow 4m + 3k(k+1) + 6 &= 6m + 6r + 6\\
&= 6(m + r + 1)
\end{align}

We have shown that $P(1)$ is true, and that is $P(k)$ is true, then $P(k+1)$ is true.
Applying the principle of induction, it follows that $P(n)$ is true $\forall n \in \mathbb{N}$

### Slide 89
#### Example: Generic Algorithm

![](images/Slide89.pdf)

a. $W = \{v_1\}, \quad F = \emptyset, \quad L = \{(v_1, v_2), (v_1, v_4), (v_1, v_3)\}$ (Choose $(v_1, v_2)$)
b. $W = \{v_1, v_2\}, \quad F = \{\{v_1, v_2\}\}, \quad L = \{(v_2, v_4), (v_1, v_4), (v_1, v_3)\}$ (Choose $(v_1, v_4)$)
c. $W = \{v_1, v_2, v_4\}, \quad F = \{\{v_1, v_2\}, \{v_1, v_4\}\}, \quad L = \{(v_1, v_3), (v_4, v_3)\}$ (Choose $(v_1, v_3)$)
d. $W = \{v_1, v_2, v_4, v_3\}, \quad F = \{\{v_1, v_2\}, \{v_1, v_4\}, \{v_1, v_3\}\}, \quad L = \emptyset$

### Slide 94

Edge table:
\begin{tabular}{llllllll}
a   & b    & c   & d   & e & f & g   & h  \\ \hline
bdh & acde & bdg & abc & b & g & cfh & ag
\end{tabular}

#### Example: BFS
![](images/Slide94BFS.pdf)

#### Example: DFS
![](images/Slide94DFS.pdf)


### Slide 99
#### Example: Prim's Algorithm
![](images/Slide99.pdf)

Start with node $z = a$

a. add $\{a, e\}$ with cost 1
b. add $\{a, b\}$ with cost 2
c. add $\{b, d\}$ with cost 3
d. add $\{b, c\}$ with cost 7



## Lecture 6 (21.11.2018)

### Slide 103
#### Example Dijkstra's Algorithm

![](images/Slide103.pdf)


- $W = \{z\},\quad F = \emptyset,\quad L(W,V) = \{(z,a),(z,b)\}$
    - $d(z) + w(\{z, a\}) = 0 + 3$ 
    - $d(z) + w(\{z, b\}) = 0 + 1$
        - Choose $(z,b)$
- $W = \{z, b\},\quad F = \{\{z, b\}\},\quad L(W,V)=\{(z,a),(b,a)\}$ 
    - $d(z) + w(\{z, a\}) = 0 + 3$
    - $d(b) + w(\{b, a\}) = 1 + 1$
        - Choose $(b, a)$
- $W = \{z, b, a\},\quad F = \{\{z, b\}, \{b, a\}\},\quad L(W,V)=\{(a,c)\}$ 
    - $d(a) + w(\{a, c\}) = 2 + 2$
- $W = \{z, b, a, c\},\quad F = \{\{z, b\}, \{b, a\}, \{a, c\}\},\quad L(W,V)=\emptyset$ 


### Slide 104
### Remarks to Proof

Per definition, $d(u) = l((z,..., u))$
\begin{equation} 
d(u) + w(e) \geq d(x) + w(\{x, y\})
\end{equation}
is true because we have chosen $\{x, y\} \in L(W,V)$ such that 
\begin{equation} 
d(x) + w(\{x, y\}) \leq d(u) + w(\{u, v\}),\quad \forall (u, v) \in L(W,V)
\end{equation}

### Slide 105
### Example: Difference between Prim and Dijsktra

![](images/Slide105.pdf)


#### Prim
$\{\{z, b\}, \{b, a\}, \{a, c\}\}$

![](images/Slide105_Prim.pdf)


#### Dijsktra
$\{\{z, b\}, \{z, a\} \text{ or } \{b, a\}, \{a, c\}\}$

![](images/Slide105_Dijsktra.pdf)



### Slide 107

TODO


### Slide 111

#### Remarks to the Proof 2.6.5 with |D| = 1

