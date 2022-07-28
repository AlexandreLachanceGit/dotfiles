local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

vim.cmd("packadd packer.nvim")

local packer = require "packer"

local util = require "packer.util"
packer.init(
    {
        package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack")
    }
)

--- startup and add configure plugins
packer.startup(
    function()
        local use = use
        -- add you plugins here like:
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "sheerun/vim-polyglot"
        use "morhetz/gruvbox"
        use "norcalli/nvim-colorizer.lua"
        use "LionC/nest.nvim"
        use "sbdchd/neoformat"
        use "windwp/nvim-autopairs"
        use "p00f/nvim-ts-rainbow"

        use {
            "akinsho/toggleterm.nvim",
            tag = "v2.*"
        }
        use {
            "ms-jpq/coq_nvim",
            branch = "coq"
        }

        use {
            "ms-jpq/coq.artifacts",
            branch = "artifacts"
        }

        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        use {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.x",
            requires = {{"nvim-lua/plenary.nvim"}}
        }
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons" -- optional, for file icons
            },
            tag = "nightly"
        }
    end
)

require("nvim-autopairs").setup()
require("colorizer").setup()
require("nvim-tree").setup()
require("lualine").setup {}
require("lsp")
require("toggleterm").setup()

require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true
    },
    -- ...
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
    }
}

vim.g.coq_settings = {
    auto_start = "shut-up"
}
