#' Knit a Geneseng article
#'
#' @param name name of the file, see `genesengBlog::available_article()`.
#' 
#' @import knitr
#' 
#' @examples 
#' 
#'
#' @export
geneseng_read_blog <- function(name){
  
  path <- system.file(name, package = "genesengBlog")
  #rmarkdown::render(file.path(path, "README.Rmd"))
  #knit(file.path(path, "README.Rmd"))
  
}
