files <- dir(pattern = ".Rmd")
purrr::walk(files, rmarkdown::render)
