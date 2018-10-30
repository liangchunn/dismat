# Discrete Mathematics Problem Sheet Answers (WS18/19)
Created by Liang Chun

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