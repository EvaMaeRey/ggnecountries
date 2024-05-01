nc <- sf::st_read(system.file("shape/nc.shp", package="sf"))

library(tidyverse)
rnaturalearth::ne_countries(  
  scale = "medium", returnclass = "sf") |> 
  select(name, continent, geometry, iso_a3) |>
  rename(country_name = name,
         iso3c = iso_a3
         )  ->
ref_data


geo_reference_world_country <- ref_data |>
  dplyr::select(country_name, iso3c) |>
  sf2stat:::sf_df_prep_for_stat(id_col_name = "country_name")

usethis::use_data(geo_reference_world_country, overwrite = T)
