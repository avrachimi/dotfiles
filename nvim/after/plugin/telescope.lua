local present, telescope = pcall(require, "telescope")
if not present then
    return
end

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader><C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Telescope File Browser, not sure if needed, testing it out
require("telescope").load_extension("file_browser")

vim.api.nvim_set_keymap(
    "n",
    "<leader>pb",
    ":Telescope file_browser<CR>",
    { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<leader>pc",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)

telescope.setup({
    pickers = {
        buffers = {
            initial_mode = "normal"
        }
    }
})
