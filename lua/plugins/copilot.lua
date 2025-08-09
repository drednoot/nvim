return {
  'github/copilot.vim',
  enabled = false, 
  lazy = false,

  config = function()
    vim.g.copilot_proxy = os.getenv("COPILOT_PROXY_URL")
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
      ['gitcommit'] = false,
      ['gitrebase'] = false,
      ['svn'] = false,
      ['help'] = false,
      ['TelescopePrompt'] = false,
      ['oil'] = false,
      ['norg'] = false,
    }
  end,

  keys = {
    {
			'<c-l>',
      mode = 'i',
			function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), 'i')
      end,
      noremap = true,
      silent = true,
		},
  }
}
