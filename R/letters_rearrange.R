letters_rearrange <- function(string, mode="a") {
  # Remove white spaces and digits from the input string
  string <- gsub("[[:space:]]", "", string)
  string <- gsub("[[:digit:]]", "", string)

  # Split the string into letters
  letters <- unlist(strsplit(string, ""))

  # Depending on the mode, sort letters alphabetically or randomly
  if (mode == "a") {
    rearranged_letters <- sort(letters)
  } else {
    rearranged_letters <- sample(letters)
  }

  # Convert letters into a string
  result <- paste(rearranged_letters, collapse = "")

  return(result)
}