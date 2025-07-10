{ inputs, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    package = pkgs.firefox;
    profiles.Ema = {
      id = 0;
      search = {};
      extensions = {
        packages = with pkgs.nur.repos; [
          rycee.firefox-addons.privacy-badger
          rycee.firefox-addons.ublock-origin
          rycee.firefox-addons.purpleadblock
          rycee.firefox-addons.sponsorblock
          rycee.firefox-addons.unpaywall
          rycee.firefox-addons.terms-of-service-didnt-read
          rycee.firefox-addons.adaptive-tab-bar-colour
          rycee.firefox-addons.belgium-eid
          rycee.firefox-addons.better-canvas
          rycee.firefox-addons.better-darker-docs
          rycee.firefox-addons.theater-mode-for-youtube
          rycee.firefox-addons.betterttv
          rycee.firefox-addons.buster-captcha-solver
          rycee.firefox-addons.catppuccin-web-file-icons
          rycee.firefox-addons.chatgptbox
          rycee.firefox-addons.clearurls
          rycee.firefox-addons.spoof-timezone
          rycee.firefox-addons.darkcloud
          rycee.firefox-addons.edit-with-emacs
          rycee.firefox-addons.org-capture
          rycee.firefox-addons.github-file-icons
          rycee.firefox-addons.hacktools
          rycee.firefox-addons.imagus
          rycee.firefox-addons.open-in-vlc
          rycee.firefox-addons.qr-code-address-bar
          rycee.firefox-addons.raindropio
          rycee.firefox-addons.sidebery
          rycee.firefox-addons.wayback-machine
          rycee.firefox-addons.web-archives
          #rycee.firefox-addons.vimium # vim
        ];
      };
      bookmarks = {
        settings = [];
      };
      containers = {};
      extraConfig = "";
      userChrome = "";
      userContent = "";
    };
  };
}