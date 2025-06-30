{ config, lib, ... }:
{
  home-manager.users.lcleveland.programs.niri.settings = {
    outputs = {
      "eDP-1" = {
        position = {
          x = 0;
          y = 0;
        };
      };
      "Lenovo Group Limited LEN T24i-10 VNA4B1P6" = {
        position = {
          x = -1920;
          y = -1080;
        };
        transform.rotation = 180;
      };
      "Lenovo Group Limited LEN T24i-10 VNA4B1PL" = {
        position = {
          x = -1920;
          y = 0;
        };
      };
    };
  };
}
