{pkgs, ...}: {
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_24;

    pnpm = {
      enable = true;
      package = pkgs.pnpm;
      install.enable = true;
    };
  };

  processes.dev.exec = "pnpm dev";

  packages = [pkgs.sqlite];

  git-hooks.hooks = {
    # For funsies, I added all hooks that could be even remotely useful
    prettier.enable = true;
    action-validator.enable = true;
    actionlint.enable = true;
    alejandra.enable = true;
    check-executables-have-shebangs.enable = true;
    check-json.enable = true;
    check-merge-conflicts.enable = true;
    detect-private-keys.enable = true;
    eslint.enable = true;
  };
}
