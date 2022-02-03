local view = require('nvim-tree.view')

local tab = {}
tab.toggle_tree = function()
  if view.win_open() then
    require'nvim-tree'.close()
    require'bufferline.state'.set_offset(0)
  else
    require'bufferline.state'.set_offset(31, 'File Explorer')
    require'nvim-tree'.open()
  end
end
vim.api.nvim_set_keymap('n', '<A-m>', ":lua require('modules/tree').toggle_tree()<CR>", {noremap = true, silent = true})

return tab
