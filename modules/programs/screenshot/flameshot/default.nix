{ pkgs, ... }:

{
  home-manager.sharedModules = [
    ({ ... }: {
      home.packages = with pkgs; [
        flameshot
        grim
      ];

      home.file.".config/flameshot/flameshot.ini".text = ''
        [General]
        useGrimAdapter=true
        disabledGrimWarning=true
      '';
    })
  ];
}
