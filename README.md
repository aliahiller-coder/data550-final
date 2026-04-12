# Alia Hiller's DATA550 Final Report

## Project Description
This project explores hours of sleep and vitamin D levels and if there is a \
relationship between the two.

- `CleanData/` contains the csv file for analysis.
- `code/` contains all code for the final report.
  -`code/00_CleanData.R` produces the data object for analysis.
    - clean data output should be saved to `output/`
	- `code/01_Table1.R` produces Table 1.
		- table 1 output should be saved to `output/`
	- `code/02_Figure1.R` produces the scatter plot
		- scatter plot should be saved to `output/`
	- `code/03_RenderReport.R` renders the RMardown report.
	  - html report should be saved in the main project directory.
	- `FinalReport_Hiller.Rmd` reads in output from `output/` and creates the report


## Package Management
To sync your packages with the ones used in this project, run `make install` from the command line.