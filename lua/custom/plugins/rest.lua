-- rest.nvim configuration for vim.pack plugin manager

-- Install rest.nvim and all its required dependencies
vim.pack.add {
  'https://github.com/rest-nvim/rest.nvim',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/lunarmodules/lua-mimetypes',
  'https://github.com/manoelcampos/xml2lua',
}

-- Add xml2lua and lua-mimetypes root directories to Lua's package search path.
-- Since they do not follow the standard Neovim folder structure (which uses /lua),
-- we need to let Lua know where to find their source files directly.
local opt_dir = vim.fs.joinpath(vim.fn.stdpath('data'), 'site', 'pack', 'core', 'opt')
local xml2lua_dir = vim.fs.joinpath(opt_dir, 'xml2lua')
local mimetypes_dir = vim.fs.joinpath(opt_dir, 'lua-mimetypes')

package.path = package.path .. ';' .. xml2lua_dir .. '/?.lua'
package.path = package.path .. ';' .. mimetypes_dir .. '/?.lua'
