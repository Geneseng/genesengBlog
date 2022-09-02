---
output: github_document
always_allow_html: true
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



<br>

<p align="center" color="#64677F"> WROTE BY THE GENESENG TEAM </p>

# Agnostic method for discovering new biomarkers

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/microscope_research.jpg'></a>

<p align="center" color="#64677F"> Source from Unsplash </p>

## INTRODUCTION

<p color="#64677F"> As usual, you went to your favorite super market to buy some food.  You passed next to the fruit and vegetable section when suddenly a question emerged in your mind. “After all this time, how can I made the difference between a lemon, a banana or an orange?” </p>

<p color="#64677F"> As a scientist, you’re listed as many as possible characteristics of each fruits in an array. You evaluated the best objective features and then elaborated a robust model able to perfectly distinguish the fruits. To finish, you realized that both color and shape features are mandatory to distinguish the three fruits. </p>

<p color="#64677F"> Now you’re familiar with this way of thinking, keep in mind that in medical context, the process is the same. </p>

## DEFINITION

<p color="#64677F"> In medical applications, features can be assimilated to *biomarkers*. </p>

<p color="#64677F"> According to the Food and Drug Administration (FDA), “a biomarker or biological marker refers to a defined characteristic that is measured as an indicator of normal biological processes, pathogenic processes, responses to an exposure or intervention, including therapeutic interventions.” </p>

<p color="#64677F"> For instance: </p>

<p color="#64677F"> * The shape of red blood cells is a biomarker of sickle cell disease.  </p>

<p color="#64677F"> * Circulating DNA found in blood or plasma samples may indicated the presence of tumor.  </p>

<p color="#64677F"> * The presence of an extra chromosome 21 indicates a trisomy 21.  </p>

<p color="#64677F"> * ...  </p>

<p color="#64677F"> Nowadays, data is the cornerstone of any science projects. Naturally, the discovery of brand new biomarkers relies on the same resource.  </p>

<p color="#64677F"> To illustrate that, let’s go back to work with the previous fruit dataset.  </p>

## STEP 1: BUILDING THE DATASET

<table>
 <thead>
  <tr>
   <th style="text-align:left;"> fruit </th>
   <th style="text-align:left;"> color </th>
   <th style="text-align:left;"> shape </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> lemmon </td>
   <td style="text-align:left;"> yellow </td>
   <td style="text-align:left;"> circle </td>
  </tr>
  <tr>
   <td style="text-align:left;"> orange </td>
   <td style="text-align:left;"> orange </td>
   <td style="text-align:left;"> circle </td>
  </tr>
  <tr>
   <td style="text-align:left;"> banana </td>
   <td style="text-align:left;"> yellow </td>
   <td style="text-align:left;"> not circle </td>
  </tr>
</tbody>
</table>

<p align="center" color="#64677F"> The fruit dataset </p>

<p color="#64677F"> In order to simplify the problem, we’re limited the size of the dataset. The current dataset is composed of three features including the target one. The feature contained three classes including the number of observations such as a lemon, a banana and an orange. </p>

<p color="#64677F"> Keep in mind that bad inputs make often bad outputs. In other words, building a robust dataset is essential to identify relevant features. </p>


## STEP 2: SELECT VARIABLES

<p color="#64677F"> Feature selection (or variable selection) brings a set of techniques allowing to identify best contributing features. </p>

<p color="#64677F"> In a first time, we simplified the problem using only one feature. If we had taken the color one, we wouldn’t have distinguished a lemon than a banana. Besides, same thing happen to the shape feature, we were not able to distinguish a lemon than an orange. </p>

<p color="#64677F"> In a second time, we decided to build a more complex model including two features. This strategy worked perfectly. Indeed, using both color and shape features, we were able to discriminate the three fruits. </p>


## STEP 3: ELABORATE THE BEST MODEL

<p color="#64677F"> Next, an algorithm ran on data to create a “predictive” model explaining the target feature. </p>

<p color="#64677F"> <ins>ALGORITHM</ins> </p>

<p color="#64677F"> if(fruit.color = “yellow” AND fruit.shape = “circle”){ </p>

<p color="#64677F"> print(“This is a lemon”) </p>

<p color="#64677F"> } else if(fruit.color = “orange” AND fruit.shape = “circle”){ </p>

<p color="#64677F"> print(“This is an orange”)</p>

<p color="#64677F"> } else if(fruit.color = “yellow” AND fruit.shape = “not circle”){ </p>

<p color="#64677F"> print(“This is an banana”)</p>

<p color="#64677F"> In this case, we don’t need to use artificial intelligence (AI) model to solve the problem. The current algorithm is sufficient to explain the target feature. AI is reserved to more complex problems like drug discovery or cancer prognosis. </p>

## CONCLUSION

<p color="#64677F"> Through a minimalist example, we mentioned the three key steps to discover brand new biomarkers including the wrangling of massive and robust datasets then the setting up of numerous strategies to identify the best feature(s) and at last the design of the most efficient model. </p>

<p color="#64677F"> At Geneseng, we built an AI platform dedicated to biomarker discovery. We provide agnostic pipelines to prototype quickly any kind of biomarkers. Our aim is to accelerate the medical research in order to provide a medical diagnostic to people who don’t have one. </p>

