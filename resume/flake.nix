{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        {
          devShells.default = pkgs.mkShell {
            packages = with pkgs; [ typst ];
          };

          packages.default = pkgs.stdenv.mkDerivation {
            name = "private-career-resume";
            src = ./.;
            nativeBuildInputs = with pkgs; [ typst hackgen-font ];
            buildPhase = ''
              typst compile main.typ --font-path ${pkgs.hackgen-font}/share/fonts/hackgen-nf
            '';
            installPhase = ''
              mkdir -p $out
              cp main.pdf $out/resume.pdf
            '';
          };
        }
    );
}
