return {
  "chentoast/marks.nvim",
  config = function()
    require("marks").setup({
      builtin_marks = { ".", "<", ">", "^" },
    })
  end
}
