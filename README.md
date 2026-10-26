# homebrew-lunar-phases

Homebrew tap for [lunar-phases](https://github.com/hebertcisco/lunar-phases),
a dependency-free C11 command-line tool for exploring the Moon's position,
illumination, and principal phase times.

## Installation

```sh
brew tap hebertcisco/lunar-phases
brew install lunar-phases
```

Verify the installation:

```sh
lunar_phases
lunar_phases phases 2026
```

## Updating

```sh
brew update
brew upgrade lunar-phases
```

## Local development

To test the formula without publishing the tap:

```sh
brew install --build-from-source ./Formula/lunar-phases.rb
brew test lunar-phases
```

To check the formula:

```sh
brew style ./Formula/lunar-phases.rb
brew audit --formula ./Formula/lunar-phases.rb
```

The formula builds the tagged upstream CMake project from source. The package
includes the `lunar_phases` executable, the reusable `lunar_core` library,
public headers, and CMake package metadata.

## Releasing a new version

When a new `vX.Y.Z` tag is published in the upstream repository, update the
formula's `url` and `version`, then run the local style, audit, and installation
checks above.
