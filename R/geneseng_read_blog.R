#' Knit a Geneseng article
#'
#' @param name name of the file, see `genesengBlog::available_article()`.
#' 
#' @import knitr
#' 
#'
#' @export
geneseng_read_blog <- function(name){
  
  path <- system.file(name, package = "genesengBlog")
  
  knit(
    input = file.path(path, "README.Rmd"), 
    output = file.path(path, paste0(name, ".html"))
  )
  
}

