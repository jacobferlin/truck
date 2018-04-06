#' @export
get_data <- function(id) {
  master[id, "data"][[1]][[1]]
}

#' @export
get_data_prep <- function(id) {
  master[id, "data_prep"][[1]][[1]]
}

#' @export
get_model <- function(id) {
  master[id, "model"][[1]][[1]]
}

#' @export
get_eval <- function(id) {
  master[id, "eval"][[1]][[1]]
}

#' @export
set_data <- function(data, id) {
  master[id, "data"][[1]][[1]] <- data
  assign("master", master, envir = globalenv())
}

#' @export
set_data_prep <- function(data_prep, id) {
  master[id, "data_prep"][[1]][[1]] <- data_prep
  assign("master", master, envir = globalenv())
}

#' @export
set_model <- function(model, id) {
  master[id, "model"][[1]][[1]] <- model
  assign("master", master, envir = globalenv())
}

#' @export
set_eval <- function(eval, id) {
  master[id, "eval"] <- eval
  assign("master", master, envir = globalenv())
}
