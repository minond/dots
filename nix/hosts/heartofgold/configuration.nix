{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/gnome.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-055d126b-21ac-4130-acd8-4eda9bda5a10".device = "/dev/disk/by-uuid/055d126b-21ac-4130-acd8-4eda9bda5a10";

  networking.firewall.trustedInterfaces = [
    "p2p-wl+" # For network display sharing
  ];
  networking.firewall.allowedTCPPorts = [
    7236 7250 # For network display sharing
  ];
  networking.firewall.allowedUDPPorts = [
    7236 5353 # For network display sharing
  ];

  networking.networkmanager.enable = true;
  networking.hostName = "heartofgold";
  networking.extraHosts = ''
  10.0.0.139 minond.local
  10.0.0.61  storage01.local
  '';

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "America/Denver";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  hardware.graphics.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        # Shows batter charge of connected devices on supported adapters.
        Experimental = true;
        # So that other devices can connect faster to us, downside is increased
        # power consumption.
        FastConnectable = true;
      };
      Policy = {
        # Enable all controllers when they are found.
        AutoEnable = true;
      };
    };
  };

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  users.users.marcos = {
    isNormalUser = true;
    description = "Marcos";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      (pkgs.python3.withPackages
        (python-pkgs: with python-pkgs; [
          libtmux
        ]))
    ];
    shell = pkgs.bash;
  };

  home-manager.users.marcos = {
    home.stateVersion = "25.05";
    imports = [
      ./modules/paperwm.nix
    ];
  };

  services.locate.enable = true;

  nixpkgs.config.allowUnfree = true;
  fonts.fontconfig.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;                 # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true;            # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true;  # Open ports in the firewall for Steam Local Network Game Transfers

    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
  };

  programs.java = {
    enable = true;
    package = pkgs.jre8;
  };

  programs._1password.enable = true;
  programs._1password-gui.enable = true;
  programs.nix-ld.enable = true;
  programs.localsend.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    file-roller                     # Archive manager
    firefox
    geary                           # Email reader
    gimp                            # Image editor
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-contacts
    gnome-disk-utility
    gnome-font-viewer
    gnome-initial-setup
    gnome-logs
    gnome-maps
    gnome-network-displays
    gnome-sudoku
    gnome-system-monitor
    gnome-text-editor
    gnome-weather
    gradia                          # Simple image editor
    kitty
    legcord                         # Discord client
    librecad                        # CAD
    mgba
    nautilus                        # File manager
    obsidian
    papers                          # Document viewer
    rhythmbox                       # Music player
    shotwell                        # Photos
    showtime                        # Video player
    signal-desktop
    slack
    snapshot                        # Camera app
    todoist-electron
    ungoogled-chromium
    vlc
    zoom-us

    lutris
    steam
    wineWow64Packages.stable

    beets                           # Audio file tag editor
    id3v2                           # Audio file tag editor
    picard                          # Audio file tag editor

    hunspell                        # Spell checkers for LibreOffice
    hunspellDicts.en_US
    hunspellDicts.es_CL
    libreoffice-qt

    imagemagick
    libheif                         # HEIF image format library

    ack
    ctags
    fzf
    git
    pi-coding-agent
    tmux
    vim
    sc-im

    nodejs_24
    pipenv
    racket
    sbt
    scala
    python313
    uv

    marp-cli
    pandoc
    typst

    direnv
    devenv
    fd                              # Find alternative
    gnumake
    gnuplot
    htop
    ibm-plex
    jq
    killall
    mlocate                         # Locate
    netcat
    nmap
    tree
    wget
    wl-clipboard                    # Wayland clipboard copy/paste
    yt-dlp
    z-lua                           # Z
  ];

  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05";
}
