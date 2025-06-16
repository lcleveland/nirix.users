{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.git = {
      enable = true;
      userEmail = config.users.lcleveland.settings.email;
      userName = config.users.lcleveland.settings.name;
    };
  };
}
