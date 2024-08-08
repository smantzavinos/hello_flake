{
  description = "Simple test flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      helloWorld = pkgs.callPackage ./default.nix {};
    in
    {
      packages = {
        default = helloWorld;
      };

      defaultPackage.${system} = helloWorld;
    };
}
