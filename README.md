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
* `Makefile` - Automates building the final report and manages outputs
* `renv/` - Syncs R packages
* `renv.lock` - R packages used in this project
* `FinalReport_Hiller.Rmd` - Final report


## Instructions to Build the Report

To build this report from the command line:

1. Navigate to the project's directory (`final`)
2. Run the `make` command. Under the hood, `make` is:
  * Loading and cleaning the data
  * Generating 


## Package Management
To sync your packages with the ones used in this project, run `make install` from the command line.