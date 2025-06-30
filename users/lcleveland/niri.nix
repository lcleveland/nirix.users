{ config, lib, ... }:
{
  home-manager.users.lcleveland.programs.niri.settings = {
    outputs = {
      "Lenovo Group Limited LEN T24i-10 VNA4B1P6" = {
        transform.rotation = 180;
      };
    };
  };
}
