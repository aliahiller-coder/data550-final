FROM rocker/tidyverse:4.5.1

RUN apt-get update && apt-get install -y pandoc 

#creating project directory and setting it as working directory
RUN mkdir /report
WORKDIR /report

#creating project directory subdirectories
RUN mkdir CleanData
RUN mkdir code
RUN mkdir output

#copying local repo contents to docker image
COPY CleanData CleanData
COPY code code
COPY FinalReport_Hiller.Rmd .
COPY Makefile .
COPY .Rprofile .
COPY renv.lock .

#package control in image
RUN mkdir -p renv
COPY renv/activate.R renv
COPY renv/settings.json renv

RUN Rscript -e "renv::restore(prompt = FALSE)"

#set container entry point to automatically build the final report
CMD make FinalReport_Hiller.html