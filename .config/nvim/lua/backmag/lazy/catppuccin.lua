function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    "catppuccin/nvim",
    name = "catpuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup()
        vim.cmd("colorscheme catppuccin")
    end,
}

