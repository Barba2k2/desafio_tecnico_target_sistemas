# CLAUDE.md - AI Assistant Guide

This document provides guidance for AI assistants working with this codebase.

## Project Overview

This is a **Dart command-line application** containing solutions to the Target Sistemas technical challenge ("Desafio Tecnico Target Sistemas"). The project implements algorithmic solutions for programming questions commonly used in technical interviews.

## Technology Stack

- **Language**: Dart
- **SDK Version**: ^3.4.3
- **Package Manager**: Dart Pub
- **Linting**: package:lints/recommended.yaml
- **Testing**: package:test

## Project Structure

```
desafio_tecnico_target_sistemas/
├── bin/                    # Executable entry points
│   ├── questao_1.dart      # Fibonacci sequence checker
│   ├── questao_2.dart      # Letter 'a' counter in strings
│   └── questao_3.dart      # Sum calculation loop
├── lib/
│   └── questions.dart      # Shared library code
├── test/
│   └── questions_test.dart # Unit tests
├── pubspec.yaml            # Package configuration
├── pubspec.lock            # Dependency lock file
├── analysis_options.yaml   # Dart analyzer configuration
└── README.md               # Project documentation
```

## Challenge Solutions

### Question 1 (`bin/questao_1.dart`)
- **Purpose**: Check if a number belongs to the Fibonacci sequence
- **Algorithm**: Iterative Fibonacci generator with comparison
- **Input**: User-provided integer via stdin
- **Output**: Message indicating if number is in Fibonacci sequence

### Question 2 (`bin/questao_2.dart`)
- **Purpose**: Count occurrences of letter 'a' (case-insensitive) in a string
- **Algorithm**: Character iteration with lowercase comparison
- **Input**: User-provided string via stdin
- **Output**: Count of 'a' occurrences

### Question 3 (`bin/questao_3.dart`)
- **Purpose**: Calculate the final value of SOMA variable from a given loop
- **Algorithm**: While loop summing values from 2 to 12
- **Expected Result**: SOMA = 77

## Development Commands

### Install Dependencies
```bash
dart pub get
```

### Run Individual Questions
```bash
dart bin/questao_1.dart  # Fibonacci checker
dart bin/questao_2.dart  # Letter counter
dart bin/questao_3.dart  # Sum calculation
```

### Run Tests
```bash
dart test
```

### Analyze Code (Linting)
```bash
dart analyze
```

### Format Code
```bash
dart format .
```

## Code Conventions

### Naming
- **Files**: snake_case (e.g., `questao_1.dart`)
- **Functions**: camelCase (e.g., `isFibonacci`, `countLetterA`)
- **Variables**: camelCase
- **Constants**: camelCase or SCREAMING_SNAKE_CASE for top-level

### Code Style
- Follow Dart's official style guide
- Use recommended lints from `package:lints`
- Functions should be focused and single-purpose
- User interaction via `stdin`/`stdout` for CLI applications

### Documentation
- Comments should explain "why", not "what"
- Public APIs should have documentation comments
- Keep README.md updated with usage instructions

## Security Guidelines

This project follows secure coding practices aligned with OWASP recommendations.

### Input Validation (OWASP A03)
- **Never use null assertion (`!`)** on user input without validation
- Use `int.tryParse()` instead of `int.parse()` for safe number parsing
- Validate and sanitize all stdin input before processing
- Handle EOF and null input gracefully

### Defensive Programming Patterns
```dart
// Safe input reading pattern
String? readInput() {
  final input = stdin.readLineSync();
  if (input == null || input.isEmpty) return null;
  return input;
}

// Safe integer parsing pattern
int? parseInput(String? input) {
  if (input == null || input.trim().isEmpty) return null;
  return int.tryParse(input.trim());
}
```

### Error Handling
- Use `stderr` for error messages (not `stdout`)
- Return appropriate exit codes (`exit(1)` for errors)
- Provide clear, user-friendly error messages
- Never expose stack traces to end users

### Boundary Validation
- Validate numeric ranges (e.g., negative numbers for Fibonacci)
- Consider integer overflow for large calculations
- Set reasonable limits for string input lengths

### Code Review Security Checklist
- [ ] No null assertion (`!`) on external input
- [ ] Input validation before processing
- [ ] Error messages written to stderr
- [ ] Appropriate exit codes for error conditions
- [ ] Boundary conditions handled

## Testing Guidelines

- Tests are located in the `test/` directory
- Use `package:test` for writing unit tests
- Test files should end with `_test.dart`
- Run `dart test` before committing changes

## Common Tasks for AI Assistants

### Adding a New Question
1. Create new file in `bin/` directory (e.g., `questao_4.dart`)
2. Implement the solution with a `main()` function
3. Add relevant tests in `test/`
4. Update README.md if necessary

### Modifying Existing Solutions
1. Read the existing implementation first
2. Maintain existing code style
3. Ensure backward compatibility
4. Run tests after changes

### Code Review Checklist
- [ ] Code follows Dart conventions
- [ ] No analyzer warnings (`dart analyze`)
- [ ] Tests pass (`dart test`)
- [ ] Code is properly formatted (`dart format`)
- [ ] No hardcoded values where configuration is appropriate
- [ ] Input validation implemented (see Security Guidelines)

## Important Notes

- This is a **Portuguese-language project** (Brazilian Portuguese)
- User prompts and output messages are in Portuguese
- Technical terms may be in English following Dart conventions
- Interactive programs require stdin input when run directly

## Dependencies

### Runtime Dependencies
- None (uses only Dart core libraries)

### Dev Dependencies
- `lints: ^3.0.0` - Recommended Dart lints
- `test: ^1.24.0` - Testing framework
