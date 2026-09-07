#!/usr/bin/env bash

out=$(dirname $0)/paperwm.nix
path=/org/gnome/shell/extensions/paperwm/

echo "Writing '$path' to '$out'"

dconf dump "$path" | dconf2nix -r "$path" > "$out"
