{ pkgs ? import ./nix }:
pkgs.mkShell {
  buildInputs = with pkgs; (
    [
      biber
      gap-full
      git
      gnumake
      niv
      nixpkgs-fmt
      shellcheck
      xelatex
    ] ++ (
      with python3Packages; [
        pre-commit
      ]
    )
  );
}
