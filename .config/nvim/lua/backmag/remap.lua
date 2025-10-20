vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Center window when moving around
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Remap to copy/paste into system clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("v", "y", function()
  local cursor_pos = vim.fn.getpos(".")
  vim.cmd('normal! y')
  vim.fn.setpos(".", cursor_pos)
end, {desc = "Yank without moving cursor"})

-- Remap markdown preview
vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<CR>', { noremap = true })

-- Remap to open Neotree
vim.keymap.set('n', '<leader>nt', ':Neotree filesystem reveal<CR>')

-- Remove highlighting
vim.keymap.set('n', '<leader>no', function()
  vim.cmd.nohlsearch()
end)

-- Format document with LSP
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "Format with LSP" })

-- Go to the definition of the symbol under the cursor
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

-- Show available code actions for the current context
-- This includes things like auto-imports, refactorings, etc.
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Custom function to show hover info if available, otherwise show diagnostics
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover()
end, { desc = "Show documentation or diagnostics under cursor" })

-- Run current file as a python script
local function run_current_python_file()
  local file = vim.fn.expand('%')
  vim.cmd('!python ' .. file)
end

-- Run current file as a csharp script
local function run_current_csharp_file()
  local file = vim.fn.expand('%:p')
  local win_path

  if _G.is_windows then
    win_path = file
  else
    win_path = vim.fn.system('wslpath -w "' .. file .. '"'):gsub('\n', '')
  end
  vim.cmd('!dotnet-script.exe "' .. win_path .. '"')
end

--run python
vim.keymap.set("n", '<leader>rp', run_current_python_file, { noremap = true, silent = true })
--run dotnet
vim.keymap.set("n", '<leader>rd', run_current_csharp_file, { noremap = true, silent = true })
