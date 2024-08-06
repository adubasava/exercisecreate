words_mask <- function(sentence, word) {

  # Split the cleaned sentence into words to further check if the word is in the sentence
  cleaned_sentence <- gsub("[^[:alnum:][:space:]']", "", sentence)
  words <- unlist(strsplit(cleaned_sentence, split = " "))

  if (word %in% words) {
    result <- gsub(word, "...", sentence, fixed = TRUE)
    paste(result, " (", word, ")", sep="")
  } else {
    warning("No such a word in a sentence\n")
  }
}