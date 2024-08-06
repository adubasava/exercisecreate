describe("letters_rearrange()", {
  it("can rearrange letters in the given word alphabetically", {
    expect_equal(letters_rearrange("letters"), "eelrstt")
  })
  # for random output check the correct length and type
  it("can rearrange letters in the given word randomly", {
    expect_equal(nchar(letters_rearrange("letters")), 7)
    expect_equal(class(letters_rearrange("letters")), "character")
  })
  it("removes whitespaces and digits from the input string", {
    expect_equal(letters_rearrange("  l ette rs "), "eelrstt")
    expect_equal(letters_rearrange("12letter55s0"), "eelrstt")
  })
})
