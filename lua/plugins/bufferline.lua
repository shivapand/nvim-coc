return {
  'akinsho/bufferline.nvim',
  config = function()
    require('bufferline').setup({
      options = {
        mode = "tabs"
      }
    })
  end
}
