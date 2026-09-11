# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell/extensions/paperwm" = {
      animation-time = 0.1;
      cycle-height-steps = [ 0.38 0.5 0.62 ];
      cycle-width-steps = [ 0.38 0.5 0.62 1.0 ];
      default-focus-mode = 0;
      disable-scratch-in-overview = true;
      disable-topbar-styling = true;
      drag-drift-speed = 2;
      drift-speed = 2;
      edge-preview-enable = true;
      edge-preview-scale = 0.15;
      edge-preview-timeout = 1000;
      edge-preview-timeout-continual = false;
      edge-preview-timeout-enable = false;
      gesture-enabled = true;
      gesture-horizontal-fingers = 3;
      gesture-workspace-fingers = 4;
      horizontal-margin = 20;
      last-used-display-server = "Wayland";
      maximize-width-percent = 1.0;
      maximize-within-tiling = true;
      minimap-scale = 0.0;
      minimap-shade-opacity = 160;
      only-scratch-in-overview = false;
      open-window-position = 0;
      open-window-position-option-start = false;
      open-window-position-option-up = false;
      overview-ensure-viewport-animation = 1;
      overview-max-window-scale = 0.95;
      overview-min-windows-per-row = 5;
      restore-attach-modal-dialogs = "true";
      restore-edge-tiling = "true";
      restore-keybinds = ''
        {}
      '';
      restore-workspaces-only-on-primary = "true";
      selection-border-radius-bottom = 20;
      selection-border-radius-top = 20;
      selection-border-size = 10;
      show-focus-mode-icon = false;
      show-open-position-icon = false;
      show-window-position-bar = false;
      show-workspace-indicator = false;
      swipe-friction = [ 0.3 0.1 ];
      swipe-sensitivity = [ 2.0 2.0 ];
      topbar-mouse-scroll-enable = true;
      use-default-background = true;
      vertical-margin = 20;
      vertical-margin-bottom = 20;
      window-gap = 20;
      window-switcher-preview-scale = 0.15;
      winprops = [];
    };

    "org/gnome/shell/extensions/paperwm/keybindings" = {
      close-window = [ "<Shift><Super>BackSpace" ];
      cycle-height = [ "" ];
      cycle-height-backwards = [ "" ];
      cycle-width-backwards = [ "<Shift><Super>r" ];
      live-alt-tab-scratch = [ "" ];
      live-alt-tab-scratch-backward = [ "" ];
      open-window-position-down = [ "" ];
      switch-down = [ "" ];
      switch-down-loop = [ "<Super>Down" ];
      switch-first = [ "" ];
      switch-focus-mode = [ "" ];
      switch-last = [ "" ];
      switch-left = [ "" ];
      switch-left-loop = [ "<Super>Left" ];
      switch-next = [ "" ];
      switch-next-loop = [ "" ];
      switch-previous = [ "" ];
      switch-previous-loop = [ "" ];
      switch-right = [ "" ];
      switch-right-loop = [ "<Super>Right" ];
      switch-up = [ "" ];
      switch-up-loop = [ "<Super>Up" ];
      take-window = [ "" ];
      toggle-scratch = [ "" ];
      toggle-scratch-layer = [ "" ];
      toggle-scratch-window = [ "" ];
    };

    "org/gnome/shell/extensions/paperwm/workspaces" = {
      list = [ "8c3ee681-4045-41f0-8419-278beac3c160" "288d17c3-a1cb-4c23-bc12-bef64c0b0ce6" "47298e33-ad1f-4e30-aadc-5a736e59451f" ];
    };

    "org/gnome/shell/extensions/paperwm/workspaces/288d17c3-a1cb-4c23-bc12-bef64c0b0ce6" = {
      background = "";
      color = "rgb(153,193,241)";
      index = 1;
      show-position-bar = false;
      show-top-bar = false;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/47298e33-ad1f-4e30-aadc-5a736e59451f" = {
      background = "";
      color = "rgb(153,193,241)";
      index = 2;
      show-position-bar = false;
      show-top-bar = false;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/8c3ee681-4045-41f0-8419-278beac3c160" = {
      background = "";
      color = "rgb(153,193,241)";
      index = 0;
      show-position-bar = false;
      show-top-bar = false;
    };

  };
}
