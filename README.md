# Sleep and Vitamin D

Alia Hiller

DATA550 Final Report | Spring 2026

## Context
This data is from the CDC’s 2017-2018 National Health and Nutrition Examination Surveys (NHANES), a nationally representative, cross-sectional survey of adults and children in the United States. This analysis aims to:

* Describe the characteristics of the study sample
* Examine the relationship between hours of sleep and vitamin D levels

## Repository Contents

* `CleanData/`- Contains the csv file for analysis.
* `code/` Scripts to clean data, create table 1, and figure 1
* `output/` - Generated .Rds and .png files
* `finalreport` - Holds the final html report
* `Makefile` - Automates building the final report and manages outputs
* `Dockerfile` - Builds the docker container
* `renv/` - Syncs R packages
* `renv.lock` - R packages used in this project
* `FinalReport_Hiller.Rmd` - Final report


## Instructions to Build the Report

To build this report from the command line:

1. Navigate to the project's directory (`final`)
2. Run the `make` command. Under the hood, `make` is:
  * Loading and cleaning the data `(code/00_CleanData.R --> output/clean_data.rds)`
  * Generating Table 1 `(code/01_Table1.R --> output/table1.rds)`
  * Generating Figure 1 `(code/02_Figure1.R --> output/figure1.png)`
  * Rendering the final report `(code/03_RenderReport.R --> finalreport/FinalReport_Hiller.html)`
3. The final .html report will generate!

*Note*: To remove contents of the `output/` directory, run `make clean` from the command line.


## Package Management
To sync your packages with the ones used in this project, run `make install` from the command line.

## Docker
To access the image on DockerHub: https://hub.docker.com/repository/docker/earth2alia/data550_final/general

* To build the image, type this in the command line `project_image`
* To automatically build the report in the container, type this in the command line `docker_report`