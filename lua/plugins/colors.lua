-- colors and colors
return {
  { -- Show CSS Colors
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  
  { 
    "psliwka/termcolors.nvim",
  },

}
