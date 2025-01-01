{
  config,
  pkgs,
  ...
}: {
  # https://nixos.asia/en/direnv
  programs.direnv = {
    enable = true;
    silent = true;
    nix-direnv = {
      enable = true;
    };
    config.global = {
      # Make direnv messages less verbose
      hide_env_diff = true;
      disable_stdin = true;
      load_dotenv = true;
      strict_env = true;
    };
  };
}
