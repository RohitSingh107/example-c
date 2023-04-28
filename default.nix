{
  stdenv,
  pkgs,
  ...
}: stdenv.mkDerivation {
  name = "myPackage";
  version = "v0.0.1";

  src = ./src;

  buildInputs = [];
  buildPhase = ''
    gcc -c main.c
    gcc main.o -o main
    '';

  installPhase = ''
    mkdir -p $out/bin
    mv main $out/bin/myPackage
    '';
}

