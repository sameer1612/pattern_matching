# Pattern Matching - Solved

> There is a separate `raw` branch without solutions.

## Notice

This project is a companion to the "Thinking Elixir - PatternMatching" course,
published by Mark Ericksen. Copyrights apply to this code. It may not be used to
create training material, courses, books, articles, and the like. Contact me if
you are in doubt. I make no guarantees that this code is fit for any purpose.

Visit https://thinkingelixir.com/available-courses/pattern-matching/ for course
information.

## Introduction

Pattern matching is a fundamental and powerful part of Elixir.

Pattern matching is even used as a replacement for traditional `if` conditionals. It really can change the way you write code! And it's for the better!

## Instructions

This is a TDD (Test Driven Development) project. Clone the project locally and complete the code to make the tests pass.

Here's a natural progression I recommend.

- `mix test test/maps_test.exs` - Map matching
- `mix test test/tuples_test.exs` - Tuple matching
- `mix test test/lists_test.exs` - List matching
- `mix test test/structs_test.exs` - Struct matching
- `mix test test/binaries_test.exs` - Binary and string matching
- `mix test test/guard_clauses_test.exs` - Guard clauses

Add a code line number while focusing on a specific test. `:10`

```
mix test test/maps_test.exs:10
```
