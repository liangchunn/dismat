# Discrete Mathematics Problem Sheet Answers (WS18/19)
Created by Liang Chun

## Problem Sheet 1
### Problem 1
1. {$n \in N$ | n is a multiple of 2}
2. {$n \in N$ | $n^2 <  21$}
3. 
    a. True
    b. False, because $3 * 7 * 13 = 273$
    c. False, because $\sqrt{11279} \notin \mathbb{N}$ 

### Problem 2
Two things are to prove:
\begin{equation}C \subseteq D\end{equation}
\begin{equation}D \subseteq C\end{equation}

1. Given $c \in C$, we have $c = 6m$ for $m \in \mathbb{N}$. 
    i. Rewrite this as $c = 2 * (3m)$
        - $\Rightarrow c$ is a multiple of 2
    ii. Rewrite this as $c = 3 * (2m)$
        - $\Rightarrow c$ is a multiple of 3
    iii. $\therefore c \in D, C \subseteq D$

2. Given $d \in D$, we have $d = 2r$ and $d = 3s$ for $r, s \in \mathbb{N}$. Thus $3s$ is equal to the even number $2r$. If $s$ is odd and $3s$ is odd, then $s$ must be even:
    i. Let $s = 2t \implies d = 3s = 2 * 2 * t = 6 * t$
    ii. $\therefore d \in C, D \subseteq C$


### Problem 3
1. $f$ is surjective since each element occurs at least once as a value of $f$. $f$ is not injective since the element $4$ occurs twice as a value of $f$. $f$ is not bijective.

2. $g$ is surjective and injective therefore $g$ is also bijective.

3. $h$ is not surjective since the value $d \in X$ is not a value of $h$. $g$ is injective. $h$ is not bijective.

### Problem 4
Since $j(n)$ is an even number $2n$, an odd integer such as $3$ cannot be a value of $j$. Therefore $j$ is not surjective.

In order to prove that $j$ is injective, we have to show that there cannot be distinct numbers $n$ and $n'$ such that $j(n) = j(n')$.

This would imply that $2n = 2n'$, and cancelling the factor 2, we obtain $n = n'$

Thus there is at most one number $n$ such that $j(n)$ has a given value $\implies$ j is injective.

### Problem 5
Using the pigeon hole principle, suppose that the man has two fictitious boxes, one for grey and one for brown socks. If three socks are drawn,
then one such box must contain two socks of the relevant type while drawing fewer does not ensure this.

### Problem 6
1.
    a. Reflexive: No, because $x * x = x^2$ is not always equal to 24
    b. Symmetric: Yes, because $x * y = 24 \Leftrightarrow y * x = 24$
    c. Transitive: No, because $x * y = 24$ and $y * z = 24$, and this does not imply $x * z = 24$
        i. For example: $x = 3$, $y = 8$, $z = 3$, $x * y = 24$, $y * z = 24$, $x * y \neq 24$

2. 
    a. Reflexive: Yes, because $x + x = 2x$ is always even
    b. Symmetric: Yes, because $x + y \Leftrightarrow y + x$ holds
    c. Transitive: Yes, because if $x + y = 2a$, $y + z = 2b$, then $x + z = 2(a+b-y)$ is even

### Problem 7

\begin{equation}R = \{(1, 18), (2, 9), (3, 6), (6, 3), (9, 2), (18, 1)\}\end{equation}

### Problem 8
First find out what is important and what is to ignore. The year is irrelevant and January could be replaced by any other
month with 31 days. If $i$ and $j \in X$, then evidently $i$ and $j$ represent the same day of the week if and only if $j - i$ is divisible by 7.
\begin{enumerate}
\item
Reflexive: Yes, because $i$ certainly represents the same day as itself
\begin{equation}i - i = 0 \text{ is divisible by 7}\end{equation}

\item
Symmetric: Yes, if $i$ and $j$ represent the same day of the week, then $j$ and $i$ will do as well

\begin{equation}\text{if } j - i \text{ is divisible by 7}\end{equation}
\begin{equation}\text{so } j - i = 7*m \end{equation}
\begin{equation}\text{and also } i - j = -7m \text{ is divisible by 7}\end{equation}

\item
Transitive: Yes if $i$ and $j$ represent the same day, and if $j$ and $k$ represent the same day, then $i$ and $k$ is true

Let:
\begin{equation}j - i = 7m\end{equation}
\begin{equation}k - j = 7n\end{equation}

then,
\begin{align}
k - i &= 7n + j + 7m - j \\ 
&= 7(n + m)
\end{align}


\end{enumerate}


### Problem 9

Double counting rule: summarizing over rows = summarizing over columns

\begin{tabular}{l|llllllll}
  & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\
  \hline
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 \\
2 &   & 1 &   & 1 &   & 1 &   & 1 \\
3 &   &   & 1 &   &   & 1 &   &   \\
4 &   &   &   & 1 &   &   &   & 1 \\
5 &   &   &   &   & 1 &   &   &   \\
6 &   &   &   &   &   & 1 &   &   \\
7 &   &   &   &   &   &   & 1 &   \\
8 &   &   &   &   &   &   &  & 1
\end{tabular}


### Problem 10
Following the double counting principle $R \subseteq R * G$ is the relation defined by $bRg$ if boy $b$ knows girl $g$:
<!-- $R$ \subseteq $R$ \cross $G$ is the relation defined by $bRg$ if boy $b$ knows girl $g$ -->

\begin{align}
|R| &= 32 * 5 \\
&= | G | * 8  \\
&= 20
\end{align}


### Problem 11
- Without any restrictions: $26^4 = 456976$ possibilities
- Without "b": $25^4 = 390652$ possibilities

Gaining a feeling for properties of numbers: A change from 26 to 25, $\frac{1}{25} \approx 4\%$ causes a decrease of roughly 14.5%

### Problem 12
- $i, j, k > 0$ otherwise a pasty would hold an absolute majority
- It holds $k=151-i-j$, so in fact we only have two variables
- If $i = 1 \Rightarrow (j, k) = (75, 75)$
- If $i = 2 \Rightarrow (j, k) = (75, 74), (74, 75)$ 
- If $i = 3 \Rightarrow (j, k) = (75, 73), (74, 74), (73, 75)$ 
- If $i = 75 \Rightarrow (j, k) = (75, 1), (74, 2), ..., (1, 75)$

The combined probability using the sum rule:
\begin{equation}
\sum_{i=1}^{n}{i} = \frac{n(n-1)}{2}, \quad n\in\mathbb{N} 
\end{equation}
\begin{equation}
\sum_{i=1}^{75}{i} = \frac{75 * 76}{2} = 2850
\end{equation}

### Problem 13
a. Initially invite the 3 particular friends. This can only be done in 1 way. Now you need to invite $3 = 6 - 3$ friend from the remaining $7 = 10 - 3$. This can be done in $C(7,3) = 35$ ways.
b. Remove 3 friends which leaves 7 friends remaining, then choose 6 out of the 7 ($C(7, 6) = C(7, 1) = 7$ ways)

### Problem 14
a. We have in total $n = 10 + 4 = 14$ people, because we have a round table, there are $13!$ possible arrangements. 

b. Since all the 4 girls sit together, we can group them into together and consider them as a single girl. Then $n = 10 + 1 = 11$ is the total number of people. The people can be seated at a round table in $10!$ ways. The girls can be arranged among themselves in $4!$ ways. In total we have $10!4! = 87091200$ possibilities.

c. Hence, let's initially arrange the 10 boys: $9!$ possibilities. Now there are $10$ positions left to place the 4 girls so that no two girls sit together. In addition, we have to take into consideration the possibilities to order the girls. $\Rightarrow 9!*C(10,4)*4!$

### Problem 15
If the elements of $X$ are listed $X = \{x_1, ..., x_m\}$ then there are two choices for $f(x_1)$, two choices for $f(x_2)$ and so on. 
Moreover the choices are independent in the sense that for $i \neq j$, the choice for $x_i$ does not affect and is not affected by the choice for $x_j$. $\Rightarrow |F| = 2^m$ 

### Problem 16
Let $Y$ be a set with 8 elements. The set $X$ of subsets of $Y$ has $2^8 = 256$ elements due to lemma 1.3.2. The set $W$ of subsets of $X$ has $2^{256} \approx 1.157 \times 10^7$ elements.

### Problem 17
The expression on the left hand side is the sum of the numbers of $r$-subsets of an $n$-set taken over all possible values of $r$, hence the left hand side is equal to the total number of subsets of an $n$-set according to lemma 1.3.2, this is $2^n$.

### Problem 18
\begin{align}
A &\hat{=} \text{ students that can read French (47)} \\
B &\hat{=} \text{ students that can read German (35)} \\ 
C &\hat{=} \text{ students that can read Russian (20)}
\end{align}

a. By using corollary 1.2.6, we know the number of students that can read French or German or both as $|A \cup B| = |A| + |B| - |A \cap B| = 47 + 35 - 23 = 59$. $\Rightarrow$ Number of students that can read neither language: $67-59 = 8$

b. \begin{align} |A \cup B \cup C| &= |A| + |B| + |C| + (|A \cap B| + |B \cap C| + |B \cap C|) + |A \cap B \cap C|\\
&=47+35+20-23-12-11+5 \\
&=61
\end{align}

### Probelm 22
The problem can be formulated as : find the number of the surjections from a set of 11 places to the set $\{M, I, S, P\}$ such that 4 of the places are mapped to $I$, $4$ to $S$, $2$ to $P$, and $1$ to $M$.

Multinomial number:
\begin{equation}
\Big(
\begin{tabular}{c}
11 \\
4,4,2,1
\end{tabular}
\Big) = \frac{11!}{4!\times4!\times2!\times1!}
\end{equation}

### Problem 23 

\begin{align}
\sigma &= (1, 6, 3, 4, 2, 5) \\
&= (1,5) \circ (1, 2) \circ (1, 4) \circ (1, 3) \circ (1, 6) \\
&= (1,6) \circ (6,3) \circ (3, 4) \circ (4, 2) \circ (2,5)
\end{align}

Counters Example:
\begin{align}
(1, 5) \circ (1, 2) \circ (1, 4) \circ (1, 6) \circ (1, 3), \quad 1 \mapsto 3
\end{align}

Disjoint: $\tau$ only moves elements that $\sigma$ fixed and vice versa.

$\Rightarrow$ The used permutations are not disjoint in both representations, so they must not commute (commutative).

Not disjoint, but commutative:

\begin{align}
\sigma = \Big(
\begin{tabular}{cccc}
1 & 2 & 3 & 4 \\
2 & 1 & 4 & 3
\end{tabular}
\Big)
\quad
\tau = \Big(
\begin{tabular}{cccc}
1 & 2 & 3 & 4 \\
3 & 4 & 1 & 2
\end{tabular}
\Big)
\end{align}

To check if they are commutative ($\sigma \circ \tau = \tau \circ \sigma$):

\begin{align}
\sigma \circ \tau = \Big(
\begin{tabular}{cccc}
1 & 2 & 3 & 4 \\
4 & 3 & 2 & 1
\end{tabular}
\Big)
\quad
\tau \circ \sigma = \Big(
\begin{tabular}{cccc}
1 & 2 & 3 & 4 \\
4 & 3 & 2 & 1
\end{tabular}
\Big)
\end{align}

Examples for commutative permutations: 
\begin{align}
\sigma \circ id = id \circ \sigma = \sigma \\
\sigma^{-1} \circ \sigma = \sigma \circ \sigma^{-1} = id
\end{align}

### Problem 24
Compute a partial fraction decomposition of the following rational function:
\begin{align}
\frac{x + 2}{x^6 + x^4 - x^2 - 1}
\end{align}

The decomposition of the denominator: Use $1$ as a $0$.

```
 (x^6 + x^4 - x^2 - 1):(x - 1) = x^5 + x^4 + 2x^3 + 2x^2 + 1
-(x^6 - x^5)
        x^5 + x^4
       -x^5 + x^4 
             2x^4
            -2x^4 + 2x^3
                    2x^3 - x^2
                   -2x^3 + 2x^2
                         x^2
                        -x^2 + x
                               x - 1
                              -x + 1
                                   0
```

-1 is a zero of the remaining the polynomial:

```
(x^5 + x^4 + 2x^3 + 2x^2 + x + 1):(x + 1) = x^4 + 2x^2 + 1
-x^5 - x^4
             2x^3 + 2x^2
            -2x^3 - 2x^2
                           x + 1
                          -x - 1
                               0
```

We can rewrite:
\begin{equation}
x^4 + 2x^2 + 1 = (x^2 + 1)^2
\end{equation}

into:
\begin{align} 
&\Rightarrow x^6 + x^4 - x^2 - 1 = (x-1)(x+1)(x^2+1)^2 \\
&\Rightarrow r(x) = \frac{x+2}{x^6+x^4-x^2-1} = \frac{A}{(x-1)} + \frac{A}{(x+1)} + \frac{Cx + D}{x^2 + 1} + \frac{Ex + F}{(x^2 + 1)^2} \\
&\Leftrightarrow x + 2 = A(x+1)(x^2+1)^2+B(x-1)(x^2+1)^2\\
&\phantom{{}=4}+(Cx+D)(x-1)(x+1)(x^2+1)+(Ex + F)(x-1)(x+1) \notag
\end{align}

Comparision of coeffecients:
\begin{align}
x^0&: 1 = A - B - D - F \\
x^1&: 0 = A + B - C - E \\
x^2&: 0 = 2A - 2B + F \\
x^3&: 0 = 2A + 2B + E \\
x^4&: 0 = A - B + D \\
x^5&: 0 = A + B + C 
\end{align}

Use Gaussian Elimination to compuite $A - F$
\begin{align}
r(x) = 
\frac{\frac{3}{8}}{x - 1} 
+ \frac{-\frac{3}{8}}{x + 1} 
+ \frac{-\frac{1}{4}x-\frac{1}{2}}{x^2 + 1}  
+ \frac{-\frac{1}{2}}{(x^2+ 1)^2}
\end{align}

### Problem 25
Let $U(x)$ be the generating function for the sequence $u_n$. Using the initial values of $u_0$, $u_1$, and the equation for $u_{n+2}$, $n \geq 0$, we have: 
\begin{align}
U(x) &= u_0 + u_1x^1 + u_2x^2 + u_3x^3 + ... \\
&= 0 + x + \sum_{n=2}^{\infty}{u_nx^n} \\
&= x + \sum_{n=0}^{\infty}{u_{n+2}x^{n+2}} \\
&= x + \sum_{n=0}^{\infty}{(5u_{n+1} - 6u_n)x^{n+2}} \\
&= x + 5x\Bigg(\sum_{n=0}^{\infty}{u_nx^n - u_0x^0}\Bigg) - 6x^2\Bigg(\sum_{n=0}^{\infty}{u_nx^n}\Bigg) \\
U(x) &= x + 5xU(x) - 6x^2U(x) \\
&\Rightarrow U(x) = \frac{x}{1-5x+6x^2}
\end{align}

(46) We need to split the sums so that the indexes are equal to it's exponents
(48) Move $5x$ out, and subtract by $u_0x^0$ since we decreased the index

The main idea now is to expand the right hand side as a formal power series.. To do this we factorize the denominators:

\begin{align}
1 - 5x + 6x^2 &= (1-\alpha x)(1-\beta x) \\
1 - 5\frac{1}{y}+6\frac{1}{y^2} &= (1 - \frac{\alpha}{y})(1 - \frac{\beta}{y}) \quad \text{(sub $x = \frac{1}{y}$)} \\
y^2 - 5y + 6 &= (y - \alpha)(y-\beta) \quad \text{(mult $y^2$)} \\
y_{1, 2} &= \frac{5}{2} \pm \sqrt{\Big(\frac{5}{2}\Big)^2 - 6} = \frac{5}{2} \pm \frac{1}{2} \\
y_1 &= \alpha = 3, \quad y_2 = \beta = 2 \\
&\Rightarrow 1- 5x + 6x^2 = (1 - 3x)(1 - 2x)
\end{align}

Decompose into partial fractions:

\begin{align}
\frac{x}{1-5x+6x^2} &= \frac{A}{1-3x} + \frac{B}{1-2x} \\
x &= A(1-2x) + B(1-3x)
\end{align}

Now we need to compare the coefficients: 
\begin{align}
0 = A + B&, \quad 1 = -2A - 3B \\
A = -B&, \quad 1 = 2B - 3B = -1B \\
A = 1&, \quad B = -1 
\end{align}

Substituting $A$, and $B$ into U(x):
\begin{align}
U(x) &= \frac{1}{1-3x} - \frac{1}{1-2x} \\
&= \sum_{n=0}^{\infty}{(3x)^n} - \sum_{n=0}^{\infty}{(2x)^n} \\
&= \sum_{n=0}^{\infty}{(3^n - 2^n)x^n} \\
\end{align}

Therefore, the generating function is:
\begin{align}
&\Rightarrow u_n = 3^n - 2^n
\end{align}

### Problem 26

a. $p_n = 5a_n$
\begin{align}
    P(x) &= p_0 + p_1x + p_2x^2 + ... \\
    &= 5a_0 + 5a_1x + 5a_2x^2 + ...\\
    &= 5A(x)
\end{align}

b. $q_n = 5 + a_n$
\begin{align}
    P(x) &= q_0 + q_1x + q_2x^2 + ... \\
    &= (a_0 + 5) + (a_1 + 5)x + (a_2 + 5)x^2 + ... \\
    &= a_0 + a_1 + a_2x^2 + ... + 5 + 5x + 5x^2 + ...\\
    &= A(x) + \frac{5}{1-x}
\end{align}

c. $r_n = a_{n+5}$
\begin{align}
R(x) &= r_0 + r_1x + r_2x^2 + ... \\
&= a_5 + r_6x + r_7x^2 + ...\\
&= \frac{\overbrace{(a_0 + a_1x + a_2x^2 +...)}^\text{$A(x)$} - (a_0+ a_1x + a_2x^2 + a_3x^3 + a_4x^4)}{x^5}
\end{align}

d. $h_n =
\begin{cases}
    a_{n-5}, & \text{if } n \geq 5\\
    0, & \text{else } 
\end{cases}$

\begin{align}
H(x) &= h_0 + h_1x + h_2x^2 + ... \\
&= 0 + 0 + 0 + 0 + 0 + a_0x^5 + a_1x^6 + .... \\
&= x^5(a_0 + a_1x + a_2x^2 + ..) \\
&= x^5A(x)
\end{align}

### Problem 27
1. We already know that $(1, 1, 1, 1, 1, 1,...)$ has the generating function 
\begin{equation}
    \frac{1}{1-x}
\end{equation}

2. Use the substitution $2x$ for $x$ $\Rightarrow(1, 2, 4, 8, ...)$ with the generating function 
\begin{equation}
    \frac{1}{1-2x}
\end{equation}

3. Use the substitution $x^2$ for $x$ $\Rightarrow(1, 0, 2, 0, 4, 0, ...)$ with the generating function 
\begin{equation}
    \frac{1}{1-2x^2}
\end{equation}
4. Now we need to shift all the elements in the sequence one place to the right $\Rightarrow(0, 1, 0, 2, 0, 4, ...)$ by multiplying it by $x$:
\begin{equation}
    \frac{x}{1-2x^2}
\end{equation}
5. Now we add the two sequences from (3) and (4) to get our generating function 
\begin{equation}
    \frac{1}{1-2x^2} + \frac{x}{1-2x^2}
\end{equation}

### Problem 28
1. There are $2 * 4 + 1$ final outcomes: $G, 1H, 1L, 2H, 2L, 3H, 3L, 5H, 4L$ 
2. The decision tree is ternary, since these are three possible results of each decision.

![](images/Exercise28.pdf)
