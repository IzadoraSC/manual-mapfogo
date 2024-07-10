get_templates_packages <- function(path, pacote = "pagedown", template = "thesis") {
  path_resources <- system.file("resources", package = pacote)
  files_resources <-
    fs::dir_ls(path_resources, recurse = TRUE, regexp = template)
  fs::dir_create(path)
  path_glue <- glue::glue("{path}{fs::path_file(files_resources)}")
  fs::file_copy(files_resources, path_glue)
}


get_templates_packages("template/", "pagedreport", "windmill")
