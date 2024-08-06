\name{letters_rearrange}
\alias{letters_rearrange}
\title{Letters Rearrange}
\description{Rearrange letters in a given word. Can be used for creating exercises with a task "Find/recognize a word given its letters".}
\usage{
letters_rearrange(string, mode = "a")
}
\arguments{
\item{string}{An input word in any language.}
\item{mode}{A mode for rearrangement: "a" = alphabetical (default), "r" = random.}
}
\value{
A string of letters.
}
\examples{
letters_rearrange("letters")
letters_rearrange("letters", "a")
letters_rearrange("letters", "r")
}
