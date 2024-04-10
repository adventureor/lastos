{pkgs, ...}:
{
  services.xserver.enable = true;
  environment.systemPackages = with pkgs; [
    sddm
  ];
}
