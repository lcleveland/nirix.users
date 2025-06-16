{ config, lib, pkgs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.ripgrep = {
      enable = true;
    };
  };
}
