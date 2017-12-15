pkgName <- roxygen2:::read.description("../DESCRIPTION")$Package

# ------------------------------------------------------------
# Source additional R scripts to preprocess assay data

library(rmarkdown)
render('processIMRASDec2017.Rmd', envir=topenv(), output_dir='../inst/extdata/Logfiles', clean=FALSE)

objectsToKeep <- c('count_eset','tpm_eset')

# ------------------------------------------------------------
# Auto build roxygen documentation
# On first build, we generate boilerplate roxygen documentation using DataPackageR:::.autoDoc()
# User then manually edits the output file edit_and_rename_to_'documentation.R'.R and renames it to documentation.R.
# The documentation.R file is then used for all subsequent builds.
if(file.exists("documentation.R")){
  sys.source('documentation.R', envir=topenv())
} else {
  DataPackageR:::.autoDoc(pkgName, objectsToKeep, topenv())
}

# keep only objects labeled for retention
DataPackageR:::keepDataObjects(objectsToKeep)  

