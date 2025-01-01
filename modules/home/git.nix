{pkgs, ...}: {
  home.shellAliases = {
    g = "git";
    lg = "lazygit";
  };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = "Jakub Olan";
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
      };

      difftastic = {
        enable = true;
        display = "inline";
      };

      extraConfig = {
        init.defaultBranch = "trunk";
        credential = {
          credentialStore = "secretservice";
          cacheOptions = "--timeout 3000";
          helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
        };

        # init.defaultBranch = "master";
        # pull.rebase = "false";
      };
    };
    lazygit.enable = true;
  };
}
