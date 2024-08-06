\name{words_mask}
\alias{words_mask}
\title{Words Mask}
\description{Mask the target word with dots in a given sentence. Can be used for creating exercises with a task like "Insert/choose the word that fits the context/grammar."}
\usage{
words_mask(sentence, word)
}
\arguments{
\item{sentence}{An input sentence (string).}
\item{word}{An input word (string).}
}
\value{
A string containing the sentence with a masked target word, as well as the target in the parentheses.
}
\examples{
words_mask("We can swim", "can")
}