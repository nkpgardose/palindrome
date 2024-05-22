import gleam/regex
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
  case text {
    "" -> False
    _ -> {
      let formatted_text = format_text(text)
      formatted_text == string.reverse(formatted_text)
    }
  }
}

/// Format the text variable, these are the following format:
/// 1. Convert the text to lowercase.
/// 2. Remove all spaces in the text.
/// 3. Remove all special characters in the text using gleam/regex's regex.split
/// 4. Join the text using gleam/string's join function.
///
/// Example:
/// text: "a car, a plan, a canal - Panama"
/// formatted_text: "acaraplanacanalpanama"
fn format_text(text: String) -> String {
  let assert Ok(regex_pattern) = regex.from_string("[^a-zA-Z0-9]")
  text
  |> string.lowercase
  |> string.replace(" ", "")
  |> regex.split(with: regex_pattern, content: _)
  |> string.join("")
}
