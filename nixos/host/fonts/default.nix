{pkgs, configs, ...} :
{
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };
  fonts.packages = with pkgs; [
    font-awesome
    jetbrains-mono
    nerdfonts
    meslo-lgs-nf
    noto-fonts
    # noto-fonts-cjk-sans
    # noto-fonts-cjk-serif
    source-han-sans
    source-han-serif
    # sarasa-gothic  #更纱黑体
    source-code-pro
    hack-font
  ];
}
