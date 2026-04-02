# Contributing to SwiftUIPlus

Thanks for contributing to `SwiftUIPlus`.

This package is intentionally small and focused. Contributions are most useful when they improve layout utilities, fix incorrect behavior, or make the package easier to adopt and maintain.

## What To Contribute

Good contributions include:

- bug fixes
- documentation improvements
- examples that clarify package usage
- new SwiftUI utilities that are small, reusable, and broadly useful
- API improvements that keep the package simple

Less useful contributions include:

- very app-specific components
- utilities with unclear behavior
- large abstractions that are difficult to maintain
- breaking changes without a strong reason

## Before You Start

Before opening a pull request:

1. Check whether the change fits the scope of the package.
2. Open an issue first for larger API changes or breaking changes.
3. Keep the implementation as small and focused as possible.

GitHub issue and pull request templates are included in this repository to keep reports and proposals consistent.

## Development Setup

Requirements:

- Xcode with Swift 6 toolchain support
- iOS 16+ or macOS 12+ SDKs

To work on the package locally:

1. Clone the repository.
2. Open the package in Xcode or use Swift Package Manager from the command line.
3. Build the package and verify your change compiles cleanly.

Example:

```bash
swift build
```

## Style Guidelines

Please follow the existing style in the repository:

- prefer small, composable SwiftUI APIs
- keep naming explicit and user-facing
- avoid adding dependencies unless there is a strong reason
- preserve platform support declared in `Package.swift`
- update documentation when adding or changing public behavior

When adding new APIs:

- make the use case clear
- keep configuration straightforward
- prefer behavior that is easy to reason about from the call site

## Pull Requests

Pull requests should:

- describe the problem being solved
- explain the approach briefly
- stay narrowly scoped
- include documentation updates when needed

If your pull request changes behavior, include:

- a usage example, screenshot, or explanation of before vs. after behavior
- tests if the repository has tests for that area or if adding tests is practical

## Breaking Changes

Breaking changes should be rare.

If a change requires users to modify existing code:

- explain the migration clearly
- document the reason for the change
- discuss it in an issue before opening a pull request

## Versioning

This package uses semantic versioning through Git tags:

- `PATCH` for backward-compatible fixes
- `MINOR` for backward-compatible additions
- `MAJOR` for breaking changes

## Code of Conduct

Be respectful, direct, and constructive in issues and pull requests.

## Questions

If you are unsure whether a contribution is a good fit, open an issue and describe the proposed change before implementing it.
