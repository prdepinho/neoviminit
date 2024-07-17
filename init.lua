-- ~\AppData\Local\nvim\init.lua

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.termguicolors = true
vim.o.expandtab = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd('hi CursorColumn cterm=none guibg=gray15')
vim.cmd('hi CursorLine cterm=none guibg=gray15')

vim.keymap.set('n', '<c-n>', 'gt')  
vim.keymap.set('n', '<c-p>', 'gT')
vim.keymap.set('n', '<F6>', ':tabnew C:/Users/Paulo/AppData/Local/nvim/init.lua<CR>')

vim.keymap.set('i', '{<RETURN>', '{<RETURN>}<ESC>O')
vim.keymap.set('i', '(<RETURN>', '(<RETURN>)<ESC>O')
vim.keymap.set('i', '[<RETURN>', '[<RETURN>]<ESC>O')

vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

vim.keymap.set('t', '<c-w>k', '<Cmd>wincmd k<CR>')
vim.keymap.set('t', '<c-w>j', '<Cmd>wincmd j<CR>')
vim.keymap.set('t', '<c-w>h', '<Cmd>wincmd h<CR>')
vim.keymap.set('t', '<c-w>l', '<Cmd>wincmd l<CR>')
vim.keymap.set('t', '<c-w>:', '<C-\\><C-n>:')

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'html', 'xml'},
  callback = function(args)
    vim.keymap.set('i', '><RETURN>', '><ESC>T<yWf>a</<ESC>pF<i<RETURN><ESC>O')
    vim.keymap.set('i', '><SPACE>', '><ESC>T<yWf>a</<ESC>pF<i')
  end
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua',
  callback = function(args)
    vim.keymap.set('i', 'do<RETURN>', 'doend<ESC>Fei<RETURN><ESC>O')
    vim.keymap.set('i', 'then<RETURN>', 'thenend<ESC>Fei<RETURN><ESC>O')
    vim.keymap.set('i', 'function<SPACE>', 'functionend<ESC>Fei<RETURN><ESC>kA<SPACE>')
  end
})
