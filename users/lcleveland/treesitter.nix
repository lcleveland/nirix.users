{ config, pkgs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = with pkgs; [ tree-sitter ];
  };
}
