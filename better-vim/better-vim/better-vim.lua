-- local utils = require "better-vim-utils"

local M = {}

M.theme = {
  -- name = "palenight",
  name = "catppuccin",
  -- name = "ayu",
  catppuccin_flavour = "frappe",
  ayucolor = "dark",
  rose_pine = { variant = "moon" },
}

local function expand_relative_path()
  vim.cmd [[:let @+ = expand("%")]]
  print("Relative path copied to clipboard!")
end

local function expand_full_path()
  vim.cmd [[:let @+ = expand("%:p")]]
  print("Full path copied to clipboard!")
end

M.dashboard = {
  header = {
    -- karen (theprimeagen)
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠄⠄⠄⠄⠄⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠄⠄⠄⠄⠄⢀⠄⠄⠄⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄⠄⢀⠄⣴⣿⣿⣷⡄⠄⠄⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⠇⠄⠄⠄⠄⠄⢸⣿⣿⣋⡱⠶⡄⠄⠄⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⠂⠄⠄⠄⢀⠁⠄⣺⣿⣿⣴⣷⣿⡀⠄⠱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣏⠄⠄⠄⠄⠄⠄⣴⣿⣿⣿⣿⣿⣿⣧⠄⠄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣻⡇⠄⠄⠄⠄⠄⢿⣿⣷⠾⡛⢻⣿⠇⠄⢣⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⢠⡴⠛⠃⠺⣵⡿⠏⠄⢋⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣻⣧⠄⠄⠄⠄⢾⣧⣖⠷⣦⡀⠄⡦⠄⠈⠉⢛⢟⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣷⠉⠄⠄⠄⠸⣿⣿⡾⠻⣗⠁⠄⠄⣤⣤⣾⡇⠸⡄⠄⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⡏⠄⠄⠄⠄⠄⢹⣿⣿⣤⠉⠄⠐⠄⠔⠁⠄⠁⠄⢻⠄⠄⢸⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⡄⠄⠄⠄⠄⠄⠄⣿⣿⣿⠄⠄⠄⡖⠄⠄⠄⢀⠄⣼⣶⡀⢸⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣷⡆⠄⠄⠄⠄⣰⣿⣿⠇⠄⣀⠄⠄⠄⠄⣀⣱⣾⣿⡿⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⠟⠄⠄⠄⢀⣿⣿⣿⢀⢸⣿⣶⣶⣶⣿⣿⣿⣿⣿⣇⠄⢸⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⡇⣶⣶⠄⢀⣾⣿⣿⡟⢨⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠈⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⡯⠄⣾⣿⣿⣿⠇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⡿⢏⣼⣿⣿⣿⣟⣤⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠄⠄⢹⣿⣿⣿⣿⣿⣿⣿]],
    -- [[                                     ]],
    --
    -- cbun
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠸⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⣾⣿⣿⣿⣿⣿⣦⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠟⠉⠉⠉⢃⣤⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢸⣿⡟⠀⠀⠀⠀⢹⣿⣧⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠈⠻⡅⠀⠀⠀⠀⣸⣿⠿⠇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠔⠛⠁⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀       ⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿ BetterGym ⣿]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    [[                                     ]],
    --
    --
    -- shrek
    -- [[⢀⡴⠑⡄⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠸⡇⠀⠿⡀⠀⠀⠀⣀⡴⢿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠑⢄⣠⠾⠁⣀⣄⡈⠙⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⢀⡀⠁⠀⠀⠈⠙⠛⠂⠈⣿⣿⣿⣿⣿⠿⡿⢿⣆⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⢀⡾⣁⣀⠀⠴⠂⠙⣗⡀⠀⢻⣿⣿⠭⢤⣴⣦⣤⣹⠀⠀⠀⢀⢴⣶⣆]],
    -- [[⠀⠀⢀⣾⣿⣿⣿⣷⣮⣽⣾⣿⣥⣴⣿⣿⡿⢂⠔⢚⡿⢿⣿⣦⣴⣾⠁⠸⣼⡿]],
    -- [[⠀⢀⡞⠁⠙⠻⠿⠟⠉⠀⠛⢹⣿⣿⣿⣿⣿⣌⢤⣼⣿⣾⣿⡟⠉⠀⠀⠀⠀⠀]],
    -- [[⠀⣾⣷⣶⠇⠀⠀⣤⣄⣀⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠉⠈⠉⠀⠀⢦⡈⢻⣿⣿⣿⣶⣶⣶⣶⣤⣽⡹⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠉⠲⣽⡻⢿⣿⣿⣿⣿⣿⣿⣷⣜⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣶⣮⣭⣽⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⠀⠀⠀⠀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀      ]],
    -- [[⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀   ]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠿⠿⠛⠉            ]],
    -- [[                              ]],
    --
    -- jimmy neutron
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠄⠄⠄⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⡀⠄⠄⠄⠄⠄⠄⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⢀⣠⣶⣄⠄⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⢰⣿⣷⣶⣶⣶⣾⣿⣿⠟⢿⡆⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠄⢸⡟⢉⣿⣿⣿⣿⣿⣿⣿⣶⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡈⢳⣿⡿⠿⣿⣿⣿⣿⢯⣻⠇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⢻⣶⡟⠻⣿⣿⠋⠉⣿⢰⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣣⣻⣧⣀⣾⣿⣷⣾⣿⣿⣿⣿⣿⣯⢿⡽⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⣿⣿⢟⣿⣿⣿⣿⣿⣯⣾⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣾⢽⣿⣿⢿⣿⠟⠿⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡋⠁⠉⠛⠒⠒⠋⠁⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⡴⠎⠄⢤⡘⠠⠄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    -- [[                                     ]],
    --
    -- Roman
    -- [[oooooooooo.                .       .                      oooooo     oooo  o8o                       ]],
    -- [[`888'   `Y8b             .o8     .o8                       `888.     .8'   `"'                       ]],
    -- [[ 888     888  .ooooo.  .o888oo .o888oo  .ooooo.  oooo d8b   `888.   .8'   oooo  ooo. .oo.  .oo.      ]],
    -- [[ 888oooo888' d88' `88b   888     888   d88' `88b `888""8P    `888. .8'    `888  `888P"Y88bP"Y88b     ]],
    -- [[ 888    `88b 888ooo888   888     888   888ooo888  888         `888.8'      888   888   888   888     ]],
    -- [[ 888    .88P 888    .o   888 .   888 . 888    .o  888          `888'       888   888   888   888     ]],
    -- [[o888bood8P'  `Y8bod8P'   "888"   "888" `Y8bod8P' d888b          `8'       o888o o888o o888o o888o    ]],
    -- [[                                                                                                     ]],
    --
    -- Small Slant
    -- [[   ___      __  __         _   ___       ]],
    -- [[  / _ )___ / /_/ /____ ___| | / (_)_ _   ]],
    -- [[ / _  / -_) __/ __/ -_) __/ |/ / /  ' \  ]],
    -- [[/____/\__/\__/\__/\__/_/  |___/_/_/_/_/  ]],
    -- [[                                         ]],
    --
    -- Graffiti
    -- [[__________        __    __              ____   ____.__         ]],
    -- [[\______   \ _____/  |__/  |_  __________\   \ /   /|__| _____  ]],
    -- [[ |    |  _// __ \   __\   __\/ __ \_  __ \   Y   / |  |/     \ ]],
    -- [[ |    |   \  ___/|  |  |  | \  ___/|  | \/\     /  |  |  Y Y  \]],
    -- [[ |______  /\___  >__|  |__|  \___  >__|    \___/   |__|__|_|  /]],
    -- [[        \/     \/                \/                         \/ ]],
    -- [[                                                               ]],
    --
    -- Slant
    -- [[    ____       __  __           _    ___           ]],
    -- [[   / __ )___  / /_/ /____  ____| |  / (_)___ ___   ]],
    -- [[  / __  / _ \/ __/ __/ _ \/ ___/ | / / / __ `__ \  ]],
    -- [[ / /_/ /  __/ /_/ /_/  __/ /   | |/ / / / / / / /  ]],
    -- [[/_____/\___/\__/\__/\___/_/    |___/_/_/ /_/ /_/   ]],
    -- [[                                                   ]],
    --
    --
    -- [[                                                                       ]],
    -- [[                                                                     ]],
    -- [[       ████ ██████           █████      ██                     ]],
    -- [[      ███████████             █████                             ]],
    -- [[      █████████ ███████████████████ ███   ███████████   ]],
    -- [[     █████████  ███    █████████████ █████ ██████████████   ]],
    -- [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    -- [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    -- [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    -- [[                                                                       ]],
  }
}

M.mappings = {
  leader = ",",
  custom = {
    ["<leader>t"] = { "<cmd>FloatermNew --width=0.8 --height=0.8<cr>", "Open terminal" },
    ["<leader>f"] = { "va}zf", "Create folding" },
    ["<leader>yf"] = { expand_relative_path, "Copy relative file path" },
    ["<leader>yn"] = { expand_full_path, "Copy full file path" },
    ["<c-\\>"] = { "<cmd>FloatermToggle!<cr>", "Toggle Terminal", mode = { "t", "n" } },
    ["<c-q>"] = { "<cmd>:qa<cr>", "Close all buffers" },
    gp = { ":e#<cr>", "Switch between the lastest two buffers" },
    gd = { "<leader>gd", " Go to definition", remap = true },
    K = { "<leader>cd", " Show documentation", remap = true },
    ["<leader>br"] = { "<Plug>RestNvim", "Run the request under the cursor" },
    ["<leader>bp"] = { "<Plug>RestNvimPreview", "Preview the request cURL command" },
    ["<leader>ba"] = { "<Plug>RestNvimLast", "Re-run the last request" },
  },
}

M.nvim_tree = {
  update_cwd = false,
  update_focused_file = {
    update_cwd = false,
  },
  -- view = {
  --   adaptive_size = false,
  -- },
  filters = {
    dotfiles = false,
    exclude = { "github.*" },
  },
}

M.lsps = {
  astro = {},
  prismals = {},
  tailwindcss = {
    settings = {
      tailwindCSS = {
        experimental = {
          classRegex = {
            { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
          },
        },
      },
    },
  },
  rust_analyzer = {},
  rescriptls = {},
  tsserver = {
    on_attach = function(client, bufnr)
      require "twoslash-queries".attach(client, bufnr)
      local lsp_ts_utils = require "nvim-lsp-ts-utils"
      lsp_ts_utils.setup {
        filter_out_diagnostics_by_code = { 80001 },
      }
      lsp_ts_utils.setup_client(client)
    end,
  },
}

M.treesitter = "all"

M.plugins = {
  {
    "rest-nvim/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- stay in current windows (.http file) or change to results window (default)
        stay_in_current_window_after_split = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- table of curl `--write-out` variables or false if disabled
          -- for more granular control see Statistics Spec
          show_statistics = false,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        custom_dynamic_variables = {},
        yank_dry_run = true,
        search_back = true,
      })
    end,
  },
  "f-person/git-blame.nvim",
  "rescript-lang/vim-rescript",
  "nkrkv/nvim-treesitter-rescript",
  "devongovett/tree-sitter-highlight",
  "wakatime/vim-wakatime",
  "voldikss/vim-floaterm",
  "jose-elias-alvarez/nvim-lsp-ts-utils",
  {
    "JoosepAlviste/palenightfall.nvim",
    opts = {},
  },
  "mg979/vim-visual-multi",
  {
    "marilari88/twoslash-queries.nvim",
    opts = {
      multi_line = true,  -- to print types in multi line mode
      highlight = "Type", -- to set up a highlight group for the virtual text
    },
  },
  {
    "lukas-reineke/virt-column.nvim",
    opts = {
      char = "│",
      virtcolumn = "+1,80",
      exclude = {
        filetypes = { "dashboard" },
      },
    },
  },
  -- "Exafunction/codeium.vim",
}

local terminal_opened_status = function()
  local terminals = vim.inspect(vim.api.nvim_call_function("floaterm#buflist#gather", {}))
  local is_terminal_opened = #terminals > 2
  return is_terminal_opened and "󰆍" or ""
end

M.lualine = {
  options = {
    -- icons:
    --           
    component_separators = { left = "", right = "" },
    section_separators = { left = " ", right = "" },
  },
  sections = {
    a = { "mode" },
    b = { "branch" },
    -- c = { utils.statusline.get_file_name, terminal_opened_status },
    c = { "filename", terminal_opened_status },
    x = { "encoding", "fileformat", "filetype" },
    y = { "progress" },
    z = { "location" },
  },
}

M.noice = {
  messages = {
    view = "mini",
  },
  routes = {
    {
      filter = { event = "notify" },
      opts = { skip = true, title = "NvimTree" },
    },
  },
}

M.telescope = {
  pickers = {
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
  },
}

M.unload_plugins = { "snippets", "noice" }

M.flags = {
  disable_tabs = true,
  format_on_save = true,
  experimental_tsserver = true,
}

M.hooks = {
  after_setup = function()
    -- Floatterm config
    vim.g.floaterm_title = ""

    vim.o.backupdir = "/tmp/.nvim/backup"
    vim.o.directory = "/tmp/.nvim/swap"
    vim.o.undodir = "/tmp/.nvim/undo"

    -- do not show ~ for blank lines
    vim.opt.fillchars = { eob = ' ' }

    -- ftdetect
    vim.cmd [[ autocmd BufNewFile,BufRead *.mdx set filetype=markdown.jsx ]]

    -- Set relative number when in normal mode and normal number in insert mode
    -- Reference: https://vi.stackexchange.com/a/38037
    vim.cmd [[
      set number
      " Toggles relativenumber on and off based on mode
      augroup numbertoggle
        " Do not show relative number in these filetypes
        let ignore = ['dashboard', 'NvimTree', 'floaterm', 'TelescopePrompt', 'mason', 'noice']
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * if index(ignore, &ft) < 0 | set relativenumber | endif
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
      augroup END
    ]]

    vim.o.wildignore = ""

    -- colorcolumn1
    -- -- colorcolumn from 80 to the end of the buffer width
    -- vim.cmd [[ let &colorcolumn=join(range(81,999),",") ]]

    -- colorcolumn2
    -- -- Show a different background color for texts that overlength
    -- vim.cmd [[
    --   augroup vimrc_autocmds
    --   au!
    --       autocmd BufRead * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    --       autocmd BufRead * match OverLength /\%81v.*/
    --   augroup END
    -- ]]
  end,
}

return M
