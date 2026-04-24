#REPORT ASSOCIATED RULES (run in docker container)
#build final report
finalreport/FinalReport_Hiller.html: code/03_RenderReport.R FinalReport_Hiller.Rmd \
  output/clean_data.rds output/table1.rds output/figure1.png
	Rscript code/03_RenderReport.R

#rule for making clean dataset
output/clean_data.rds: code/00_CleanData.R CleanData/nhanes_analysis.csv
	Rscript code/00_CleanData.R 

#rule for table one
output/table1.rds: code/01_Table1.R output/clean_data.rds
	Rscript code/01_Table1.R

#rule for figure one
output/figure1.png: code/02_Figure1.R output/clean_data.rds
	Rscript code/02_Figure1.R

#rule to clean project dir 
.PHONY:clean
clean:
	rm output/*

#rule to sync R packages with renv
.PHONY: install
install:
	Rscript -e 'renv::restore(prompt = FALSE)'

#DOCKER ASSOCIATED RULES (run on local machine)
PROJECTFILES = FinalReport_Hiller.Rmd code/00_CleanData.R code/01_Table1.R code/02_Figure1.R code/03_RenderReport.R Makefile
RENVFILES = renv.lock renv/activate.R renv/settings.json

#rule to build an image
project_image: Dockerfile $(PROJECTFILES) $(RENVFILES) 
	docker build -t data550_final .
	touch $@
	
#rule to automatically build report in container
.PHONY: docker_report
docker_report:
	docker run -v $$(pwd)/finalreport:/report/finalreport data550_final