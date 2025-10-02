-- lazy plugin manager setup
-- loads all plugins from individual plugin files

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

local plugins = {
    require("c7nkim.plugins.guess-indent"),
    require("c7nkim.plugins.gitsigns"),
    require("c7nkim.plugins.which-key"),
    require("c7nkim.plugins.telescope"),
    require("c7nkim.plugins.lsp"),
    require("c7nkim.plugins.blink"),
    require("c7nkim.plugins.catppuccin"),
    require("c7nkim.plugins.todo-comments"),
    require("c7nkim.plugins.mini"),
    require("c7nkim.plugins.treesitter"),
    require("c7nkim.plugins.render-markdown"),
}

require("lazy").setup(plugins, {
    ui = {
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 ",
        },
    },
})
