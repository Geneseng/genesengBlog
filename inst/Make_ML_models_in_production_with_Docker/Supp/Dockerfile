FROM rocker/r-ver:4.1.0

# Dependencies
RUN apt-get update && apt-get install -y \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    xtail

# Install R packages
RUN R -q -e 'install.packages(c("shiny", "randomForest"))'

# Import classifier and app
COPY classifier.rds classifier.rds
COPY app.R app.R

EXPOSE 3838

CMD R -e 'shiny::runApp("app.R", display.mode = "normal", port = 3838, host = "0.0.0.0")'

# Run in shell
# Build the Docker image using: sudo docker build --no-cache -t demo .
# Run the container using: sudo docker run --rm -p 3838:3838 demo


