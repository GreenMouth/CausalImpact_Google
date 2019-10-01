

#Package Name: CausalImpact
#An R package for 'causal inference using Bayesian structural time-series' models

#Model Assumptions**:
#All of the inferences/counterfactual predictions depend critically 
#on the assumption that the covariates/features were not themselves affected by 
#the intervention. 
#The model also assumes that the relationship (correlation)
#between covariates and treated time series, as established during 
#the pre-period, remains stable throughout the post-period.

#Assumption 1: x1 is not affected by intervention
#Assumption 2: x1 & y relationship stays stable in pre & post period

#Import CausalImpact package
install.packages("CausalImpact")

#load CausalImpact library 
library(CausalImpact)

#Generate Toy Dataset with intervention after 70 observations
set.seed(1)
x1 <- 100 + arima.sim(model = list(ar = 0.999), n = 100) #covariate
y <- 1.2 * x1 + rnorm(100) #response variable
y[71:100] <- y[71:100] + 10
data <- cbind(y, x1)

dim(data) #dataset dimensions
head(data) #display top 6 rows

#visualize generated data
matplot(data, type = "l")

#counterfactual: If no intervention had done then *
#train model on pre-intervention data to predict counterfactual results
#define vectors: specify first & last day of intervention
pre.period <- c(1, 70) #pre-intervention data
post.period <- c(71, 100) #post-intervention data

#Run analysis for inference: This instructs the package to:
# 1. assemble a Baysian structural time-series (BSTS) model, 
# 2. perform posterior inference, 
# 3. compute estimates of the causal effect (counterfactual predictions). 

#The return value is a CausalImpact object
impact <- CausalImpact(data, pre.period, post.period)

#Plot impact object (model result)
#plot(impact)
impact.plot <- plot(impact) + 
  ylab("% YoY Store Sales Difference for X City") + 
  xlab("Day (showing Pre-Post Intervention Effect of X Marketing effort)") 
plot(impact.plot)


#Print numeric summary of model predictions
summary(impact)

#Print detailed summary report
summary(impact, "report")

#plot 1: Actual & Counterfactual Predictions
plot(impact, "pointwise")
#Plot 2: Difference between Actual & Counterfactual Prediction: Model estimates
plot(impact, 'original')
#Plot 3: Cumulative effect of intervetion (~300 extra toys sold)
plot(impact, 'cumulative')



