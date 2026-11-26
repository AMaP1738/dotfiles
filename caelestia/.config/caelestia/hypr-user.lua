hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

hl.bind("SUPER + C", hl.dsp.exec_cmd("env ELECTRON_OZONE_PLATFORM_HINT=wayland /home/rosemaylinger/.local/bin/cursor"))

hl.unbind("SUPER + W", "firefox")
hl.bind("SUPER + W", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("/usr/bin/vesktop"), { repeating = false })

-- Map Stowaway Shortcuts natively using Caelestia's binding handler API
hl.bind("SUPER + V", hl.dsp.exec_cmd("stowaway --toggle --no-daemon"))
hl.bind("SUPER + period", hl.dsp.exec_cmd("stowaway --emoji --no-daemon"))
hl.bind("SUPER + ALT + K", hl.dsp.exec_cmd("stowaway --kaomoji --no-daemon"))
hl.bind("SUPER + ALT + S", hl.dsp.exec_cmd("stowaway --symbols --no-daemon"))

-- Unified System Settings Configuration
hl.config({
    windowrulev2 = {
        "float, title:^(.*Atlas File Picker.*)$",
        "center, title:^(.*Atlas File Picker.*)$",
        "size 1000 620, title:^(.*Atlas File Picker.*)$",
        "focusonactivate, title:^(.*Atlas File Picker.*)$",
        "tile, class:^(vesktop)$",
        "workspace unset, class:^(vesktop)$"
    },
    monitors = {
        "monitor=,preferred,auto,1"
    }
})

-- Performance layer rule for Stowaway
hl.layer_rule({
    match = {
        namespace = "stowaway",
    },
    no_anim = true,
})

-- Load default Caelestia helper hooks
dofile(os.getenv("HOME") .. "/.config/caelestia/astra-flightdeck.lua")

hl.window_rule({
    name = "file-chooser-float",
    match = {
        class = "^(xdg-desktop-portal-gtk|org\\.freedesktop\\.impl\\.portal\\.desktop\\.gtk)$",
    },
    float = true,
    size = "950 650",
    center = true,
})

hl.window_rule({
    name = "lutris-file-dialog-float",
    match = {
        class = "^(net\\.lutris\\.Lutris)$",
        title = "^(Select.*|Choose.*|Open.*|Save.*)$",
    },
    float = true,
    size = "950 650",
    center = true,
})

hl.window_rule({
    name = "nexon-global-launcher-float",
    match = {
        class = "^(steam_app_default)$",
        title = "^(Nexon Global Launcher)$"
    },
    float = true,
    center = true
})
hl.window_rule({
    name = "runelite-launcher-splash",
    match = {
        initial_class = "^(net-runelite-client-RuneLite)$",
        initial_title = "^(RuneLite Launcher)$",
    },
    float = true,
    center = true,
})
hl.config({
    ["exec-once"] = {
        "openrgb --startminimized --server"
    }
})
