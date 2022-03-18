{
  description = "Play basic algorithms with C++ code.";

  outputs = { self, nixpkgs }:

  let pkgs = nixpkgs.legacyPackages.x86_64-linux; in {
    devShell.x86_64-linux = pkgs.mkShell {
      buildInputs = with pkgs; [
        git
        # GNU C++ toolchain
        gcc
        gdb
        gnumake
        # editor
        (
          vim_configurable.customize {
            name = "vim";
            vimrcConfig.packages.myVimPackage = with vimPlugins; {
              start = [
                vim-surround
                syntastic
              ];
            };
            vimrcConfig.customRC = builtins.readFile ./.vim;
          })
        # utils
        ctags
      ];
      shellHook = ''
      '';
    };
  };
}
