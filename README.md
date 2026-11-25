# homebrew-tap

Homebrew tap for macOS apps by [@wjchoi87](https://github.com/wjchoi87):

- [MacDroid](https://github.com/wjchoi87/MacDroid) — a native DeX for macOS. Mirror your Android phone, or use it as a desktop on your Mac
- [Pawmit](https://github.com/wjchoi87/Pawmit) — a desktop pet that answers AI coding agents' approval prompts, questions, and task notifications
- [KakaoToLinear](https://github.com/wjchoi87/KakaoToLinear) — turn selected KakaoTalk messages into Linear issues with AI. Also links the `kakao-linear` CLI

## Install

Recent Homebrew only loads casks from taps you trust ([Tap Trust](https://docs.brew.sh/Tap-Trust)). Trust this tap once:

```sh
brew trust wjchoi87/tap
```

Then install:

```sh
brew install --cask wjchoi87/tap/macdroid
brew install --cask wjchoi87/tap/pawmit
brew install --cask wjchoi87/tap/kakaotolinear
```

Or add the tap first:

```sh
brew tap wjchoi87/tap
brew install --cask macdroid
```
