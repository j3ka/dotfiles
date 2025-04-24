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
-- vim.opt.relativenumber = true
-- vim.opt.nu = true
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
-- vim.opt.cursorline = true

-- vim.o.background = "dark"
-- vim.cmd([[colorscheme default ]])
-- vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])
-- vim.api.nvim_set_hl(0, 'whichkey',      {fg = '#ff9100'})
-- vim.api.nvim_set_hl(0, 'whichkeydesc',  {fg = '#AAAAAA'})
-- vim.api.nvim_set_hl(0, 'whichkeygroup', {fg = '#AAAAAA'})
-- vim.api.nvim_set_hl(0, 'Pmenu', {bg = '#111111', fg = '#CCCCCC'})

vim.g.maplocalleader = ","

-- vim.cmd [[
-- set list
-- set listchars=tab:»-,extends:»,precedes:«,space:·
-- ]]

vim.keymap.set("n", "<SPACE>", "<Nop>")
vim.g.mapleader = " "

-- vim.keymap.set("n", "<C-l>", "$", {silent=true, noremap=true})
-- vim.keymap.set("n", "<C-h>", "^", {silent=true, noremap=true})

vim.keymap.set("n", "L", "$", {silent=true, noremap=true})
vim.keymap.set("n", "H", "^", {silent=true, noremap=true})
vim.keymap.set("v", "L", "$", {silent=true, noremap=true})
vim.keymap.set("v", "H", "^", {silent=true, noremap=true})

require("lazy").setup({
  "hrsh7th/vim-vsnip",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 100,
    config = function()
      local lsp_config = require'lspconfig'
      lsp_config.clojure_lsp.setup{}
      lsp_config.rust_analyzer.setup{}
    end,
    keys = {
      {"<leader>ls", "<cmd>:lua vim.lsp.buf.signature_help()<cr>", "LspSignatureHelp"},
      {"<leader>la", "<cmd>:lua vim.lsp.buf.code_action()<cr>", "LspCodeAction"},
      {"<leader>lr", "<cmd>:lua vim.lsp.buf.rename()<cr>", "LspRename"},
      {"<leader>lrr", "<cmd>:lua vim.lsp.buf.hover()<cr>", "LspReferenceRead"},
      {"<leader>lf", "<cmd>:lua vim.lsp.buf.format()<cr>", "LspFormat"},
    },
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "hedyhli/outline.nvim",
    config = function()
      require("outline").setup({
        outline_window = {
          auto_close = true,
          auto_jump = true,
        },
    })
    end,
    keys = {
      { "<leader>lo", "<cmd>Outline<cr>", desc="SymbolOutline" },
    },
  },
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "PaterJason/cmp-conjure",
  {
    "hrsh7th/nvim-cmp",	
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = cmp.config.sources(
          {{name = "nvim_lsp"}}
          -- {{name = "buffer"}},
          -- {{name="conjure"}}
        ),
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        -- mapping = cmp.mapping.preset.insert({
        mapping = cmp.mapping({
          ['<C-p>'] = cmp.mapping.scroll_docs(-4),
          ['<C-n>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<Esc>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      -- Files
      { "<leader>ff", "<cmd>:Telescope find_files<cr>", desc="FindFiles" },
      { "<leader>fg", "<cmd>:Telescope live_grep<cr>", desc="Grep" },
      -- Buffers
      { "<leader>bb", "<cmd>:Telescope buffers<cr>", desc="Buffers" },
      -- LSP
      { "<leader>lrf", "<cmd>:Telescope lsp_references<cr>", desc="LspReferences" },
      { "<leader>ld", "<cmd>:Telescope lsp_diagnostics<cr>", desc="LspDiagnostics" },
      { "<leader>li", "<cmd>:Telescope lsp_implementations<cr>", desc="LspImplementations" },
      { "<leader>ldd", "<cmd>:Telescope lsp_definitions<cr>", desc="LspDefinitions" },
      { "<leader>ltd", "<cmd>:Telescope lsp_type_definitions<cr>", desc="LspTypeDefinitions" },
      -- Git
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
    },
  },
  { 
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    cmd = "Trouble",
    keys = {
      {"<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)"},
    },
  },
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup()
    end,
    keys = {
      {"<leader>;", "<cmd>:HopPattern<cr>", "JumpToSymbol"},
      {
        "<A-;>",
        "<cmd>:HopPattern<cr>",
        mode = {"n", "i", "v"},
        desc = "JumpToSymbol",
      },
    }, },
  "airblade/vim-gitgutter",
  {
    -- "ishan9299/nvim-solarized-lua",
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 100,
    config = function()
      vim.o.background = "light"
      local vscode = require('vscode')
      vscode.setup({
          style = 'light',
          transparent = true,
          italic_comments = false,
          underline_links = true,
          disable_nvimtree_bg = true,
          terminal_colors = false,
      })
      vscode.load()

      -- vim.cmd([[ colorscheme vscode ]])

      -- vim.g.solarized_italics = 0
      -- vim.g.solarized_visibility = "normal" -- 'hight'
      -- vim.cmd([[colorscheme solarized ]])

      -- vim.cmd([[ hi Visual guibg=#d9e8ff ctermbg=NONE]])
      -- vim.cmd([[ hi Normal guibg=white ctermbg=white]])
      -- vim.cmd([[ highlight CursorLine guibg=#FAFAFA ]])
      -- vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi SignColumn guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi LineNr guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[ hi EndOfBuffer guibg=NONE ctermbg=NONE ]])
      -- vim.cmd([[hi MatchParen ctermfg=179 ctermbg=NONE cterm=NONE guifg=#000000 guibg=#cda869 gui=NONE]])
      -- vim.cmd([[hi Comment ctermfg=59  ctermbg=NONE cterm=NONE guifg=#5f5a60 guibg=NONE gui=NONE]])
      -- vim.cmd([[hi MatchParen ctermfg=179 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=#f92672 gui=NONE]])
      -- vim.cmd([[hi MatchParen ctermfg=179 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=blue gui=NONE]])
    end
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
        line_mapping              = "<leader>cc",
        -- line_mapping              = "<C-_>",
        operator_mapping          = "<leader>c",
        comment_chunk_text_object = "cc"
      })
    end
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end,
  },
  {
    "pappasam/nvim-repl",
    init = function()
      vim.g["repl_filetype_commands"] = {
        javascript = "node",
        python = "ipython --no-autoindent",
        java = "mvsh",
        clojure = "lein repl :start"
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
    opts = {}
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    "assistcontrol/readline.nvim",
    config =  function()
      local readline = require "readline"
    
      vim.keymap.set("!", "<C-k>", readline.kill_line)
      vim.keymap.set("!", "<C-u>", readline.backward_kill_line)
      vim.keymap.set("!", "<M-d>", readline.kill_word)
      vim.keymap.set("!", "<M-BS>", readline.backward_kill_word)
      vim.keymap.set("!", "<C-d>", "<Delete>")
      vim.keymap.set("!", "<C-h>", "<BS>")
      vim.keymap.set("!", "<C-a>", readline.beginning_of_line)
      vim.keymap.set("!", "<C-e>", readline.end_of_line)
      vim.keymap.set("!", "<M-f>", readline.forward_word)
      vim.keymap.set("!", "<M-b>", readline.backward_word)
      vim.keymap.set("!", "<C-f>", "<Right>")
      vim.keymap.set("!", "<C-b>", "<Left>")
      vim.keymap.set("!", "<C-n>", "<Down>")
      vim.keymap.set("!", "<C-p>", "<Up>")
    end
  },
  "Olical/conjure",
  -- {
  --   "sphamba/smear-cursor.nvim",
  --   opts = {},
  -- },
  {
    "roobert/surround-ui.nvim",
    dependencies = {
      "kylechui/nvim-surround",
      "folke/which-key.nvim",
    },
    config = function()
      require("surround-ui").setup({
        root_key = "S"
      })
    end,
  },
  {
    'TheBlob42/houdini.nvim',
    config = function()
        require('houdini').setup()
    end
  },
  -- {
  --   "mistweaverco/kulala.nvim",
  --   keys = {
  --     { "<leader>Rs", desc = "Send request" },
  --     { "<leader>Ra", desc = "Send all requests" },
  --     { "<leader>Rb", desc = "Open scratchpad" },
  --   },
  --   ft = {"http", "rest"},
  --   opts = {
  --     -- your configuration comes here
  --     global_keymaps = true,
  --   },
  -- },
  {
    "oysandvik94/curl.nvim",
    cmd = { "CurlOpen" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require('dap')
      dap.adapters.codelldb = {
        type = 'server',
        port = "${port}",
        executable = {
          command = os.getenv('HOME') .. '/.local/share/nvim/mason/bin/codelldb',
          args = {"--port", "${port}"},
        }
      }
      dap.configurations.rust = {
        {
          name = "Rust debug",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = true,
        },
      }
    end
  },
  {
    "cohama/lexima.vim"
  },
})
