# See /modules/darwin/* for actual settings
# This file is just *top-level* configuration.
{ flake, ... }:

let
  inherit (flake) inputs;
  inherit (inputs) self;
in
{
  imports = [
    self.darwinModules.default
  ];

  # aarch64-darwin is necessary when using Apple Silicon
  nixpkgs.hostPlatform = "aarch64-darwin";
  networking.hostName = "desktop";

  # For home-manager to work.
  # https://github.com/nix-community/home-manager/issues/4026#issuecomment-1565487545
  users.users."runner".home = "/Users/runner";

  # Enable home-manager for "runner" user
  home-manager = {
    users."runner" = {
      imports = [ (self + /configurations/home/runner.nix) ];
    };
    useUserPackages = true;
    useGlobalPkgs = true;
  };

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
