if (!isGeneric("cumulate")) {
  setGeneric("cumulate", function(x, ...) standardGeneric("cumulate"))
}

.cumulate.scidbst = function (x, expression, dimension) {

  scidbst.obj = x
  scidb.obj = .toScidb(scidbst.obj)
  scidb.obj = scidb::cumulate(scidb.obj, expression, dimension)
  out = .scidbst_class(scidb.obj)
  out = .cpMetadata(scidbst.obj,out)

  return(out)
}

#' Cumulate function for scidbst objects
#'
#' This function wraps scidbs cumulate function in order to maintain the scidbst object with the dimension references.
#'
#' @aliases cumulate.scidbst

#' @param x scidbst object
#' @param expression any valid SciDB aggregate expression as a character string
#' @param dimension optional parameter, the dimension along which the cumulative sum or product will be calculates
#'
#' @return a scidbst object
#'
#' @examples
#' \dontrun{
#'  scidbconnect(...)
#'  chicago = scidbst("chicago_sts")
#'  cumsum.band1 = cumulate.scidbst(chicago,"sum(band1)","t")
#' }
#'
#' @note Please use scidb::cumulate, when you operate on pure scidb objects, since package 'scidb' does not export this function
#' as a S4 method.
#'
#' @seealso \link{scidb::cumulate}
#' @export
setMethod("cumulate", signature(x="scidbst"), .cumulate.scidbst)

