#################
# CBS R package #
#################
setwd('C:/Users/asarq/Documents/GitHub/carbonseq')

library(devtools)
packageVersion("devtools")

usethis::use_build_ignore('draft') # add this word to gitignore

install_github # i will probably use this for installing in the future

library(usethis)
create_package("C:/Users/asarq/Documents/GitHub/carbonseq")

#Tweak a function definition.
#do this everytime you want to try functions after you've  modified them
load_all()
#Try out the change by running a small example or some tests.
devtools::check()

# all functions must have this before them to make them work
#' @export

#package::function is how you specify dependencies

# this adds all the functions with 'export' to the namespace
devtools::document()

# the styler package helps re-style the entire package or a single function
style_pgk()
style_file()

# when using some other package's functions on my function, be sure to use it like this
foo <- function(...) pkgB::blah(...)

