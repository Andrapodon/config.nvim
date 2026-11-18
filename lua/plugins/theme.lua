-- ==============================================================================
-- lua/plugins/theme.lua
-- Here is where we load plugins related to appearance!
-- ==============================================================================

return {
    -- 1. A plugin that aggressively strips all background colors to make Neovim perfectly transparent
    {
        "xiyaowong/transparent.nvim",
        config = function()
            -- Automatically enable transparency on startup
            require("transparent").setup({
                -- Extra groups to make transparent
                extra_groups = {
                    "NormalFloat", -- Floating windows
                    "NvimTreeNormal", -- File explorer background (if we add one later)
                },
            })
            require("transparent").clear_prefix("NeoTree")
            require("transparent").clear_prefix("lualine")
        end,
    },
    
    -- 2. Let's add a nice, minimal status bar at the bottom so Neovim doesn't look totally bare
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Gives us file icons!
        config = function()
            require("lualine").setup({
                options = {
                    -- We tell the statusline to use a transparent theme too!
                    theme = "transparent",
                }
            })
        end,
    },
    
    -- 3. A dark, moody, deep-sea aesthetic theme (Kanagawa) perfect for a Rapture vibe!
    {
        "rebelot/kanagawa.nvim",
        priority = 1000, -- Ensure it loads first
        config = function()
            require('kanagawa').setup({
                transparent = true, -- Keep your transparent background!
                theme = "wave",     -- Deep sea / ocean wave colors
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none" -- Keeps the side numbers transparent too
                            }
                        }
                    }
                }
            })
            -- Activate the theme
            vim.cmd("colorscheme kanagawa")
        end,
    }
}
