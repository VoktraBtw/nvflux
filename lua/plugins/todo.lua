-- todo list for nvim :D
return {
  "vimichael/floatingtodo.nvim",
  config = function()
    require("floatingtodo").setup({
      target_file = "~/personal/deez-notes/todo.md",
      width = 0.9,
      position = 'center',
    })
    vim.keymap.set("n", "<leader>d", ":Td<CR>", { silent = true })
  end
}
