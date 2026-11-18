-- ==============================================================================
-- init.lua
-- The main entry point for Neovim.
-- We keep this file ultra lean and load our configurations from the `lua/` folder.
-- ==============================================================================

-- 1. Load core settings (line numbers, clipboard, etc.)
require("core.options")

-- 2. Load keymaps (custom shortcuts)
require("core.keymaps")

-- 3. Bootstrap and load lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Tell lazy.nvim to load any plugin configurations inside the lua/plugins/ folder!
require("lazy").setup("plugins")
