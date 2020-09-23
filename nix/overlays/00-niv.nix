self: super: {
  inherit (import (import ../sources.nix).niv { pkgs = super; }) niv;
}
