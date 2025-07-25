local M = {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
	 lazy = false,   -- We want to see the highlighting since the start, so false
}

function M.config()
    require "nvim-treesitter.configs".setup {
        ensure_installed = { "c", "lua", "bash", "python" },
        sync_install = true,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    }
end

return M
