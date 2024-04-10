{config, options, pkgs, ...}:
{
  imports = [
    ./environment.nix
  ];
  services.xserver.displayManager = {
    sddm.enable = true;
    defaultSession = "hyprland";
    sddm.wayland.enable = true;
  };
}
