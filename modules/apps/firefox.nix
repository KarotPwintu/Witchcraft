{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.default = {
      extensions = {
        force  = true;
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
          privacy-badger
          ublock-origin
          sponsorblock
          adaptive-tab-bar-colour
          sidebery
          terms-of-service-didnt-read
          better-canvas
          better-darker-docs
          darkcloud
          github-file-icons
          catppuccin-web-file-icons
          chatgptbox
          edit-with-emacs
          org-capture
          open-in-vlc
          raindropio
          proton-pass
          proton-vpn
          web-clipper-obsidian
        ];
      };
    };
  };
}