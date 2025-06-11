{ config, lib, pkgs, ... }:
{
  options.nirix.users.lcleveland.settings = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable";
    };
    groups = lib.mkOption {
      type = lib.types.listOf lib.types.str;
      default = [ "wheel" "networkmanager" ];
      description = "Groups";
    };
    is_normal_user = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Is normal user";
    };
    name = lib.mkOption {
      type = lib.types.str;
      default = "Lyle Cleveland";
      description = "Name";
    };
    username = lib.mkOption {
      type = lib.types.str;
      default = "lcleveland";
      description = "Username";
    };
  };
}
