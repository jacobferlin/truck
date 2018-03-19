# Returns col names (syms) that fulfill criteria of FUN, e.g. is.factor or is.character
col_names_with_criteria <- function(data, FUN) {
  cols_lgl <- lapply(data, FUN) %>% unlist()
  cols_str <- cols_lgl[which(cols_lgl)] %>% names()
  rlang::syms(cols_str)
}
