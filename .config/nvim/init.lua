# Globally define the operating system
_G.is_windows = vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1

require("backmag")
