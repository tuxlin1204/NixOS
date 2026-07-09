{ pkgs, ... }:

let
  keepassxc-xwayland = pkgs.writeShellScriptBin "keepassxc" ''
    exec ${pkgs.keepassxc}/bin/keepassxc -platform xcb "$@"
  '';

  keepassxc-xwayland-desktop = pkgs.makeDesktopItem {
    name = "keepassxc-xwayland";
    desktopName = "KeePassXC (XWayland/autotype)";
    exec = "${keepassxc-xwayland}/bin/keepassxc %f";
    icon = "keepassxc";
    categories = [ "Utility" "Security" ];
    terminal = false;
  };
in
{
  environment.systemPackages = [
    keepassxc-xwayland
    keepassxc-xwayland-desktop
  ];
}
