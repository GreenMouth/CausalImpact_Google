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


#References: 
https://cran.r-project.org/web/packages/CausalImpact/vignettes/CausalImpact.html
https://cran.r-project.org/web/packages/CausalImpact/CausalImpact.pdf
https://www.youtube.com/watch?v=GTgZfCltMm8
https://storage.googleapis.com/pub-tools-public-publication-data/pdf/41854.pdf
https://github.com/google/CausalImpact
https://en.wikipedia.org/wiki/Spike-and-slab_regression
https://blog.exploratory.io/an-introduction-to-causal-impact-analysis-a57bce54078e
https://multithreaded.stitchfix.com/blog/2016/01/13/market-watch/
https://www.analytics-link.com/single-post/2017/11/03/Causal-Impact-Analysis-in-R-and-now-Python
http://www.degeneratestate.org/posts/2018/Mar/24/causal-inference-with-python-part-1-potential-outcomes/
https://github.com/ijmbarr/notes-on-causal-inference/blob/master/datagenerators.py
