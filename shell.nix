let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs {
    config = {};
    overlays = [];
  };
in
  pkgs.mkShellNoCC {
    packages = with pkgs; [
      python312
      python312Packages.qasync
      python312Packages.pyqt6
      python312Packages.packbits
      python312Packages.pypng
      python312Packages.pyserial
      python312Packages.pybluez
      python312Packages.qrcode
      python312Packages.appdirs
      python312Packages.pyyaml
      qt6.full
    ];
  }
