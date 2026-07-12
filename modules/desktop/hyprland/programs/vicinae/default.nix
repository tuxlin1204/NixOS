{ inputs, lib, ... }:

{
  home-manager.sharedModules = [
    ({ lib, ... }: {
      imports = [
        inputs.vicinae.homeManagerModules.default
      ];

      services.vicinae = {
        enable = true;
        enableFirefoxIntegration = false;
        systemd.enable = true;

        systemd.environment = {
          USE_LAYER_SHELL = true;
        };

        settings = { };
      };

      systemd.user.services.vicinae = {
        Install.WantedBy = lib.mkForce [ "default.target" ];
      };

      programs.firefox.nativeMessagingHosts = lib.mkForce [ ];
    })
  ];
}
