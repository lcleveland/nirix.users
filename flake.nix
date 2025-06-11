{
  description = "Reusable NixOS user configurations";
  outputs = { self, home_manager, nixpkgs, nixvim, zen_browser }@inputs:
    let
      import_modules = import ./resources/nix/import_modules.nix;
      users = import_modules ./users;
    in
    {
      inputs = inputs;
      nixosModules.default = users;
    };
  inputs = {
    home_manager = {
      url = "github:nix-community/home-manager";
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





