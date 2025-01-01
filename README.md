# Home Manager

❄️ Standalone Home Manager in headless configuration and compatibility with NixOS, Linux and macOS.

## Getting Started

### Prerequsites

- Nix Package Manager: The bedrock upon which this entire setup rests.
- Home Manager: he maestro that orchestrates the symphony of packages and configurations, ensuring everything is in perfect harmony.

*For the convinient setup of new machines repository contains installation script `install` at the root of this repository*

### Installation

Even through repository is using (experimental) Flakes you should remember that [flakes aren't real and cannot hurt you](https://jade.fyi/blog/flakes-arent-real/).

#### Activating NixOS or nix-darwin configurations

In order to activate a system configuration for the current host ($HOSTNAME), run:

```bash
nix run .#activate
```

#### Activating home configuration

If you are on a non-NixOS Linux (or on macOS but you do not use nix-darwin), you will have a home-manager configuration. Suppose, you have it stored in legacyPackages.homeConfigurations."myuser" (where myuser matches $USER), you can activate that by running:

```bash
nix run .#activate $USER@
```
