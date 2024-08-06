\name{words_rearrange}
\alias{words_rearrange}
\title{Words Rearrange}
\description{Rearrange words in a given sentence. Can be used for creating exercises with tasks like "Find mistakes in a word order" or "Create a sentence from words".}
\usage{
words_rearrange(string, mode = "aw")
}
\arguments{
\item{string}{An input sentence.}
\item{mode}{"aw" = alphabetical rearrangement with output as separate words (default),
"ac" = alphabetical rearrangement with output as a sentence,
"rw" = random rearrangement with output as separate words,
"rc" = random rearrangement with output as a sentence.}
}
\value{
A string of a sentence or of separate words.
}
\examples{
words_rearrange("We can swim")
words_rearrange("We can swim", "aw")
words_rearrange("We can swim", "ac")
words_rearrange("We can swim", "rw")
words_rearrange("We can swim", "rc")
}
