# 1: Install blogdown from your RStudio console. 
# If you already have devtools installed like I did, 
# you can just use the second line below
if (!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("rstudio/blogdown")

# 2: Install Hugo using the blogdown package helper function
blogdown::install_hugo()

# 3: If you want a theme other than the default, 
# you can specify the theme at the same time as you call the new_site function
blogdown::new_site(theme = "jpescador/hugo-future-imperfect", theme_example = TRUE)

system("git submodule add -b master git@github.com:cristobalvargas/cristobalvargas.github.io.git public")
