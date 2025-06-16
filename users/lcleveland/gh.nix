{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.gh = {
      enable = true;
      gitCredentialHelper.enable = true;
    };
  };
}
