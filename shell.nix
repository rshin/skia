{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSUserEnv {
    name = "skia-build";
    targetPkgs = pkgs: with pkgs; [
        clang
        gnumake
        python3
        zlib
    ];
    runScript = "bash";
}).env