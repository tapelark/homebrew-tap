# Tapelark for Homebrew

[Tapelark](https://tapelark.com/) records the audio your Mac is already playing and organises it into a library.

```sh
brew install --cask tapelark/tap/tapelark
```

The cask installs the same notarized download as [tapelark.com/download](https://tapelark.com/download/). Tapelark
updates itself (Tapelark > Check for Updates…), so `brew upgrade` leaves it alone unless you add `--greedy`.

`brew uninstall --zap --cask tapelark` also removes Tapelark's settings and caches. Your recordings and your licence
stay where they are.

Tapelark needs macOS 14.4 or later. Windows and Linux: see [tapelark.com/download](https://tapelark.com/download/).
