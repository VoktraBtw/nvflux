-- best plugin ever
return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      local telescope = require("telescope")
      local themes = require("telescope.themes")
      local builtin = require("telescope.builtin")

      local dropdown_no_border = themes.get_dropdown({
        winblend = 15,
        border = false,
        previewer = false,
        results_title = false,
        prompt_title = false,
      })

      telescope.setup({
        defaults = {
          winblend = 15,
          border = false,
          prompt_prefix = "   ",
          selection_caret = " ",
          layout_config = {
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
          color_devicons = true,
        },
        pickers = {
          find_files = dropdown_no_border,
          live_grep  = dropdown_no_border,
          buffers    = dropdown_no_border,
          help_tags  = dropdown_no_border,
        },
        extensions = {
          ["ui-select"] = {
            themes.get_dropdown({
              winblend = 15,
              border = false,
            }),
          },
        },
      })

      telescope.load_extension("ui-select")

      -- keymaps
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
  },
}

