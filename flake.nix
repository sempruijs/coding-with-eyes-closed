{
  description = "code with eyes closed";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    # add more inputs here
  };
  # pass inputs to output function
  outputs = inputs@{ self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems =
        [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }:
        let
        in {
          packages = rec {
            # add build phases here
            default = site;
            site = pkgs.stdenv.mkDerivation {
              buildInputs = with pkgs; [ mdbook ];
              src = ./coding-with-eyes-closed;
              name = "code-with-eyes-closed";
              buildPhase = ''
                mdbook build
              '';

              installPhase = ''
                mkdir $out
                cp -r book/. $out/.
              '';
            };
          };
          checks = {
            spellcheck = pkgs.stdenv.mkDerivation {
              name = "spellcheck";
              dontUnpack = true;
              src = ./.;
              buildInputs = [ pkgs.nodePackages.cspell ];
              doCheck = true;
              checkPhase = ''
                cd $src/.
                cspell lint --no-progress "**"
                touch $out
              '';
            };
          };
          devShells = {
            default = pkgs.mkShell {
              # add your developer tools here
              buildInputs = with pkgs; [ mdbook nodePackages_latest.cspell ];
            };
          };
        };
    };
}
