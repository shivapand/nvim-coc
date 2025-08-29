vim.api.nvim_create_autocmd(
  'BufReadPost',
  {
    group = vim.api.nvim_create_augroup(
      'OilRelativePathFix',
      { clear = true }
    ),
    callback = function()
      vim.cmd('cd `pwd`')
    end,
    desc = 'Fix for Oil opening files with absolute-path'
  }
)


vim.opt.sessionoptions:append('globals')
vim.api.nvim_create_autocmd(
  'User',
  {
    pattern = 'PersistenceSavePre',
    callback = function()
      vim.api.nvim_exec_autocmds(
        'User',
        { pattern = 'SessionSavePre' }
      )
    end,
  }
)
