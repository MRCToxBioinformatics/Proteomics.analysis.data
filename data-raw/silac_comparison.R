library(dplyr)
# files from https://github.com/CambridgeCentreForProteomics/infSILAC/tree/master/raw/exp_2
silac_pep_infiles <- Sys.glob(here::here('data-raw/OOPS*_PeptideGroups.txt'))
silac_psm_infiles <- Sys.glob(here::here('data-raw/OOPS*_PSMs.txt'))

pep_data <- lapply(silac_pep_infiles, read.delim)
psm_data <- lapply(silac_psm_infiles, read.delim)

all_psm_oops_1 <- psm_data[[1]]
all_psm_oops_2 <- psm_data[[2]]
all_psm_oops_3 <- psm_data[[3]]
all_psm_oops_4 <- psm_data[[4]]
all_pep_oops_1 <- pep_data[[1]]
all_pep_oops_2 <- pep_data[[2]]
all_pep_oops_3 <- pep_data[[3]]
all_pep_oops_4 <- pep_data[[4]]

usethis::use_data(all_psm_oops_1, overwrite=TRUE)
usethis::use_data(all_psm_oops_2, overwrite=TRUE)
usethis::use_data(all_psm_oops_3, overwrite=TRUE)
usethis::use_data(all_psm_oops_4, overwrite=TRUE)
usethis::use_data(all_pep_oops_1, overwrite=TRUE)
usethis::use_data(all_pep_oops_2, overwrite=TRUE)
usethis::use_data(all_pep_oops_3, overwrite=TRUE)
usethis::use_data(all_pep_oops_4, overwrite=TRUE)

