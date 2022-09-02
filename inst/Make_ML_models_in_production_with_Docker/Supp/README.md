
<!-- README.md is generated from README.Rmd. Please edit that file -->

<br>

<p align="center" color="#64677F">
WROTE BY THE GENESENG TEAM
</p>

# Make ML models in production with Docker \[Supplementary data\]

<a href=#><img src='https://geneseng.com/wp-content/uploads/2022/08/container.jpg'></a>

<p align="center" color="#64677F">
Source from Unsplash
</p>

## BUILDING A SIMPLE ML MODEL

Build the classifier : `ML_model.R`

## CREATE A SHINY APP

Run the shiny app `app.R`

### DEPLOYMENT USING DOCKER

-   Build the Docker image using:
    `sudo docker build --no-cache -t demo .`
-   Run the container using: `sudo docker run --rm -p 3838:3838 demo`

*Configuration: Ubuntu 20.4 with R.4.1.0*
