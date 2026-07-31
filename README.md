# homebrew-rt-interest

Homebrew tap for [rt-interest](https://github.com/pmuston/homebrew-rt-interest) —
a single-binary service that shows the current value of curated lists of NATS
subjects in a browser, live.

```bash
brew tap pmuston/rt-interest
brew trust pmuston/rt-interest   # required for third-party taps
brew install rt-interest
```

`brew trust` is the step people get stuck on: recent Homebrew refuses to run a
third-party tap's formula without it.

Check the install:

```bash
rt-interest version
```

Binaries are published here as GitHub releases, for macOS and Linux on both
arm64 and amd64. Each archive carries the binary, its README, its MIT LICENSE
and the third-party licence notices.
