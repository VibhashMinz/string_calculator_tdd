# String Calculator TDD Kata

A Dart implementation of the String Calculator Kata using full Test-Driven Development (TDD).

This kata is part of the Incubyte hiring process. The goal is to demonstrate software craftsmanship using the Red → Green → Refactor cycle.

## 🧪 TDD Approach

We begin by writing a failing test — even if the code doesn't compile yet.
This defines the API and behavior before any implementation.

✅ Red Phase:

- Write test: `returns 0 for empty string`
- Class and method do not exist yet.

✅ Green Phase:

- Created `StringCalculator` class and `add()` method.
- Test passes with hardcoded `return 0`.

✅ Red Phase:

- Added test: input "5" should return 5.

✅ Green Phase:

- Parsed input string using `int.parse`.
- Now handles empty or single number inputs.

✅ Red Phase:

- Added test: input "1,2" should return 3.

✅ Green Phase:

- Split input string by comma and summed all values.

✅ Red Phase:

- Added test to support newline `\n` as an additional delimiter.

✅ Green Phase:

- Used regex `[,\n]` to support both comma and newline delimiters.

✅ Red Phase:

- Added test for custom delimiter syntax using `//;\n1;2`

✅ Green Phase:

- Added support for custom delimiter defined by `//<delimiter>\n`.

✅ Red Phase:

- Added test to throw exception with all negative numbers listed.

✅ Green Phase:

- If input contains negative numbers, throw exception listing them all.
