{
  description = "Reusable NixOS user configurations";
  outputs = { self, nixvim, zen_browser }@inputs:
    let
      import_modules = import ./resources/nix/import_modules.nix;
      users = (import_modules ./users);
    in
    {
      inputs = inputs;
      nixosModules.default = users;
    };
  inputs = {
    nixvim = {
      url = "github:nix-community/nixvim?ref=nixos-25.05";
    };
    zen_browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };
  };
}



