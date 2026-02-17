# 🏆 Tournament Player Ranking using Eigenvector Matrix Model

## 📌 Title
**Ranking of Players in a Tournament using the Eigenvalue–Eigenvector Method**

## 📖 Overview

This project implements a matrix-based ranking system to determine the relative strength of players in a tournament using concepts from linear algebra.

Instead of ranking players solely based on total wins, this method considers:

- Who defeated whom  
- Strength of opponents  
- Indirect influence between players  

The ranking is computed using the eigenvalue equation:

A * x = λ * x

Where:

- A = Comparison matrix  
- λ = Eigenvalue  
- x = Ranking vector  

The eigenvector corresponding to the largest eigenvalue determines the final ranking.

## 🎯 Problem Statement

In tournaments, ranking players based only on total wins may not reflect true performance.

For example:

- A player defeating strong opponents should rank higher.
- A player defeating weaker opponents should rank lower even if total wins are equal.

### Objective

1. Construct a comparison matrix from match results.
2. Compute eigenvalues and eigenvectors.
3. Extract the dominant eigenvector.
4. Rank players based on eigenvector magnitude.

## 🧠 Mathematical Model

### Step 1: Construct Comparison Matrix

For n players:

a_ij = 1  → if player i defeats player j  
a_ij = 0  → otherwise  

This forms an n × n matrix A.

### Step 2: Eigenvalue Equation

The ranking vector satisfies:

A * x = λ * x  

Rewriting:

(A − λI)x = 0  

For non-trivial solution:

det(A − λI) = 0  

The largest eigenvalue (λ_max) and its eigenvector provide the ranking.

### Step 3: Ranking Rule

If:

x = [x1, x2, x3, ..., xn]^T  

Then:

Higher xi  →  Higher rank of Player i  

Only relative magnitude matters (eigenvectors are scale-invariant).

## ⚙️ Methodology

1. Collect tournament results.
2. Build adjacency/comparison matrix.
3. Use MATLAB `eig()` function to compute eigenvalues and eigenvectors.
4. Select eigenvector corresponding to the largest eigenvalue.
5. Sort values in descending order.
6. Display ranking results.

## 💻 Technologies Used

- MATLAB
- Linear Algebra (Eigenvalues & Eigenvectors)
- Matrix Computations

## 📊 Results

The eigenvector ranking model:

✔ Accounts for strength of opponents  
✔ Captures indirect dominance  
✔ Produces stable ranking  
✔ Works for small and large tournaments  

### Key Insight

A player's ranking increases not only by winning more matches, but by defeating stronger players.


## 🔍 Why This Method is Superior to Win Count

Traditional ranking:
- Counts only total wins.

Eigenvector ranking:
- Considers the network of victories.
- Rewards wins against strong opponents.
- Reflects influence propagation.

This concept is similar to:
- Google PageRank
- Network centrality analysis

## 🚀 Future Scope

This project can be extended to include:

- Weighted matrices (multiple wins counted)
- Handling draws (0.5 scoring system)
- Large real tournament datasets
- Power Iteration method implementation
- Graph visualization
- Dynamic ranking updates
- Integration with sports APIs

## 📌 Applications

- Sports tournaments
- Chess ranking systems
- Tennis ranking models
- Esports competitions
- Social network influence analysis
- Decision-making systems

## 🏁 Conclusion

This project demonstrates how linear algebra can be applied to ranking problems.

By solving:

A * x = λ * x  

We obtain a ranking vector that reflects both direct and indirect competitive strength.

The eigenvector-based matrix model provides a mathematically sound, scalable, and more accurate alternative to traditional ranking methods.
