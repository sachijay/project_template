#############################################################
##                                                         ##
## This file reads all data files required for the project ##
##                                                         ##
#############################################################



## Source R scripts ####

source(here::here("src/00c_main.r"))



## Read data ####

## Define the path of the data file
data_file_path <- here::here("data/")

## Checks if the file is readable and reads; if not throws an error
if(file.access(data_file_path, mode = 4) == 0){
  raw_data <- data.table::fread(input = data_file_path)
} else {
  stop("File not readable")
}

## Remove unwanted variables
rm(data_file_path)
