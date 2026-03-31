#build final report
FinalReport_Hiller.Rmd: code/03_RenderReport.R FinalReport_Hiller.Rmd \
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