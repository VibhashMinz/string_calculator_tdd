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
