import gleeunit
import gleeunit/should
import palindrome

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn perform_palindrome_on_empty_test() {
  palindrome.is_it("")
  |> should.equal(False)
}

pub fn perform_palindrome_on_single_character_test() {
  palindrome.is_it("x")
  |> should.equal(True)
}

pub fn perform_palindrome_on_words_test() {
  palindrome.is_it("sample")
  |> should.equal(False)

  palindrome.is_it("radar")
  |> should.equal(True)

  palindrome.is_it("RacecAr")
  |> should.equal(True)
}

pub fn perform_palindrome_on_phrases_test() {
  palindrome.is_it("a racecar a")
  |> should.equal(True)
}

pub fn perform_palindrome_on_sentences_test() {
  palindrome.is_it("a man, a plan, a canal - Panama")
  |> should.equal(True)

  palindrome.is_it("20/02/2002")
  |> should.equal(True)

  palindrome.is_it("Was it a car or a cat I saw?")
  |> should.equal(True)
}
