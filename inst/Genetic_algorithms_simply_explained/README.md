
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# Genetic algorithms simply explained

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/genetic_algorithm.jpg'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>
<p color="#64677F">
Mankind has been always influenced by the nature and this narrow
relationship allowed developing new stuffs. The concept of biomimetics
was born.
</p>
<p color="#64677F">
Biomimetics is the ability to create stuffs directly inspired by living
organisms or natural mechanisms. Nowadays, many modern innovations were
designed from biological systems. For instance, artificial neural
networks are developed to mimic biological neural networks that
constitute animal brains.
</p>
<p color="#64677F">
Genetic Algorithm (GA) is another huge innovation inspired by Charles
Darwin’s theory of natural evolution. GA got numerous applications for
problems which have no decent solutions like simulation, drug discovery
or biomarker selection.
</p>

## WORKFLOW

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/06/genetic_algorithm_workflow.png'></a>

<p align="center" color="#64677F">
Genetic algorithm workflow
</p>

## INITIALIZATION

<p color="#64677F">
To start with, a group of individuals is defined to solve a given
problematic. Each individual presents characteristics (or features),
called genes. Keep in mind that, by analogy, “individuals” means
“chromosomes” and “features” means “genes”.
</p>

## FITNESS ASSIGNMENT

<p color="#64677F">
Fitness function is a metric used to recreate the natural selection
process. After the initialization, individuals are evaluated using a
fitness function. An individual with a high score has more chances to
transmit its genes.
</p>
<p color="#64677F">
In practice, it seems very judicious to define a custom fitness function
to properly answer the problematic.
</p>

## SELECTION

<p color="#64677F">
Individuals are selected to transmit their genes and thus produce
“offspring”. As seen above, the chances to be selected are proportional
to the fitness score.
</p>

## CROSSOVER

<p color="#64677F">
Crossover (or Crossing-over) is a genetic phenomenon which occurs during
sexual reproduction (between prophase I and metaphase I of meiosis).
Chromosomes exchange genetic material between them and produce
recombinant chromosomes. This random process tends to increase diversity
of genomes.
</p>

## MUTATION

<p color="#64677F">
A mutation is an alteration of the genetic material causing benign or
fatal damages. Mutation may result from prolonged radiation exposure,
chemical contact or food ingestion. In our case, the mutation alters
chromosomes by changing a 0 to 1.
</p>

## SUMMARY

<p color="#64677F">
Selection, Crossover and Mutation happen randomly. There is no way to
guaranty that we’ll obtain better individual genomes with the next
generations. The process is repeated until fitness value converges to a
solution or when the maximum number of iterations is reached.
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
3: Until convergence, repeat the following:
</p>
<p color="#64677F">

-   A: Select individuals according to their fitness score
    </p>

<p color="#64677F">

-   B: Perform crossover
    </p>

<p color="#64677F">

-   C: Perform mutation
    </p>

<p color="#64677F">

-   D: Compute fitness score to a new generation
    </p>

## EXAMPLE

<p color="#64677F">
We defined a set of 4 bacteria noted A1 to A4. To simplify the problem,
we focused on 5 genes involved in their genomes. The genes were encoded
by binary integers 0 (missing) and 1 (present). The aim is to identify
the combination of genes with the highest pathogenicity score.
</p>
<p color="#64677F">
We defined a fitness score that evaluate the pathogenicity. The fitness
value is calculated as the number of genes present in the genome.
</p>
<p color="#64677F">
The following schema illustrates the purpose for one generation.
</p>

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/07/genetic_algorithm_pipeline-768x413.png'></a>

<p color="#64677F">
At the (hypothetical) convergence, we identified that the best
combination is obsviously \[1, 1, 1, 1, 1\].
</p>

## CONCLUSION

<p color="#64677F">
Hopefully you now have a better understanding of genetic algorithms and
how they work. GAs rely on Darwin’s natural selection and genetics in
order to solve problems with strong complexity. Keep in mind GAs are
very time-consuming. 
</p>
<p color="#64677F">
Although GAs were discovered in the twentieth century, they are still
used nowadays, especially in the artificial intelligence field and
widely used to feature selection. For instance, TOPT (a famous autoML
library) optimizes its Machine Learning models using genetic programming
</p>
