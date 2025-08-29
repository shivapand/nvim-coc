vim.keymap.set(
  { 'i', 'n' },
  '<C-s>',
  '<ESC>:silent w<CR>',
  {
    desc = 'Save file',
    silent = true
  }
)

vim.keymap.set(
  'n',
  '<Leader>/', ':noh<CR>',
  {
    desc = 'Clear search highlight',
    silent = true
  }
)

vim.keymap.set(
  'n',
  '<Leader>g',
  ':call system("xclip -i -selection clipboard", expand("%:~:."))<CR>',
  {
    desc = 'Copy file path',
    silent = true
  }
)

vim.keymap.set(
  'n',
  '-',
  '<CMD>Oil --float<CR>',
  { desc = 'Open parent directory' }
)

vim.keymap.set(
  'n',
  '<C-S-Up>',
  '<Cmd>BufferPrevious<CR>',
  { desc = 'BufferPrevious' }
)
vim.keymap.set(
  'n',
  '<C-S-Down>',
  '<Cmd>BufferNext<CR>',
  { desc = 'BufferNext' }
)
vim.keymap.set(
  'n',
  '<Leader>j',
  function()
    vim.cmd('BufferMovePrevious')
  end,
  { desc = 'BufferMovePrevious' }
)
vim.keymap.set(
  'n',
  '<Leader>k',
  function()
    vim.cmd('BufferMoveNext')
  end,
  { desc = 'BufferMoveNext' }
)

vim.keymap.set(
  'n',
  '<leader>qs',
  function()
    require('persistence').load()
  end
)
vim.keymap.set(
  'n',
  '<leader>qS',
  function()
    require('persistence').select()
  end
)
vim.keymap.set(
  'n',
  '<leader>ql',
  function()
    require('persistence').load({ last = true })
  end
)
vim.keymap.set(
  'n',
  '<leader>qd',
  function()
    require('persistence').stop()
  end
)
