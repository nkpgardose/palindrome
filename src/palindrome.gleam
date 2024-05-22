import gleam/string

/// Perform a palindrome check.
/// Accept a text and function returns a boolean value.
/// True - if the text is a palindrome.
/// False - if the text is not a palindrome.
///
/// ## Example
///
/// ```gleam
/// > palindrome.is_it("racecar") # True
/// ```
pub fn is_it(text: String) -> Bool {
  let result = case text {
    "" -> False
    _ -> text == string.reverse(text)
  }
  result
}
