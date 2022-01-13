function nix-shell-system
    nix shell --impure --expr "with builtins; (getFlake \"/etc/nixos\").inputs.nixpkgs.legacyPackages.\${currentSystem}.$argv[1..-2]" -c $argv[-1]
end
