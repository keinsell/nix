{pkgs, ...}: {
  home.shellAliases = {
    g = "git";
    lg = "lazygit";
  };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = "keinsell";
      userEmail = "keinsell@protonmail.com";
      ignores = ["*~" "*.swp" "node_modules" ".direnv" ".cache" ".DS_Store"];

      aliases = {
        ci = "commit";
      };

      iniContent = {
        # Performance optimalization with
        # usage of fsmonitor which do not seem
        # to be enabled by default.
        # https://github.blog/engineering/infrastructure/improve-git-monorepo-performance-with-a-file-system-monitor/
        core.untrackedCache = true;
        core.fsmonitor = "${pkgs.rs-git-fsmonitor}/bin/rs-git-fsmonitor";
        branch.sort = "-committerdate";
        rerere.enabled = true;
        push.autoSetupRemote = true;
        pull.rebase = true;
        fetch.fsckObjects = true;
        index.threads = true;
      };

      difftastic = {
        enable = true;
        display = "inline";
      };

      extraConfig = {
        init.defaultBranch = "trunk";
        credential = {
          helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
        };

        # init.defaultBranch = "master";
        # pull.rebase = "false";

        filter.lfs.clean = "${pkgs.git-lfs}/bin/git-lfs clean -- %f";
        filter.lfs.smudge = "${pkgs.git-lfs}/bin/git-lfs smudge -- %f";
        filter.lfs.process = "${pkgs.git-lfs}/bin/git-lfs filter-process";
        filter.lfs.required = true;
      };
    };

    lazygit = {
      enable = true;
      settings = {
        update.method = "never";
        gui = {
          nerdFontsVersion = 3;
          lightTheme = false;
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
  };
}
