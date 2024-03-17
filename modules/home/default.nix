{inputs, username, ...}: {
  imports =
    [(import ./anyrun)]
    ++ [(import ./bat)]
    ++ [(import ./cava)]
    ++ [(import ./fish)]
    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./gtk)]
    ++ [(import ./hyprland)]
    ++ [(import ./kitty)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./micro)]           # nano replacement
    ++ [(import ./nvim)]
    ++ [(import ./package)]
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./swaylock)]
    ++ [(import ./vscodium)]
    ++ [(import ./waybar)]
    ++ [(import ./wofi)]
    ++ [(import ./zellij)];
}
