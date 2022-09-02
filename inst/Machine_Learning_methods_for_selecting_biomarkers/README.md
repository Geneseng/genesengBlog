
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# Machine Learning methods for selecting biomarkers

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/08/feature_selection.jpg'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>

## INTRODUCTION

<p color="#64677F">
The advent of the era of big data has marked the twenty-first century.
This massive flow of data presented numerous opportunities that were
impossible to imagine before. Indeed, many companies grew, based their
business around data and gained astonishing benefits. However, this new
golden age was accompanied by several challenges. Indeed, traditional
data processing methods can’t manage voluminous datasets, that is why
many methods were developed to extract relevant information from these
massive datasets.
</p>
<p color="#64677F">
Feature selection (or variable selection) has emerged as one of key step
in data chain value. Combined with Machine Learning (ML), feature
selection reduces friction, rendering analysis less tedious and
time-consuming. Feature selection brings a set of techniques allowing to
identify best contributing features to increase ML model performance.
Applied to medical research, feature selection is an analogical term to
biomarker selection.
</p>
<p color="#64677F">
Feature selection is divided in three popular categories: filter,
wrapper and embedded methods.
</p>

## FILTER METHODS

<p color="#64677F">
Filter methods apply simple statistical process to score features and
filter them. Due to their simplicity, they are used to quickly identify
irrelevant, redundant, duplicated or correlated features.
</p>

### CORRELATION

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/pearson_coefficient_correlation.png'></a>
</center>
<p color="#64677F">
This method evaluates the correlation between two continuous variables
using Pearson’s coefficient. The coefficient’s range is located between
-1 and 1 and traduces the relationship between both variables. When r is
comprised between …
</p>
<p color="#64677F">

-   0.8-1: very strong positive correlation
    </p>

<p color="#64677F">

-   0.6-0.8: strong positive correlation
    </p>

<p color="#64677F">

-   0.4-0.6: positive correlation
    </p>

<p color="#64677F">

-   0.2-0.4: weak positive correlation
    </p>

<p color="#64677F">

-   0-0.2: very weak positive correlation
    </p>

<p color="#64677F">

-   0: Independent
    </p>

<p color="#64677F">

-   -0.2-0: very weak negative correlation
    </p>

<p color="#64677F">

-   …
    </p>

<p color="#64677F">
For instance, highly correlated variables (r \> \|0.9\|) bring redundant
information and it may be judicious to remove one of each pair.
</p>
<p color="#64677F">
To non-parametric variables, the Spearman correlation coefficient could
be used. However, regarding categorical variables, the next method is
more appropriate.
</p>

### CHI-SQUARED TEST

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/chi_squared_test.png'></a>
</center>
<p color="#64677F">
The chi-squared test is one of the alternative methods to the Pearson
correlation. The chi-squared test evaluates the relationship between two
categorical variables. Observed and expected values are compared
computing the chi-squared value. The final value is compared to the
reference chi value (depending on the degree of freedom and the alpha
type 1 error).
</p>
<p color="#64677F">

-   If X2 \< Xtable: both variables are independent
    </p>

<p color="#64677F">

-   If X2 \> Xtable: both variables are linked
    </p>

### PERMUTATION IMPORTANCE

<p color="#64677F">
The concept of feature importance was introduced by Breiman (2001) for
random forests and traduced the ability of a permuted feature to disturb
model performance. A bigger model’s error prediction indicates that a
defined feature contributes to enhance model performance (more than
others). Almost two decades later, Fisher et al. (2018) came up with a
model-agnostic version of feature importance. That is to say, feature
importance can be performed to any Machine Learning classifier.
</p>
<p color="#64677F">
<ins>
ALGORITHM (incorporating resampling)
</ins>
</p>
<p color="#64677F">
For any given loss function:
</p>
<p color="#64677F">
1: Compute loss function for original model (original loss)
</p>
<p color="#64677F">
2: For variable i in (1, …, P):
</p>
<p color="#64677F">
For replicate j in (1, …, N):
</p>
<p color="#64677F">

-   1.  Randomize values
        </p>

<p color="#64677F">

-   2.  Apply given ML model
        </p>

<p color="#64677F">

-   3.  Estimate loss function (permutated loss)
        </p>

<p color="#64677F">

-   4.  Compute feature importance (permutated loss / original loss)
        </p>

<p color="#64677F">
END
</p>
<p color="#64677F">
END
</p>
<p color="#64677F">
3: Rank variables by feature importance value in descending order
</p>
<p color="#64677F">
4: Filter features using appropriate threshold
</p>
<p color="#64677F">
Loss function: Accuracy, RMSE …
</p>
<p color="#64677F">
P: Total of variables
</p>
<p color="#64677F">
N: Number of replicates
</p>

## WRAPPER METHODS

<p color="#64677F">
Wrapper methods are selection based approaches. A predictive model is
trained using numerous feature combinations. Then, models are evaluated
and compared in order to identify perfect input.
</p>

### RECURSIVE FEATURE ELIMINATION

<p color="#64677F">
In 2002, Vapnik and his team designed a new method called Recursive
Feature Elimination (RFE). RFE reduces model complexity, removing
irrelevant features one by one.
</p>
<p color="#64677F">
Define the minimal number (M) of variables to keep
</p>
<p color="#64677F">
INPUT: a set of variables S = {a1, …, an}
</p>
<p color="#64677F">
1: Compute loss function for original ML model using the dataset S
</p>
<p color="#64677F">
2: Rank variables by feature importance in descending order
</p>
<p color="#64677F">
3: Remove the least important feature noted ai and define the new subset
</p>
<p color="#64677F">
S’ = S – ai
</p>
<p color="#64677F">
4: While length of S’ ≥ length of M,
</p>
<p color="#64677F">

-   1.  Compute loss function for same ML model using the dataset S’
        </p>

<p color="#64677F">

-   2.  Rank variables by feature importance in descending order
        </p>

<p color="#64677F">

-   3.  Remove the least important feature ai
        </p>

<p color="#64677F">
END
</p>
<p color="#64677F">
5: Return M
</p>

### GENETIC ALGORITHM

<p color="#64677F">
Genetic algorithm (GA) tends to mimic biological processes including
genetics and natural selection in order to solve very complex
optimization problems. In feature selection, GAs retain only the best
adapted features and transmit them to the next generation. With each
generation, features are randomly modified with Crossover and mutation
phenomena.
</p>
<p color="#64677F">
<ins>
ALGORITHM
</ins>
</p>
<p color="#64677F">
1: Randomly initialize a population composed of P individuals
</p>
<p color="#64677F">
2: Compute fitness score of each individual
</p>
<p color="#64677F">
3: Until convergence repeat the following:
</p>
<p color="#64677F">

-   A: Select individuals according to their fitness scores
    </p>

<p color="#64677F">

-   B: Perform crossover
    </p>

<p color="#64677F">

-   C: Perform mutation
    </p>

<p color="#64677F">

-   D: Compute fitness score to new generation
    </p>

<p color="#64677F">
Fitness function: rank-based …
</p>
<p color="#64677F">
To get further information, you will find a complete article on genetic
algorithms
<a href='https://geneseng.com/genetic_algorithms_simply_explained/'>
Here </a>.
</p>

## EMBEDDED METHODS

<p color="#64677F">
Embedded methods include a “two-in-one” strategy. Feature selection is
retrieved inside the fitting process. LASSO or Elastic net regressions
are the archetypes of embedded methods.
</p>

### LASSO REGRESSION

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/LASSO.png'></a>
</center>
<p color="#64677F">
LASSO regression (for Least Absolute Shrinkage and Selection Operator)
was designed from linear regression incorporating a L1 regularization
element. The element tends to shrink less important feature coefficients
to zero and thus automatically remove useless ones. This element was
developed to reduce model complexity and overfitting in situations when
there are a large number of features.
</p>

### ELASTIC NET

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/elastic_net.png'></a>
</center>
<p color="#64677F">
Elastic net incorporates LASSO and ridge coefficients (another kind of
regression) to eliminate the limitations of the LASSO regression. Thanks
to its flexibility, elastic net regression tends to outperform linear
regression and derivatives.
</p>

## CONCLUSION

<p color="#64677F">
As you might have guessed, there is no perfect way to identify optimized
input. Best feature selection depends on several settings such as the
complexity of datasets, their nature (tabular file, DNA sequences…) or
the initial problematics. A few years ago, we witnessed the development
of numerous automated Machine Learning (autoML) libraries including
feature selection methods such as TPOT …
</p>
<p color="#64677F">
At Geneseng, we developed from scratch our first autoML library
dedicated to biomarkers prediction (in tabular format). We incorporated
most of the feature selection strategies previously described, allowing
flexible automated pipelines.
</p>

## REFERENCES

<p color="#64677F">
Breiman, L. (2001) “Random Forests.” Machine Learning 45 (1). Springer:
5-32
</p>
<p color="#64677F">
Fisher, A., Rudin, C., and Dominici, F. (2018). Model Class Reliance:
Variable Importance Measures for any Machine Learning Model Class, from
the « Rashomon » Perspective.
</p>
<p color="#64677F">
Guyon, I, J Weston, S Barnhill, and V Vapnik. 2002. “Gene Selection for
Cancer Classification Using Support Vector Machines.” Machine Learning
46 (1): 389–422.
</p>
<p color="#64677F">
Mitchell M. (1996). An Introduction to Genetic Algorithms. Cambridge,
MA: MIT Press.
</p>
<p color="#64677F">
Tibshirani R. (1997) “The lasso method for variable selection in the Cox
model.” Statist.Medicine 385-395.
</p>
<p color="#64677F">
AZou H., Hastie T (2005) “Regularization and variable selection via the
elastic net” Statistical method 301-320.
</p>
