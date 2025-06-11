{ config, lib, pkgs, ... }:
{
  options.nirix.users.lclevland.settings = {
    username = lib.mkOption {
      type = lib.types.str;
      default = "lcleveland";
      description = "Username";
    };
  };
}
