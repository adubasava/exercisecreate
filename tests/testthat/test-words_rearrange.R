describe("words_rearrange()", {
  it("can rearrange words in the given sentence alphabetically returning separate words", {
    expect_equal(words_rearrange("We can swim"), c("can", "swim", "we"))
  })
  it("can rearrange words in the given sentence alphabetically returning a sentence", {
    expect_equal(words_rearrange("We can swim", "ac"), "can swim we")
  })
  # for random output check the correct length and type
  it("can rearrange letters in the given sentence randomly returning separate words", {
    expect_length(words_rearrange("We can swim", "rw"), 3)
    expect_equal(class(words_rearrange("We can swim", "rw")), "character")
  })
  it("can rearrange letters in the given sentence randomly returning a sentence", {
    expect_equal(nchar(words_rearrange("We can swim", "rc")), 11)
    expect_equal(class(words_rearrange("We can swim", "rc")), "character")
  })
  it("removes punctuation except for apostrophy", {
    expect_equal(words_rearrange("You can, he can, we can't.?!", "ac"), "can can can't he we you")
  })
})

