# Homebrew-brew

## Cask list

- account-switcher `Easily switch between multiple accounts in the App Store.` by [@L1cardo](https://github.com/L1cardo)
- app-tracker `Track app's price change in App Store with multi options.` by [@L1cardo](https://github.com/L1cardo)
- appinfo `View software details` by [@Uclort](https://github.com/uclort)
- openfile `Openfile quickly.` by [@Uclort](https://github.com/uclort)
- translation `Translation, you know.` by [@Uclort](https://github.com/uclort)
- upic `The best image and file upload tool on Mac.` by [@Svend Jin](https://github.com/gee1k)

## How do I install these casks or formulas

First, install the tap:

```sh
brew tap bigwig-club/brew
```

Once the tap is installed, you can install `upic` like this:

```sh
brew install bigwig-club/brew/upic --cask
```

For a list of info, you can run:

```sh
brew cask info bigwig-club/brew/upic
```

For uninstall, run:

```sh
brew uninstall bigwig-club/brew/upic --zap
```

## Not recommended

If you run `brew cask install upic` directly, it will pull from the official repository which might be outdated.

> Maybe we will delete the cask from official repository in the future.
