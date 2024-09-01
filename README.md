<h1 align="center">❄️ Home Manager</h1>
<p align="center">
  <b>A small homebrew of home manager</b>
  <br><br>
<!-- There is a small space for badges which also sohuld be centered. -->
</p>

**Home Manager** is a great way to manage user-specific configuration ("dotfiles") in a reproducible way. This repository contains everyday configuration used by me for casual or professional purposes, at some point it's just mix of everything that I do not like to configure every time, it's a little trashy becasue I used to note packages and applications that I've liked so when I discovered home manager the same habit was actually persisted in configuration, like... if you are curious of something just take a look.

Repository have interprop with [github:keinsell/dotfiles](https://github.com/keinsell/dotfiles) from which files are aggregated into configuration inside this repository (they are referenced by permalinks)

## Getting Started

### Prerequsites

- **Nix Package Manager**: The bedrock upon which this entire setup rests.
- **Home Manager**: he maestro that orchestrates the symphony of packages and configurations, ensuring everything is in perfect harmony.

*For the convinient setup of new machines repository contains installation script available at `install.sh`*

### Installation

Even through repository is using [(*experimental*) Flakes]() you should remember [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way](https://jade.fyi/blog/flakes-arent-real/).

```
git clone https://github.com/keisnell/home-manager.git ~/.hm
sh -e install.sh
```

Once you have `home-manager`, `nh` and `nix` installed, we're ready for building `home-manager` instance.

```sh
nh home switch ~/.hm
```

## Development

- TODO: "hm bump" script which will commit changes and try to rebuilt
- TODO: "hm back" script which will soft reset repository one commit back and will rebuild home manager

## Contributing

You don't. It's mine.
