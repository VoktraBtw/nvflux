local core = require("core")

local colorscheme = "nvflux"

vim.opt.fillchars:append({ eob = " " })

vim.g.mkdp_markdown_css = vim.fn.stdpath("config") .. "/assets/md.css"
vim.g.mkdp_highlight_css = vim.fn.stdpath("config") .. "/assets/mdhl.css"

core.color_overrides.setup_colorscheme_overrides()
core.dashboard.setup_dashboard_image_colors()


-- theme
vim.cmd("colorscheme " .. colorscheme)

-- imports
require('config.options')
require('config.keymaps')
require('config.lazy')

