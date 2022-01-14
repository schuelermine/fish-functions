function nix-shell-system
    nix shell --impure --expr "with builtins; (getFlake \"/etc/nixos\").inputs.nixpkgs.legacyPackages.\${currentSystem}.$argv[1]" -c $argv[2..-1]
end
