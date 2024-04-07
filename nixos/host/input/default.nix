{pkgs, config, fontconfig, ...}:
{
  #i18n.defaultLocale = "zh_CN.UTF-8";

   # 简单配置一下 fontconfig 字体顺序，以免 fallback 到不想要的字体
        fonts.fontconfig.defaultFonts.emoji = [ "Noto Color Emoji" ];
        fonts.fontconfig.defaultFonts.monospace = [
          "Noto Sans Mono CJK SC"
          "Sarasa Mono SC"
          "DejaVu Sans Mono"
        ];
        fonts.fontconfig.defaultFonts.sansSerif = [
          "Noto Sans CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        fonts.fontconfig.defaultFonts.serif = [
          "Noto Serif CJK SC"
          "Source Han Serif SC"
          "DejaVu Serif"
        ];

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
      fcitx5-chinese-addons
    ];

    # 我现在用 ibus
    #enabled = "ibus";
    #ibus.engines = with pkgs.ibus-engines; [
    #  libpinyin
    #  rime
    #];
  };
  services.xserver.desktopManager.runXdgAutostartIfNone = true;
}
