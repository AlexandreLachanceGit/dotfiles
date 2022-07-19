local nest = require("nest")

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
            {"Right>", "<cmd>wincmd l<cr>"}
        }
    },
    {
        "<C-",
        {"s>", "<cmd>Neoformat | w<cr>"}
    }
}
