#################
# CBS R package #
#################
setwd('C:/Users/asarq/Documents/GitHub/CBSpkg')

library(devtools)
packageVersion("devtools")

usethis::use_build_ignore('draft') # add this word to gitignore

install_github # i will probably use this for installing in the future

library(usethis)
create_package("C:/Users/asarq/Documents/GitHub/CBSpkg")
