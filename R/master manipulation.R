init_master <- function() {
  tibble(id = NA_integer_,
         data = list(),
         data_prep = list(),
         model = list(),
         eval = NA_real_)
}

add_master_row <- function() {
  new_id <- nrow(master) + 1
  master %<>% bind_rows(tibble(id = new_id))
  assign("master", master, envir = globalenv())
}

read_master <- function() {
  master <- readRDS("master.RDS")
  assign("master", master, envir = global_env())
}

save_master <- function() {
  saveRDS(master, "master.RDS")
}
