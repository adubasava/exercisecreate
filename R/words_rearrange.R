library("stringr")

words_rearrange <- function(sentence, mode="aw") {
  # Remove punctuation except apostrophes
  sentence <- gsub("[^[:alnum:][:space:]']", "", sentence)

  # Split the sentence into words
  words <- unlist(strsplit(sentence, split = " "))

  # Convert the first word to lower case, except "I"
  if (words[1] != "I") {
    words[1] <- str_to_lower(words[1])
  }

  # Depending on the mode, sort words alphabetically or randomly
  if (mode == "aw" | mode == "ac") {
    rearranged_words <- sort(words)
  } else {
    rearranged_words <- sample(words)
  }

  if (mode == "aw" | mode == "rw") {
    return(rearranged_words)
  } else {
    result <- paste(rearranged_words, collapse = " ")
  }

  return(result)
}