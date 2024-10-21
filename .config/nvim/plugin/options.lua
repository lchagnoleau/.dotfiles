local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2 
opt.expandtab = true 
opt.autoindent = true 

opt.ignorecase = true 
opt.smartcase = true 
opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true 
opt.scrolloff = 8

opt.termguicolors = true
opt.updatetime = 50

opt.backspace = "indent,eol,start" 

opt.clipboard = "unnamedplus" 

opt.splitright = true 
opt.splitbelow = true 

opt.swapfile = false 

opt.undofile = true 

opt.iskeyword:append("-") 

opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })

