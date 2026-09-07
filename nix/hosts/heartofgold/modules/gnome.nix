{ pkgs, ... }:

# https://github.com/NixOS/nixpkgs/blob/d804208062fdba0610158f2e97054d4410828ba2/nixos/modules/services/desktop-managers/gnome.nix
{
  services.xserver.enable = true;
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;
  services.gnome.core-apps.enable = false;

  programs.dconf.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  xdg.mime.enable = true;
  xdg.mime.defaultApplications = {
    "text/html" = "firefox.desktop";
    "x-scheme-handler/http" = "firefox.desktop";
    "x-scheme-handler/https" = "firefox.desktop";
    "x-scheme-handler/about" = "firefox.desktop";
    "x-scheme-handler/unknown" = "firefox.desktop";
  };

  environment.systemPackages = with pkgs; [
    gnome-tweaks
    dconf2nix
    flat-remix-gnome                # GNOME Shell theme
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
  ];

  environment.sessionVariables = {
    # # If cursor becomes invisible
    # WLR_NO_HARDWARE_CURSORS = "1";
    # # Hint electron apps to use wayland
    # NIXOS_OZONE_WL = "1";
  };
}
