
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# On evaluation metrics for medical applications of AI

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/clinical.jpg'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>

## INTRODUCTION

<p color="#64677F">
In 2012, people discovered the power of Machine Learning (ML) and its
potential to solve previously unresolved human problems. Using
predictive models, engineers succeeded in solving complex problems like
breast cancer identification, antibiotics discovery or proteins’s 3D
shape prediction.
</p>
<p color="#64677F">
To evaluate models, scientists lean on metrics. Using an analogy, a
metric is like a “biomarker” of a predictive model. In other words, it
reflects the performance of a model.
</p>
<p color="#64677F">
Nowadays, tabular ML problems are separated in two categories:
Classification and Regression. Both employed different metrics.
</p>

## CLASSIFICATION

<p color="#64677F">
Classification deals with the ability to break individuals or objects
into categories. The target variable may based on labels (health/sick,
benign/malign …) or probabilities (A: 0,98; B:0,01; C:0,01).
</p>

### METRICS BASED ON LABELS

<p color="#64677F">
For a defined threshold, classification model predictions are compared
with clinical observations. Similarities and differences are reported in
a 2×2 array called confusion matrix.
</p>

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/confusion_matrix.png'></a>

<p align="center" color="#64677F">
Example of Confusion Matrix
</p>
<p color="#64677F">
A perfect classification model must:
</p>
<p color="#64677F">

-   Maximize True Positives (*TP*) and True Negatives (*TN*)
    </p>

<p color="#64677F">

-   Minimize False Positives (*FP*) and False Negatives (*FN*)
    </p>

<p color="#64677F">
Thanks to confusion matrix, metrics can be computed and give relevant
information about predictive models. This is a list of the most
important classification metrics based on labels:
</p>
<p color="#64677F">

-   *Accuracy* defines the number of correct predictions divided by the
    total number of predictions.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/accuracy.png'></a>
</center>
<p color="#64677F">

-   *Sensitivity (True Positive Rate, TPR)* (or recall) refers to the
    ability of the model to detect TP among actual and predicted values
    which have the condition (have cancer).
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/sensitivity.png'></a>
</center>
<p color="#64677F">

-   *Specificity (False Positive Rate, FPR)* refers to the ability of
    the model to detect TN among actual and predicted values which don’t
    have the condition (doesn’t have cancer).
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/specificity.png'></a>
</center>
<p color="#64677F">

-   *Positive Predictive Value (PPV)* (also called precision) defines
    the number of TP among all positive cases.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/PPV.png'></a>
</center>
<p color="#64677F">

-   *Negative Predictive Value (NPV)* defines the number of TN among all
    negative cases.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/NPV.png'></a>
</center>
<p color="#64677F">

-   *No information rate* defines the largest class percentage in the
    data. The metric traduces the minimal “acceptable” accuracy
    performance of your model.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/no_info_rate.png'></a>
</center>
<p color="#64677F">

-   *Balanced accuracy* defines the accuracy (in imbalanced class
    context).
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/balanced_accuracy.png'></a>
</center>
<p color="#64677F">

-   *F1-score* is the harmonic mean of the precision and recall
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/f1_score.png'></a>
</center>
<p color="#64677F">

-   *AUC*, which stands for “Area Under the ROC Curve”, evaluates all
    possible thresholds based on Sensitivity-Specificity couple values.
    The area delimited by each couple is computed.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/AUC.png'></a>
</center>

### METRICS BASED ON PROBABILITIES

<p color="#64677F">
Numerical predictions are compared to actual outputs.
</p>
<p color="#64677F">

-   *Log loss* is one of the most important classification metrics based
    on probability and refers to how close the prediction probability is
    to the actual value. A perfect model got a score equal to 0.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/log_loss.png'></a>
</center>
<p align="center" color="#64677F">
yi: actual value ; pi: predicted value
</p>

## REGRESSION

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/linear_regression.png'></a>
</center>
<p align="center" color="#64677F">
Linear regression made with ggplot2
</p>
<p color="#64677F">
Regression deals with the ability to predict a numerical value from
dependent variables. The metrics evaluate « the distance » between
observations and the predicted values. A perfect model got a metric
equals to 0.
</p>
<p color="#64677F">
In order to solve regression problems, three metrics are mainly used:
</p>
<p color="#64677F">

-   *Mean Square Error (MSE)* measures the average of the squared
    difference between the target value and the value predicted by the
    regression model.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/MSE.png'></a>
</center>
<p color="#64677F">

-   *Root Mean Square Error (RMSE)* is the squared root to MSE.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/RMSE.png'></a>
</center>
<p color="#64677F">

-   *Mean Absolute Error (MAE)* is similar to MSE but it measures the
    sum of the absolute value error.
    </p>

<center>
<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/MAE.png'></a>
</center>

## CONCLUSION

<p color="#64677F">
To conclude, a metric indicates the ability of a predictive model to
generalize reliable data in both classification and regression problems
– keeping in mind metric selections dependent on many settings such as
ML problematics, population repartition, study aims… Obviously, these
metrics may be retrieved in our AI-driven platform.
</p>
<p color="#64677F">
Here is a table below to facilitate your decision-making.
</p>

## SUMMARY

<table>
<thead>
<tr>
<th style="text-align:left;">
METRIC
</th>
<th style="text-align:left;">
PROBLEMATIC
</th>
<th style="text-align:left;">
ADVANTAGES
</th>
<th style="text-align:left;">
DRAWBACKS
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Accuracy
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Not optimal in imbalanced situation
</td>
</tr>
<tr>
<td style="text-align:left;">
Sensitivity
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Incomplete without Specificity
</td>
</tr>
<tr>
<td style="text-align:left;">
Specificity
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Incomplete without Sensitivity
</td>
</tr>
<tr>
<td style="text-align:left;">
PPV
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Incomplete with NPV
</td>
</tr>
<tr>
<td style="text-align:left;">
NPV
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Incomplete with PPV
</td>
</tr>
<tr>
<td style="text-align:left;">
No.info.rate
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Gives minimal performance
</td>
<td style="text-align:left;">
Accuracy is preferred
</td>
</tr>
<tr>
<td style="text-align:left;">
Balanced_accuracy
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Optimal in imbalanced situation
</td>
<td style="text-align:left;">
Accuracy in often preferred
</td>
</tr>
<tr>
<td style="text-align:left;">
F1-score
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Maximizes Precision and Recall values. Preferred in imbalanced situation
</td>
<td style="text-align:left;">
Complexe formula, Precision and Recall are often good enough
</td>
</tr>
<tr>
<td style="text-align:left;">
AUC
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Simple to use
</td>
<td style="text-align:left;">
Reserved to binary Classification
</td>
</tr>
<tr>
<td style="text-align:left;">
Log loss
</td>
<td style="text-align:left;">
Classification
</td>
<td style="text-align:left;">
Based on probabilities
</td>
<td style="text-align:left;">
Less intuitive
</td>
</tr>
<tr>
<td style="text-align:left;">
MSE
</td>
<td style="text-align:left;">
Regression
</td>
<td style="text-align:left;">
Penalizes big prediction errors
</td>
<td style="text-align:left;">
Penalizes big prediction errors RMSE is preferred
</td>
</tr>
<tr>
<td style="text-align:left;">
RMSE
</td>
<td style="text-align:left;">
Regression
</td>
<td style="text-align:left;">
Easier to use than MSE
</td>
<td style="text-align:left;">
Penalizes big prediction errors
</td>
</tr>
<tr>
<td style="text-align:left;">
MAE
</td>
<td style="text-align:left;">
Regression
</td>
<td style="text-align:left;">
Treats all errors the same
</td>
<td style="text-align:left;">
Treats all errors the same
</td>
</tr>
</tbody>
</table>
