local nest = require("nest")

vim.cmd("tnoremap <Esc> <C-\\><C-n>")
vim.cmd("map <C-h> <Nop>")
vim.cmd("nnoremap <CR> :noh<CR><CR>")

nest.applyKeymaps {
    {
        "<leader>",
        {
            {
                "f",
                {
                    {"f", "<cmd>Telescope find_files<cr>"},
                    {"l", "<cmd>Telescope live_grep<cr>"},
                    {
                        "g",
                        {
                            {"b", "<cmd>Telescope git_branches<cr>"},
                            {"c", "<cmd>Telescope git_commits<cr>"},
                            {"s", "<cmd>Telescope git_status<cr>"}
                        }
                    }
                }
            },
            {"t", "<cmd>NvimTreeToggle<cr>"}
        }
    },
    {
        "<M-",
        {
            {"t>", "<cmd>NvimTreeToggle<cr>"},
            {"Up>", "<cmd>wincmd k<cr>"},
            {"Down>", "<cmd>wincmd j<cr>"},
            {"Left>", "<cmd>wincmd h<cr>"},
            {"Right>", "<cmd>wincmd l<cr>"},
            {"k>", "<cmd>wincmd k<cr>"},
            {"j>", "<cmd>wincmd j<cr>"},
            {"h>", "<cmd>wincmd h<cr>"},
            {"l>", "<cmd>wincmd l<cr>"},
        }
    },
    {
        "<C-",
        {"s>", "<cmd>Neoformat | w<cr>"}
    }
}
