##########################################################
##                                                      ##
## This file install necessary packages for the project ##
##                                                      ##
##########################################################



## List required packages from CRAN
## `tidyverse` - Packages for data manipulation and plotting
## `here` - Easy file referencing
## `data.table` - Fast data import
cran_packages <- c("tidyverse",
                   "here",
                   "data.table")
if (length(missing_pkgs <- setdiff(cran_packages, rownames(installed.packages()))) > 0) {
  message("Installing missing package(s): ", 
          paste(missing_pkgs, collapse = ", "))
  install.packages(missing_pkgs, repos = "https://cloud.r-project.org")
}
rm(cran_packages, missing_pkgs)



## List required packages from Bioconductor
## Note: Uncomment the following lines to install packages. 
## Note: Install `BiocManager` from CRAN before running these lines.
# bioc_packages <- c()
# if (length(missing_pkgs <- setdiff(bioc_packages, rownames(installed.packages()))) > 0) {
#   message("Installing missing package(s): ", 
#           paste(missing_pkgs, collapse = ", "))
#   BiocManager::install(missing_pkgs)
# }
# rm(bioc_packages, missing_pkgs)
