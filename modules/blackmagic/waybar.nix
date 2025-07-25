{ ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      topBar = {
        layer = "top";
        position = "top";
        height = 24;
        spacing = 5;
        modules-left = [
          "custom/os_button"
          "custom/file"
          "hyprland/workspaces"
          "hyprland/window"
        ];
        modules-center = [
				  "mpris"
          "mpd"
			  ];
        modules-right = [
          "privacy"
          "idle_inhibitor"
          "cpu"
          "memory"
          "network"
          "wireplumber"
          "gamemode"
          "backlight"
          "tray"
          "clock"
          "user"
        ];
        "user" = {
          icon = true;
          format = "{user} {up_H}";
        };
        "cava" = {
          method = "pipewire";
        };
        "custom/os_button" = {
          format = "󱄅";
          on-click = "wofi --show drun";
          tooltip = false;
        };
        "custom/file" = {
          exec = "echo 'File'";
          interval = 60;
          return-type = "plain";
          on-click = "nautilus";
        };
        "idle_inhibitor" = {
          format = "{icon}";
          format-icons = {
            activated = "󰽢";
            deactivated = "󰽤";
          };
        };
        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {};
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };
        "hyprland/window" = {
          format = "{class}";
          icon = true;
          max-lenght = 20;
        };
        "mpris" = {
          player-icons = {
            "mpv" = "󰽰";
            "firefox" = "";
            "lollypop" = "";
            "spotify" = "";
          };
        };
        "mpd" = {
          format = "{stateIcon}{consumeIcon}{randomIcon}{repeatIcon}{singleIcon}";
          format-disconnected = "";
          format-stopped = "";
          interval = 2;
          on-click = "mpc toggle";
          on-click-right = "mpc stop";
          on-scroll-up = "mpc next";
          on-scroll-down = "mpc prev";
          consume-icons = {
            on = " ";
          };
          random-icons = {
            on = " ";
          };
          repeat-icons = {
            on = " ";
          };
          single-icons = {
            on = " 1";
          };
          state-icons = {
            paused = "";
            playing = "";
          };
          tooltip-format = "{artist} - {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S})";
          tooltip-format-disconnected = "MPD Disconnected";
        };
      };  
   #   mainBar = {
   #     layer = "top";
   #     position = "left";
   #     height = 41;
   #     width = 2;
   #     margin = 4;
   #     spacing = 5;
   #     modules-left = [];
   #     modules-center = [
   #       "wlr/taskbar"
   #     ];
   #     modules-right = [];
   #     "wlr/taskbar" = {
   #       format = "{icon}";
   #       icon-size = 36;
   #       spacing = 3;
   #       on-click-middle = "close";
   #       tooltip-format = "{title}";
   #       on-click = "activate";
   #     };
    #  };
    };

    style = ''
      /*base background color*/
      @define-color bg_main rgba(25, 25, 25, 0.65);
      @define-color bg_main_tooltip rgba(0, 0, 0, 0.7);

      /*base background color of selections */
      @define-color bg_hover rgba(200, 200, 200, 0.3);
      /*base background color of active elements */
      @define-color bg_active rgba(100, 100, 100, 0.5);

      /*base border color*/
      @define-color border_main rgba(255, 255, 255, 0.2);

      /*text color for entries, views and content in general */
      @define-color content_main white;
      /*text color for entries that are unselected */
      @define-color content_inactive rgba(255, 255, 255, 0.25);

      * {
	      text-shadow: none;
	      box-shadow: none;
        border: none;
        border-radius: 0;
	      font-family: "SF Pro", "Ubuntu";
        font-weight: 600;
        font-size: 12.7px;
        }

        window#waybar {
        background:  @bg_main;
        border-top: 1px solid @border_main;
        color: @content_main;
        }

tooltip {
  background: @bg_main_tooltip;
  border-radius: 5px;
  border-width: 1px;
  border-style: solid;
  border-color: @border_main;
}
tooltip label{
  color: @content_main;
}

#custom-os_button {
	font-family: "JetBrainsMono Nerd Font";
  font-size: 24px;
	padding-left: 12px;
	padding-right: 20px;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}
#custom-os_button:hover {
  background:  @bg_hover;
	color: @content_main;
}

#workspaces {
  color: transparent;
	margin-right: 1.5px;
	margin-left: 1.5px;
}
#workspaces button {
  padding: 3px;
  color: @content_inactive;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}
#workspaces button.active {
	color: @content_main;
	border-bottom: 3px solid white;
}
#workspaces button.focused {
  color: @bg_active;
}
#workspaces button.urgent {
	background:  rgba(255, 200, 0, 0.35);
	border-bottom: 3px dashed @warning_color;
	color: @warning_color;
}
#workspaces button:hover {
  background: @bg_hover;
	color: @content_main;
}

#taskbar {
  color: @content_main;
}
#mpris
#mpris status
#mpris player
#taskbar button {
	min-width: 130px;
	border-bottom: 3px solid rgba(255, 255, 255, 0.3);
	margin-left: 2px;
	margin-right: 2px;
  padding-left: 8px;
  padding-right: 8px;
  color: white;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}

#taskbar button.active {
	border-bottom: 3px solid white;
  background: @bg_active;
}

#taskbar button:hover {
	border-bottom: 3px solid white;
  background: @bg_hover;
	color: @content_main;
}

#cpu, #disk, #memory {
	padding:3px;
}

#temperature {
	color: transparent;
	font-size: 0px;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}
#temperature.critical {
	padding-right: 3px;
	color: @warning_color;
	font-size: initial;
	border-bottom: 3px dashed @warning_color;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}

#window {
  border-radius: 10px;
  margin-left: 20px;
  margin-right: 20px;
}

#tray{
  margin-left: 5px;
  margin-right: 5px;
}
#tray > .passive {
	border-bottom: none;
}
#tray > .active {
	border-bottom: 3px solid white;
}
#tray > .needs-attention {
	border-bottom: 3px solid @warning_color;
}
#tray > widget {
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}
#tray > widget:hover {
	background: @bg_hover;
}


#network {
	padding-left: 3px;
  padding-right: 3px;
}

#clock {
  padding-right: 5px;
  padding-left: 5px;
	transition: all 0.25s cubic-bezier(0.165, 0.84, 0.44, 1);
}
#clock:hover {
	background: @bg_hover;
}
    '';
  };
}