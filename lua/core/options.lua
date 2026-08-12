-- ==============================================================================
-- lua/core/options.lua
-- This file contains all the fundamental Neovim settings.
-- ==============================================================================

local opt = vim.opt

-- Line numbers
opt.number = true         -- Show absolute line numbers
opt.relativenumber = true -- Show relative line numbers (makes jumping up/down easier)

-- Tabs & Indentation
opt.tabstop = 4           -- 1 tab = 4 spaces
opt.shiftwidth = 4        -- Shift 4 spaces when using >> or <<
opt.expandtab = true      -- Convert tabs to spaces
opt.autoindent = true     -- Copy indent from current line when starting a new one

-- Search
opt.ignorecase = true     -- Ignore case when searching
opt.smartcase = true      -- If you type a capital letter, it becomes case-sensitive

-- Appearance
opt.termguicolors = true  -- Enable 24-bit RGB colors
opt.signcolumn = "yes"    -- Always show the sign column (prevents text from jumping when errors appear)
opt.cursorline = true     -- Highlight the current line

-- System Clipboard Integration
opt.clipboard = "unnamedplus"

-- Wayland clipboard explicit fix
vim.g.clipboard = {
    name = 'wl-clipboard',
    copy = {
        ['+'] = {'wl-copy', '--foreground', '--type', 'text/plain'},
        ['*'] = {'wl-copy', '--foreground', '--type', 'text/plain'},
    },
    paste = {
        ['+'] = {'wl-paste', '--no-newline'},
        ['*'] = {'wl-paste', '--no-newline'},
    },
    cache_enabled = 1,
}
