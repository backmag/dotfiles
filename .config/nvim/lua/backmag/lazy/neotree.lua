return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.api.nvim_create_autocmd("QuitPre", {
      callback = function()
        local neotree_wins = {}
        local wins = vim.api.nvim_list_wins()

        for _, win in ipairs(wins) do
          local buf = vim.api.nvim_win_get_buf(win)
          local bufname = vim.api.nvim_buf_get_name(buf)

          if bufname:match("neo%-tree") then
            table.insert(neotree_wins, win)
          end
        end

        -- If all remaining windows are neo-tree, close neo-tree windows
        if #neotree_wins == #wins or #neotree_wins == #wins - 1 then
          for _, win in ipairs(neotree_wins) do
            vim.api.nvim_win_close(win, true)
          end
        end
      end,
    })
  end,
}
