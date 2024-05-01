geom_country <- stat_country
geom_country_label <- function(...){stat_country(geom = "text",...)}
stamp_country <- function(...){
  stat_country(stamp = T, 
              data = mtcars,  # what if this is . %>% slice(1) to avoid the complaining
              aes(fill = NULL, color = NULL, label = NULL, 
                  iso3c = NULL, country_name = NULL), 
              ...)}
stamp_country_label <- function(...){
  stat_country(stamp = T, 
              geom = "text", 
              data = mtcars, 
              aes(fill = NULL, color = NULL,
                  iso3c = NULL, country_name = NULL), 
              ...)}
