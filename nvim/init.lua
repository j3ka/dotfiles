local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.g.expandtab = true
vim.cmd [[ set expandtab ]]
vim.opt.shiftwidth = 2
vim.opt.hlsearch = true
vim.opt.hidden = true
vim.opt.encoding = "utf-8"
vim.opt.showtabline = 0
vim.opt.autoindent = true
vim.opt.autowrite = true
vim.cmd [[ filetype plugin on ]]
vim.cmd [[ syntax on ]]
vim.cmd [[ syntax enable ]]
vim.cmd [[ set noshowmode ]]
vim.opt.laststatus = 0
vim.opt.fillchars:append { eob = " " }
vim.opt.cursorline = true

-- vim.cmd [[
-- set list
-- set listchars=tab:»-,extends:»,precedes:«,space:·
-- ]]

vim.keymap.set("n", "<SPACE>", "<Nop>")
vim.g.mapleader = " "

require("lazy").setup({
  "hrsh7th/vim-vsnip",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({})
      -- lspconfig.jdtls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.kotlin_language_server.setup({})
      lspconfig.phpactor.setup({})
      lspconfig.hls.setup{}
      vim.api.nvim_command [[ hi def link LspReferenceText CursorLine ]]
      vim.api.nvim_command [[ hi def link LspReferenceWrite CursorLine ]]
      vim.api.nvim_command [[ hi def link LspReferenceRead CursorLine ]]
    end,
    keys = {
      {"<leader>ls", "<cmd>:lua vim.lsp.buf.signature_help()<cr>", "LspSignatureHelp"},
      {"<leader>la", "<cmd>:lua vim.lsp.buf.code_action()<cr>", "LspCodeAction"},
      {"<leader>lr", "<cmd>:lua vim.lsp.buf.rename()<cr>", "LspRename"},
      {"<leader>lrr", "<cmd>:lua vim.lsp.buf.hover()<cr>", "LspReferenceRead"},
      {"<leader>lf", "<cmd>:lua vim.lsp.buf.format()<cr>", "LspFormat"},
    }
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup({
        auto_close = true
      })
    end,
    keys = {
      { "<leader>lo", "<cmd>:SymbolsOutline<cr>", desc="SymbolOutline" },
    },
  },
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  {
    "hrsh7th/nvim-cmp",	
    config = function()
      local cmp = require("cmp")
      cmp.setup({
	sources = cmp.config.sources(
    { { name = "nvim_lsp" } },
    { {name = "buffer"} }
  ),
  snippet = {
    expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
  },
  mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        }),
      })
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      require('lspconfig')['gopls'].setup {
        capabilities = capabilities
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
-------- Files
      { "<leader>ff", "<cmd>:Telescope find_files<cr>", desc="FindFiles" },
      { "<leader>fg", "<cmd>:Telescope live_grep<cr>", desc="Grep" },
-------- Buffers
      { "<leader>bb", "<cmd>:Telescope buffers<cr>", desc="Buffers" },
-------- LSP
      { "<leader>lrf", "<cmd>:Telescope lsp_references<cr>", desc="LspReferences" },
      { "<leader>ld", "<cmd>:Telescope lsp_diagnostics<cr>", desc="LspDiagnostics" },
      { "<leader>li", "<cmd>:Telescope lsp_implementations<cr>", desc="LspImplementations" },
      { "<leader>ldd", "<cmd>:Telescope lsp_definitions<cr>", desc="LspDefinitions" },
      { "<leader>ltd", "<cmd>:Telescope lsp_type_definitions<cr>", desc="LspTypeDefinitions" },
-------- Git
      { "<leader>gc", "<cmd>:Telescope git_commits<cr>", desc="GitCommits" },
      { "<leader>gbc", "<cmd>:Telescope git_bcommits<cr>", desc="GitBufferCommits" },
      { "<leader>gb", "<cmd>:Telescope git_brances<cr>", desc="GitBranches" },
      { "<leader>gs", "<cmd>:Telescope git_status<cr>", desc="GitStatus" },
      
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {width = 50},
        filters = {dotfiles = true},
      })
    end,
    keys = {
      { "<leader>ft", "<cmd>:NvimTreeToggle<cr>", desc="NvimTree" }
    }
  },
  { 
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {"<leader>tt", "<cmd>:TroubleToggle<cr>", "Trouble"},
    }
  },
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup()
    end,
    keys = {
      {"<leader>;", "<cmd>:HopPattern<cr>", "JumpToSymbol"},
    }
  },
  "airblade/vim-gitgutter",
  {
    "sindrets/diffview.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      vim.g.gitgutter_enabled = 1
      require("gitsigns").setup()
    end,
    keys = {
      {"<leader>gfh", "<cmd>:DiffviewFileHistory<cr>"},
      {"<leader>gq", "<cmd>:DiffviewClose<cr>"},
      {"<leader>go", "<cmd>:DiffviewOpen<cr>"},
      {"<leader>gr", "<cmd>:DiffviewRefresh<cr>"},
      {"<leader>gb", "<cmd>:Gitsigns blame_line<cr>"},
    },
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup{}
    end
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 100,
    config = function()
      vim.o.background = "light"
      vim.cmd.colorscheme("vscode")
      -- vim.cmd([[ hi Normal guibg=white ctermbg=white]])
      -- vim.cmd([[ highlight CursorLine guibg=#FAFAFA ]])
      -- vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi SignColumn guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi LineNr guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi EndOfBuffer guibg=NONE ctermbg=NONE ]])
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "java", "lua", "go", "sql", "php" },
        sync_install = false,
        auto_install = true,
      }
    end
  },
  {
    "terrortylor/nvim-comment",
    config = function()
      require('nvim_comment').setup({
        line_mapping = "<leader>cc",
        operator_mapping = "<leader>c",
        comment_chunk_text_object = "cc"
      })
    end
  },
  {
    "mfussenegger/nvim-jdtls",
    -- keys = {
    --   {"<leader>j", "<cmd>:<cr>"},
    -- },
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  },
  {
    "pappasam/nvim-repl",
    init = function()
      vim.g["repl_filetype_commands"] = {
        javascript = "node",
        python = "ipython --no-autoindent",
        java = "mvsh",
      }
      vim.g.repl_split = "right"
    end,
    keys = {
      { "<leader>rt", "<cmd>ReplToggle<cr>", desc = "Toggle nvim-repl" },
      { "<leader>rc", "<cmd>ReplRunCell<cr>", desc = "nvim-repl run CELL" },
      { "<leader>rl", "<Plug>ReplSendLine<cr>", desc = "nvim-repl run LINE" },
      { "<leader>rv", "<Plug>ReplSendVisual<cr>", desc = "nvim-repl run VISUAL" , mode = "v"},
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
})
