{
  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        lightTheme = false;
        nerdFontsVersion = "";
        filterMode = "fuzzy";
      };
      git = {
        paging = {
          colorArg = "always";
          useConfig = false;
          externalDiffCommand = "difft --color=always";
        };
      };
    };
  };
}
