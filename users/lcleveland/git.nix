{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.git = {
      enable = true;
      userEmail = config.nirix.users.lcleveland.settings.email;
      userName = config.nirix.users.lcleveland.settings.name;
    };
  };
}
