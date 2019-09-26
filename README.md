# CausalImpact_Google
Using Bayesian Structural Time Series (BSTS) model for time series intervention analysis

Measure impact of a time series intervention on outcome KPI (sales, clicks, etc.) using Bayesian state-space model.
Ways to quantify attribution by intervention on measured outcome.

Practical Usecase:
1. Let's say you own 2 website (A & B) which performs same in terms of #clicks
2. You chnaged something on website A and which you expect potentially will affect #Clicks for A 
3. But you #Clicks for website B will 'remain same' irrespective of changes made in A
4. Website B will be a counterfactual of A post-intervention
5. Now, using CausalImpact you can measure 'attribution' done by new feature in A

**Note:
BSTS model uses spike and slab Bayesian variable selection technique.
https://en.wikipedia.org/wiki/Spike-and-slab_regression
