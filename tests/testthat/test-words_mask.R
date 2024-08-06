describe("words_mask()", {
  it("can remove a word from the sentence", {
    expect_equal(words_mask("I can swim.", "can"), "I ... swim. (can)")
    expect_equal(words_mask("I can swim.", "swim"), "I can .... (swim)")
  })
  it("warns if there is no input word in an input sentence", {
    expect_warning(words_mask("I can swim.", "ca"))
  })
})
