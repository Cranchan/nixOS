{ ... }:

{
  services.flatpak = {
    enable = true;
    update.auto.enable = true;
    remotes = [{
      name = "flathub";
      location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
    }];
    packages = [
      "io.github.swordpuffin.rewaita"
      "io.github.swordpuffin.wardrobe"
    ];
  };
}
