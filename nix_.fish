set expr 'let pkgs = (builtins.getFlake "/etc/nixos").inputs.nixpkgs.legacyPackages.${builtins.currentSystem}; in pkgs.'$argv[2]
switch $argv[1]
  case "shell"
    nix repl ~/repl.nix
  case "run"
    nix run --impure --expr $expr -- $argv[3..-1]
  case "shell"
    set -q argv[3] || set argv[3] $SHELL
    nix shell --impure --expr $expr -c $argv[3..-1]
end
