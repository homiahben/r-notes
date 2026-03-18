#importing Data
library(tidyverse)
#download Data

download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data-raw/SAFI_clean.csv", mode = "wb"
)

# 1. Read the path to the data
interviews <- read_csv("data-raw/SAFI_clean.csv", 
         na = "NULL")  

# 2. Potentially identify missing values

# 3. Change parsing of data types
# Check the parsing data
spec(interviews) 

read_csv("data-raw/SAfI_clean.csv",
         na = "NULL"
         col_types = cols(
           key_ID = col_integer(),
           no_membrs = col_integer(),
           years_liv = col_integer()
         ))

interviews <- 63
# readr example
read_csv("https://jessesadler.github.io/vt5444s26/datasets/readr-example.csv") 

read.csv("https://jessesadler.github.io/ vt5444s26/datasets/readr-example.csv")

# Write out data
write_csv(interviews, "data/interviews.cvs")

# REadn it back in
interviews_new <- read_csv("data/interviews.csv")
interviews_new

# rm(interviews_new) #remove an oopsie
