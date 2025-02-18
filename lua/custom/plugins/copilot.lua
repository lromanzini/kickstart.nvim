-- Copilot and CopilotChat configuration for vim.pack plugin manager

vim.pack.add {
  'https://github.com/github/copilot.vim',
  'https://github.com/CopilotC-Nvim/CopilotChat.nvim',
}

require('CopilotChat').setup {
  -- See Configuration section for options
  -- NOTE: Configures the size of the CopilotChat window.
  -- window = {
  --   width = 0.3,
  -- },
}
