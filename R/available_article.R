#' Exhaustive list of available articles
#' 
#' @export
available_article <- function(){
  package_path <- system.file(package = "genesengBlog")
  article_path <- !(list.files(package_path) %in% c("DESCRIPTION", "help", "html", "INDEX", "LICENSE", "Meta", "NAMESPACE", "R"))
  articles <- list.files(package_path)[article_path]
  return(articles)
}
