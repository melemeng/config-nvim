local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local options = { noremap = true, silent = true }

map('n', '0', '^', {})

map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('x', 'ga', '<Plug>(EasyAlign)', options)
map('n', 'ga', '<Plug>(EasyAlign)', options)
map('x', 'p', '"0p', {})
map('x', 'P', '"0P', {})
map('x', '<C-c>', ':OSCYank<cr>', options)
map('n', 's', '<plug>(SubversiveSubstitute)', {})
map('n', 'ss', '<plug>(SubversiveSubstituteLine)', {})
map('n', 'S', '<plug>(SubversiveSubstituteToEndOfLine)', {})
map('n', '<leader>s', '<plug>(SubversiveSubstituteRange)', {})
map('x', '<leader>s', '<plug>(SubversiveSubstituteRange)', {})
map('x', '<leader>ss', '<plug>(SubversiveSubstituteWordRange)', {})
map('o', 'ie', ':exec "normal! ggVG"<cr>', { noremap = true })

map('n', 'tt', '<cmd>NvimTreeToggle<cr>', options)
map('n', 'tf', '<cmd>NvimTreeFindFile<cr>', options)
map('n', 'tn', '<cmd>tabnext<cr>', options)
map('n', 'tb', '<cmd>tabnew<cr>', options)
map('n', 'tc', '<cmd>tabclose<cr>', options)
map('n', 'te', '<cmd>tabedit<cr>', options)
map('n', 'td', '<cmd>tabdo<cr>', options)

map('n', '<leader>cd', '<cmd>cd %:p:h | pwd<cr>', options)
map("n", "<leader>xx", "<cmd>Trouble<cr>", options)
map("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", options)
map("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", options)
map("n", "<leader>xl", "<cmd>Trouble loclist<cr>", options)
map("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", options)
map("n", "gR", "<cmd>Trouble lsp_references<cr>", options)

map('i', '<TAB>', '<Plug>(completion_smart_tab)', {})
map('i', '<S-TAB>', '<Plug>(completion_smart_s_tab)', {})

map('n', '<leader>al', '<cmd>split term://arc lint<cr>', options)
map('n', '<leader>am', '<cmd>split term://meerkat<cr>', options)


map('n', '<leader>he', '<cmd>vsplit term://hg histedit<cr>', options)
map('n', '<leader>hc', '<cmd>vsplit term://hg commit<cr>', options)
map('n', '<leader>hg', '<cmd>vsplit term://hg status<cr>', options)
map('n', '<leader>hu', '<cmd>!hg pull<cr>', options)
map('n', '<leader>hp', '<cmd>!hg previous<cr>', options)
map('n', '<leader>hn', '<cmd>!hg next<cr>', options)
map('n', '<leader>ha', '<cmd>!hg amend && jf submit<cr>', options)
map('n', '<leader>hl', '<cmd>vsplit term://hg sl<cr>', options)
map('n', '<leader>hd', '<cmd>vsplit term://hg diff<cr>', options)
map('n', '<leader>hs', '<cmd>terminal hg show --pager never --nodate --noprefix<cr>', options)
map('n', '<leader>ht', '<cmd>terminal hg show --pager never --nodate --noprefix --stat<cr>', options)
