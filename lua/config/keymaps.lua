vim.keymap.set({ 'i', 'n' }, '<C-s>', '<ESC>:silent w<CR>', {
	desc = 'Save file',
	silent = true
})

vim.keymap.set('n', '<Leader>/', ':noh<CR>', {
	desc = 'Clear search highlight',
	silent = true
})

vim.keymap.set(
	'n',
	'<Leader>g',
	function()
		vim.fn.setreg('+', vim.fn.expand('%:~:.'))
	end,
	{
		desc = 'Copy file path',
		silent = true
	}
)

vim.keymap.set('n', '<Leader>j', ':execute "tabmove" tabpagenr() - 2<CR>', {
	desc = 'Move tab prev'
})
vim.keymap.set('n', '<Leader>k', ':execute "tabmove" tabpagenr() + 1<CR>', {
	desc = 'Move tab next'
})

vim.keymap.set(
	'n',
	'-',
	function()
		if vim.bo.filetype == 'nerdtree' then
			-- If in NERDTree, go up one directory
			vim.cmd('call nerdtree#ui_glue#invokeKeyMap("u")')
		else
			-- If not in NERDTree, toggle it
			-- Use current directory if no file is open
			if vim.fn.expand('%') == '' then
				vim.cmd('NERDTreeToggle .')
			else
				vim.cmd('NERDTreeToggle%')
			end
		end
	end,
	{ desc = 'NERDTree toggle or go up directory' }
)

vim.keymap.set('n', '_', ':NERDTree<CR>', { desc = 'NERDTree root directory' })

vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>', {
	desc = 'Toggle NERDTree'
})

vim.keymap.set(
	'n',
	'<C-t>',
	function()
		if vim.bo.filetype == 'nerdtree' then
			-- If in NERDTree, send Shift-t instead
			vim.cmd('call nerdtree#ui_glue#invokeKeyMap("T")')

			vim.cmd('NERDTreeToggle<CR>')

			vim.cmd('tabnext')
		else
			-- If not in NERDTree, use normal Ctrl-t behavior
			vim.cmd('tabnew')
		end
	end,
	{ desc = 'Open in new tab (Ctrl-t in NERDTree, normal tabnew elsewhere)' }
)

