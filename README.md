# Test Automation Demo (Flutter)

This project demonstrates:
- Unit tests (pure Dart)
- Widget tests (UI in isolation)
- Mocking with `mocktail`
- Golden tests with `golden_toolkit`
- Integration tests with `integration_test`
- GitHub Actions CI workflow

## Quick Start
```bash
flutter pub get
flutter test
# Start an emulator or connect a device, then:
flutter test integration_test
```

## Useful Commands
```bash
# Update golden baselines
flutter test --update-goldens

# Coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html  # macOS
```

## Project Layout
- `lib/` app code
- `test/` unit, widget, and golden tests
- `integration_test/` end-to-end tests
- `.github/workflows/` CI workflow