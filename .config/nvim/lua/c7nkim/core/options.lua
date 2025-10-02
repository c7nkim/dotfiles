-- neovim options configuration

-- schedule the setting after `UiEnter` because it can increase startup-time
vim.schedule(function()
    vim.o.clipboard = "unnamedplus"
end)

vim.g.have_nerd_font = true
vim.o.number = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.breakindent = true
vim.o.undofile = false
vim.o.cmdheight = 0
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true

-- NOTE: listchars is set using `vim.opt` instead of `vim.o`
-- similar to `vim.o` but offers an interface for conveniently interacting with tables
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
