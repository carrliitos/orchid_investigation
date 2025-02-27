rmarkdown::render(
  here::here("notebooks", "main.Rmd"),
  output_format = "html_document",
  output_file = here::here("output", paste0(basename(getwd()), ".html")),
  envir = new.env()
)