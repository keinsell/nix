{
  config,
  pkgs,
  ...
}: {
  programs.rio.enable = true;
  programs.rio.package = config.lib.nixGL.wrap pkgs.rio;
}
