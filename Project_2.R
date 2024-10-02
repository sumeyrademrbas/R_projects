
#---------------------- PROJECT 2 -------------------------------#

text_messages <- read.csv("C:\\Users\\psksu\\OneDrive\\Desktop\\sms_spam.csv")

#Data Cleaning

install.packages("stringr")

{

library(stringr)

#Removing numbers

text_messages$cleaned_text <- gsub("[0-9]", "", text_messages$text)

#Removing Special Characters

text_messages$cleaned_text <- gsub("[[:punct:]]", "", text_messages$cleaned_text)

text_messages$cleaned_text <- str_trim(gsub("\\s+", " ", text_messages$cleaned_text))

#Convert to lower case

text_messages$cleaned_text <- tolower(text_messages$cleaned_text)
}

#alltogether


text_messages$cleaned_text <- text_messages$text_column %>%
  gsub("[0-9]", "", .) %>%             # Remove numbers
  gsub("[[:punct:]]", "", .) %>%       # Remove punctuation/special characters
  gsub("\\s+", " ", .) %>%             # Remove multiple spaces
  str_trim(.) %>%                      # Trim leading/trailing whitespace
  tolower(.)                           # Convert to lowercase
