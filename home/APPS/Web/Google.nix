{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    extensions = [
      # Google
    #  { id = "eignhdfgaldabilaaegmdfbajngjmoke"; }
      # Traduction
    #  { id = "aapbdbdomjkkjkaonfhkkikfgjllcleb"; }
      # uBlock Origin
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
      # Tabs
      { id = "akahnknmcbmgodngfjcflnaljdbhnlfo"; }

###--- DEV ---###
      # Obsidian
      { id = "cnjifjpddelmedmihgijeibhnjfabmlf"; }
      # Proton
      { id = "ghmbeldphafepmbegfdlkpapadhbakde"; } # PASS
      { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; } # VPN
      # AI
      { id = "jgjaeacdkonaoafenlfkkkmbaopkbilf"; } #ChatGPT
    ];
  };
}
