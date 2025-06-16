{ config, pkgs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = [ pkgs.nodejs ];
  };
}
