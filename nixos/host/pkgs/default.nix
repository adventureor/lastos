{pkgs, config, ...} :
{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    kitty
    gcc
    sddm
    grim
    slurp
    wl-clipboard
    mako
    clang
    nodejs_20
    vim
    fish
    swww #for wallpapers
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    xwayland
  ];
  #hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
