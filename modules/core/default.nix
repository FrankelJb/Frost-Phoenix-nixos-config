{ inputs, nixpkgs, self, username, ...}:
let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in
{
  helium = nixpkgs.lib.nixosSystem {
    specialArgs = { inherit self inputs username; };
    modules =
      [ (import ./bootloader.nix) ]
      ++ [ (import ./hardware.nix) ]
      ++ [ (import ./network.nix) ]
      ++ [ (import ./nvidia.nix) ]
      ++ [ (import ./pipewire.nix) ]
      ++ [ (import ./program.nix) ]
      ++ [ (import ./security.nix) ]
      ++ [ (import ./services.nix) ]
      ++ [ (import ./steam.nix) ]
      ++ [ (import ./system.nix) ]
      ++ [ (import ./user.nix) ]
      ++ [ (import ./virtualization.nix) ]
      ++ [ (import ./wayland.nix) ]
      ++ [ (import ./xserver.nix) ]
      ++ [ (import ./../../hosts/helium/hardware-configuration.nix) ]
    ;
  };
}
