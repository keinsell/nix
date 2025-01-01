{pkgs, ...}: {
  # Nix packages to install to $HOME
  # Search for packages here: https://search.nixos.org/packages
  home.packages = with pkgs; [
    ripgrep
    fd
    sd
    tree
    gnumake
    just

    # Nix dev
    devenv
    cachix
    nixd
    nil
    alejandra
    nh
    nix-info
    nixpkgs-fmt
    comma

    # Knowledge-base Management
    markdown-oxide
    marksman
    glow

    # On ubuntu, we need this less for `man home-configuration.nix`'s pager to
    # work.
    less
  ];

  programs = {
    bat.enable = true;
    # Type `<ctrl> + r` to fuzzy search your shell history
    fzf.enable = true;
    jq.enable = true;
    jujutsu.enable = true;
    home-manager.enable = true;
    browserpass.enable = true;
  };
}
