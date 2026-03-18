# Data wrangling with dplyr
library(tidyverse)

interviews <- read_csv("data-raw/SAfI_clean.csv",
         na = "NULL",
         col_types = cols(
           key_ID = col_integer(),
           no_membrs = col_integer(),
           years_liv = col_integer()
         ))
read_csv("data-raw/SAFI_clean.csv", na = "NULL")

interviews |>
  select(village, no_membrs:rooms) |>
  filter(rooms > 1, rooms < 5, village == "Chirodzo") |>
  select(!village)


interviews_Chirodzo |>
  mutate(people_per_room = no_membrs / rooms)
summary(Chirodzo)


# subset data -------------------------------------------------------------
interviews |> # cmd/ctrl + shift + M ||
  select(village, no_membrs, years_liv)

interviews |> 
  select(villlage:live_count)

interviews|>
  select(!key_ID, village, no_membrs:rooms) |>
  filter(rooms > 1, village == "God") |>
         mutate(people_per_room = no_membrs / rooms)
interview |>
  group_by(village, respondent_wall_type) |>
  rename(no_membrs = no_membrs) |>
  summaerise (avg_per_room = mean(no_membrs / rooms),
             count - n(), 
        
             



