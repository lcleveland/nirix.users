{
  description = "Reusable NixOS user configurations";
  outputs = { self, home_manager, niri, nixpkgs, nixvim, zen_browser }@inputs:
    let
      import_modules = import ./resources/nix/import_modules.nix;
      users = (import_modules ./users) ++
        [
          niri.nixosModules.niri
        ];
    in
    {
      inputs = inputs;
      nixosModules.default = users;
    };
  inputs = {
    home_manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager?ref=release-25.05";
    };
    niri = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:sodiboo/niri-flake";
    };
    nixvim = {
      url = "github:nix-community/nixvim?ref=nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen_browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };
  };
}













