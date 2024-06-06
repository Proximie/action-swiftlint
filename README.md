# GitHub Action for SwiftLint

This Action executes [SwiftLint](https://github.com/realm/SwiftLint) and generates annotations from SwiftLint Violations.

## Usage

An example workflow(`.github/workflows/swiftlint.yml`) to executing SwiftLint follows:

```yaml
name: SwiftLint

on:
  pull_request:
    paths:
      - '.github/workflows/swiftlint.yml'
      - '.swiftlint.yml'
      - '**/*.swift'

jobs:
  SwiftLint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: GitHub Action for SwiftLint
        uses: proximie/action-swiftlint@0.55.1
      - name: GitHub Action for SwiftLint with --strict
        uses: proximie/action-swiftlint@0.55.1
        with:
          args: --strict
      - name: GitHub Action for SwiftLint (Only files changed in the PR)
        uses: proximie/action-swiftlint@0.55.1
        env:
          DIFF_BASE: ${{ github.base_ref }}
      - name: GitHub Action for SwiftLint (Different working directory)
        uses: proximie/action-swiftlint@0.55.1
        env:
          WORKING_DIRECTORY: Source
```

## Versions

The action version reflects the swiftlint version, the minimum provided version is `0.54.0`.

## Example

[Here](https://github.com/proximie/test-action-swiftlint/pull/1/files) is an example that actually works.
![screenshot](screenshot.png)

## Author

Proximie

## License

[MIT](LICENSE)
