# CODE FOR CLEANUP - AKASH NEGI

library(readr)
dirty_data <- read_csv("~/Downloads/dirty_data.csv")  # SPECIFY LOCATION HERE

#install.packages("stringr")
library(stringr)

# REMOVING ALL SPECIAL CHARACTERS USIGN REGEX
dirty_data$Street = str_replace_all(dirty_data$Street, "[^a-zA-Z0-9]", " ")
dirty_data$`Street 2` = str_replace_all(dirty_data$`Street 2`, "[^a-zA-Z0-9]", " ")

# REMOVING ALL PUNCTUATIONS
dirty_data$Street = str_replace_all(dirty_data$Street, "[[:punct:]]", " ")
dirty_data$`Street 2` = str_replace_all(dirty_data$`Street 2`, "[[:punct:]]", " ")

# REMOVING ALL WHITESPACES
dirty_data$Street = trimws(dirty_data$Street, c("both"))
dirty_data$`Street 2` = trimws(dirty_data$`Street 2`, c("both"))

# CAPITALIZING EACH FIRST LETTER
library(tools)
dirty_data$Street = tolower(dirty_data$Street)
dirty_data$`Street 2` = tolower(dirty_data$`Street 2`)
dirty_data$Street = toTitleCase(dirty_data$Street)
dirty_data$`Street 2` = toTitleCase(dirty_data$`Street 2`)

# REPLACING ALL "Street" with "Str."
dirty_data$Street = str_replace_all(dirty_data$Street, "Street", "Str.")
dirty_data$Street = str_replace_all(dirty_data$Street, "Road", "Rd.")
dirty_data$Street = str_replace_all(dirty_data$Street, "Avenue", "Ave.")

dirty_data$`Street 2` = str_replace_all(dirty_data$`Street 2`, "Street", "Str.")
dirty_data$`Street 2` = str_replace_all(dirty_data$`Street 2`, "Road", "Rd.")
dirty_data$`Street 2` = str_replace_all(dirty_data$`Street 2`, "Avenue", "Ave.")

################################################################################
# CODE FOR CLEANUP - BHAWANA RIJHWANI




################################################################################
# CODE FOR CLEANUP - VIJAYANAVEEN MURRAGUNDLA




################################################################################
# CODE FOR CLEANUP - APOORVA SURAT

