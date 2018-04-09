#' @export
init_master <- function() {
  master <- dplyr::tibble(id = NA_integer_,
                          data = list(),
                          data_prep = list(),
                          model = list(),
                          eval = NA_real_)
  assign("master", master, envir = globalenv())
}

#' @export
add_master_row <- function() {
  new_id <- nrow(master) + 1
  master <- dplyr::bind_rows(master,
                             dplyr::tibble(id = new_id))
  assign("master", master, envir = globalenv())
}

#' @export
read_master <- function() {
  master <- readRDS("master.RDS")
  assign("master", master, envir = globalenv())
}

#' @export
save_master <- function() {
  saveRDS(master, "master.RDS")
}
