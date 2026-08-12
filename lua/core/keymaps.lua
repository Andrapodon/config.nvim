-- ==============================================================================
-- lua/core/keymaps.lua
-- This file contains custom keybindings to make Neovim easier to use.
-- ==============================================================================

-- Set the "leader" key to Space.
-- The leader key is the prefix for most of your custom shortcuts.
vim.g.mapleader = " "

local keymap = vim.keymap -- For conciseness

-- Normal mode bindings
-- Clear search highlights when pressing ESC
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Easy file saving
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit Neovim" })
