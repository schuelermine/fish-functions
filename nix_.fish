set expr 'let pkgs = (builtins.getFlake "/etc/nixos").inputs.nixpkgs.legacyPackages.${builtins.currentSystem};
in pkgs.'$argv[1]
switch $argv[1]
  case "run"
    nix run --impure --expr $expr -- $argv[2..-1]
  case "shell"
    set -q argv[2] || set argv[2] $SHELL
    nix shell --impure --expr $expr -c $argv[2..-1]
end