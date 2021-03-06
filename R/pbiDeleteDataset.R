#' Delete a dataset.
#' @description Remove the dataset entirely, not just truncate the rows of a table.
#' @param guid A character string of a guid for a single dataset.
#' @return cat
#' @examples
#' \dontrun{pbiDeleteDataset(id = "as8sdfasdfjkha")}

pbiDeleteDataset <- function(guid){

  # Perform the call.
  l = pbiQueryBuilder(method = "DELETE", endpoint = "datasets", guid = guid)

  # Successful responses don't have content and have the type of environment.
  # This requires a two-tiered IF statement for error handling.
  if(!is.raw(l)) {

  if(exists("error", where = l)) {
    stop(paste(guid, "produced the error message:", l$error$message, "- please investigate further."))
    return(NULL)
  }}

  # Print message to user.
  cat(paste("The dataset with the id of", guid, "has been deleted."))

}
