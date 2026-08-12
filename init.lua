-- ==============================================================================
-- init.lua
-- The main entry point for Neovim.
-- We keep this file ultra lean and load our configurations from the `lua/` folder.
-- ==============================================================================

-- 1. Load core settings (line numbers, clipboard, etc.)
require("core.options")

-- 2. Load keymaps (custom shortcuts)
require("core.keymaps")

-- 3. We will load plugins here later!
