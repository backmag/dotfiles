return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  config = function()
    local browser
    if is_windows then
      browser = 'chrome'
    else
      browser = 'firefox'
    end
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_open_ip = '127.0.0.1'
    vim.g.mkdp_port = '8888'
    vim.g.mkdp_browser = browser
  end,
}
