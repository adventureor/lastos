{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    sddm
  ];
}
