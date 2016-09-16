if (!isGeneric("dimensions")) {
  setGeneric("dimensions",function(obj){
    standardGeneric("dimensions")
  })
}

#' @importMethodsFrom sp dimensions
#' @export
setMethod("dimensions",signature(obj="scidbst"), function(obj) {
  .scidb = as(obj,"scidb")
  dims = scidb::dimensions(.scidb)
  return(dims)
})

#' @export
setMethod("dimensions",signature(obj="scidb"), function(obj) {
  scidb::dimensions(obj)
})


if (!isGeneric("scidb_attributes")) {
  setGeneric("scidb_attributes",function(x) {
    standardGeneric("scidb_attributes")
  })
}
#' @export
setMethod("scidb_attributes",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_attributes(.scidb))
})

#' @export
setMethod("scidb_attributes",signature(x="scidb"), scidb::scidb_attributes)


if (!isGeneric("scidb_coordinate_bounds")) {
  setGeneric("scidb_coordinate_bounds",function(x) {
    standardGeneric("scidb_coordinate_bounds")
  })
}

#' @export
setMethod("scidb_coordinate_bounds",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_coordinate_bounds(.scidb))
})

#' @export
setMethod("scidb_coordinate_bounds",signature(x="scidb"),scidb::scidb_coordinate_bounds)

if (!isGeneric("scidb_coordinate_start")) {
  setGeneric("scidb_coordinate_start",function(x) {
    standardGeneric("scidb_coordinate_start")
  })
}

#' @export
setMethod("scidb_coordinate_start",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_coordinate_start(.scidb))
})

#' @export
setMethod("scidb_coordinate_start",signature(x="scidb"), scidb::scidb_coordinate_start)

if (!isGeneric("scidb_coordinate_end")) {
  setGeneric("scidb_coordinate_end",function(x) {
    standardGeneric("scidb_coordinate_end")
  })
}

#' @export
setMethod("scidb_coordinate_end",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_coordinate_end(.scidb))
})

#' @export
setMethod("scidb_coordinate_end",signature(x="scidb"), scidb::scidb_coordinate_end)

if (!isGeneric("scidb_coordinate_overlap")) {
  setGeneric("scidb_coordinate_overlap",function(x) {
    standardGeneric("scidb_coordinate_overlap")
  })
}

#' @export
setMethod("scidb_coordinate_overlap",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_coordinate_overlap(.scidb))
})

#' @export
setMethod("scidb_coordinate_overlap",signature(x="scidb"),scidb::scidb_coordinate_overlap)

if (!isGeneric("scidb_coordinate_chunksize")) {
  setGeneric("scidb_coordinate_chunksize",function(x) {
    standardGeneric("scidb_coordinate_chunksize")
  })
}

#' @export
setMethod("scidb_coordinate_chunksize",signature(x="scidbst"), function(x) {
  .scidb = as(x,"scidb")
  return(scidb::scidb_coordinate_chunksize(.scidb))
})

#' @export
setMethod("scidb_coordinate_chunksize",signature(x="scidb"),scidb::scidb_coordinate_chunksize)