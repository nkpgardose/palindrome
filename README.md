# palindrome

[![Package Version](https://img.shields.io/hexpm/v/palindrome)](https://hex.pm/packages/palindrome)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/palindrome/)

> A simple Gleam module to check if a string is a palindrome.

```sh
gleam add palindrome
```
```gleam
import palindrome

pub fn main() {
	let result = "racecar"
	let is_result_palindrome = palindrome.is_it("racecar")
	io.debug(is_result_palindrome) // True
}
```

Further documentation can be found at <https://hexdocs.pm/palindrome>.

## Development

```sh
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
