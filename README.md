# Fluidkeys homebrew tap

This is a [homebrew tap](#) for installing [Fluidkeys](https://github.com/fluidkeys/fluidkeys) on macOS.

## Install Fluidkeys with Homebrew

```
brew tap fluidkeys/tap
brew update
brew install fluidkeys
```

## Development

Add a [Github personal access token](https://github.com/settings/tokens) for a user with access to this repo.

```
GITHUB_TOKEN='<token>' TAG=<github tag> VERSION=<version number> make
```
