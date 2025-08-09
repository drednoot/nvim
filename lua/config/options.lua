vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autowrite = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmode = true
vim.opt.history = 1000
vim.opt.wildmenu = true
vim.opt.autochdir = false
vim.opt.spelllang = { 'en_us', 'ru_ru' }
vim.opt.showmatch = false
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.cursorline = true
vim.opt.ff = 'unix'
vim.opt.ffs = 'unix,dos'
vim.opt.autoread = true
vim.opt.laststatus = 0

vim.opt.signcolumn = "yes"
vim.opt.backspace = "indent,eol,start"

vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 5

vim.cmd [[autocmd FileType c,cpp setlocal commentstring=//\ %s]]
vim.cmd [[autocmd FileType ninja set tabstop=2 shiftwidth=2 expandtab]]
vim.cmd [[autocmd FileType cs set tabstop=4 shiftwidth=4 expandtab]]

vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
