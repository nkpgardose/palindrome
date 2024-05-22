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
}
