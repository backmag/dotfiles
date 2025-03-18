return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        --vim.fn["mkdp#util#install"]()
        vim.fn.system("cd " .. vim.fn.stdpath("data") .. "/lazy/markdown-preview.nvim && npm install")
    end,
    config = function()
        vim.g.mkdp_open_to_the_world = 1
        vim.g.mkdp_open_ip = '127.0.0.1'
        vim.g.mkdp_port = '8888'
    end,
}
