-- Lua BootStrapping
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
                                  install_path})
end

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Color Schemes
    use("fratajczak/one-monokai-vim")
    use("chriskempson/base16-vim")
    use("morhetz/gruvbox")

    -- General
    use("preservim/nerdtree")
    use("junegunn/fzf")
    use("junegunn/fzf.vim")

    -- Autocomplete and snippets
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")

    use("sbdchd/neoformat")

    use("L3MON4D3/LuaSnip") -- Snippets plugin

    use("onsails/lspkind-nvim")

    -- LSP Configs
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.lsp_config")
        end
    })

    -- Treesitting configs
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("nvim-tree").setup({})
        end
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("plugins.treesitter_config")
        end
    })

    use({
        "akinsho/bufferline.nvim"
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true
        },
        config = function()
            require("plugins.evil_line")
            -- 	})
        end
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)
-- End Lua BootStrapping
