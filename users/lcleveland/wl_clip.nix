{ config, lib, pkgs, ... }:

{
  config = {
    home-manager.users.lcleveland.home.packages = with pkgs; [ wl-clipboard-rs ];
  };
}
