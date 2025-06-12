{
  description = "Reusable NixOS user configurations";
  outputs = { self, nixvim }@inputs:
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
  };
}



