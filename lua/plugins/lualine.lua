-- another pretty ui
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = {
          normal = { a = { fg = "#000000", bg = "#888888" }, 
            b = { fg = "#888888", bg = "#151515" },
            c = { fg = "#888888", bg = "#222222" },
            z = { fg = "#000000", bg = "#888888" },
            y = { fg = "#888888", bg = "#151515" },
            x = { fg = "#888888", bg = "#222222" },
          },
          insert = {
            a = { fg = "#000000", bg = "#888888" },
            z = { fg = "#000000", bg = "#888888" }, 
          },
          visual = {
            a = { fg = "#000000", bg = "#888888" }, 
            z = { fg = "#000000", bg = "#888888" },
          },
          replace = {
            a = { fg = "#000000", bg = "#888888" }, 
            z = { fg = "#000000", bg = "#888888" }, 
          },
          command = {
            a = { fg = "#000000", bg = "#888888" },
            z = { fg = "#000000", bg = "#888888" }, 
          },
          inactive = {
            a = { fg = "#000000", bg = "#222222" },
            b = { fg = "#888888", bg = "#151515" },
            c = { fg = "#888888", bg = "#151515" },
            z = { fg = "#000000", bg = "#222222" },
          },
        },
        component_separators = "",
        section_separators = "",
        disabled_filetypes = {
          statusline = { "alpha" },
          winbar = {},
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {
          function()
            local encoding = vim.o.fileencoding
            if encoding == "" then
              return vim.bo.fileformat .. " :: " .. vim.bo.filetype
            else
              return encoding .. " :: " .. vim.bo.fileformat .. " :: " .. vim.bo.filetype
            end
          end,
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
