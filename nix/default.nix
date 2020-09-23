import (import ./sources.nix).nixpkgs {
  config.allowUnfree = true;
  overlays = [
    (import ./overlays/00-niv.nix)
    (import ./overlays/11-xelatex.nix)
  ];
}
