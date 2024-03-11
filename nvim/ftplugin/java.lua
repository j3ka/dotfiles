local home = os.getenv('HOME')
local jdtls = require('jdtls')
local root_markers = {'gradlew', 'mvnw', '.git'}
local root_dir = require('jdtls.setup').find_root(root_markers)
local workspace_folder = home .. "/Progs/jdtls/workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

-- function nnoremap(rhs, lhs, bufopts, desc)
--   bufopts.desc = desc
--   vim.keymap.set("n", rhs, lhs, bufopts)
-- end

-- Функция on_attach используется тут для настройки сочетаний клавиш после того,
-- как языковой сервер подключается к текущему буферу
local on_attach = function(client, bufnr)
  -- Стандартные сочетания для LSP клиента Neovim
  -- local bufopts = { noremap=true, silent=true, buffer=bufnr }
  -- nnoremap('gD', vim.lsp.buf.declaration, bufopts, "Go to declaration")
  -- nnoremap('gd', vim.lsp.buf.definition, bufopts, "Go to definition")
  -- nnoremap('gi', vim.lsp.buf.implementation, bufopts, "Go to implementation")
  -- nnoremap('K', vim.lsp.buf.hover, bufopts, "Hover text")
  -- nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts, "Show signature")
  -- nnoremap('<space>wa', vim.lsp.buf.add_workspace_folder, bufopts, "Add workspace folder")
  -- nnoremap('<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts, "Remove workspace folder")
  -- nnoremap('<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts, "List workspace folders")
  -- nnoremap('<space>D', vim.lsp.buf.type_definition, bufopts, "Go to type definition")
  -- nnoremap('<space>rn', vim.lsp.buf.rename, bufopts, "Rename")
  -- nnoremap('<space>ca', vim.lsp.buf.code_action, bufopts, "Code actions")
  -- vim.keymap.set('v', "<space>ca", "<ESC><CMD>lua vim.lsp.buf.range_code_action()<CR>",
  --   { noremap=true, silent=true, buffer=bufnr, desc = "Code actions" })
  -- nnoremap('<space>f', function() vim.lsp.buf.format { async = true } end, bufopts, "Format file")
  --
  -- -- Java расширения, предоставленные jdtls
  -- nnoremap("<C-o>", jdtls.organize_imports, bufopts, "Organize imports")
  -- nnoremap("<space>ev", jdtls.extract_variable, bufopts, "Extract variable")
  -- nnoremap("<space>ec", jdtls.extract_constant, bufopts, "Extract constant")
  -- vim.keymap.set('v', "<space>em", [[<ESC><CMD>lua require('jdtls').extract_method(true)<CR>]],
  --   { noremap=true, silent=true, buffer=bufnr, desc = "Extract method" })
end

local config = {
  flags = {
    debounce_text_changes = 80,
  },
  on_attach = on_attach,
  root_dir = root_dir,
  
  -- См.: https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  settings = {
    java = {
      format = {
        settings = {
          url = home .. "/Progs/jdtls/eclipse-java-google-style.xml",
          profile = "GoogleStyle",
        },
      },
      signatureHelp = { enabled = true },
      -- contentProvider = { preferred = 'fernflower' },  -- Используем утилиту fernflower для декомпиляции кода библиотек
      completion = {
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat",
          "org.hamcrest.Matchers.*",
          "org.hamcrest.CoreMatchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*"
        },
        filteredTypes = {
          "com.sun.*",
          "io.micrometer.shaded.*",
          "java.awt.*",
          "jdk.*", "sun.*",
        },
      },
      sources = {
        organizeImports = {
          starThreshold = 9999;
          staticStarThreshold = 9999;
        },
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
        },
        hashCodeEquals = {
          useJava7Objects = true,
        },
        useBlocks = true,
      },
      -- См.: https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
	    -- ВАЖНО: Поле `name` НЕ выбирается произвольно, но должно соответствовать одному из элементов в `enum ExecutionEnvironment` по ссылке выше.
      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/lib/jvm/java-21-openjdk", -- прим. перевод.: JDK, которые использует автор. У вас могут быть свои :)
          },
        }
      }
    }
  },
  -- См.: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    "/usr/bin/java",
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx4g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-javaagent:' .. home .. '/Progs/jdtls/lombok.jar',
    '-jar', vim.fn.glob(home .. '/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
    '-configuration', home .. '/.local/share/nvim/mason/packages/jdtls/config_linux_arm',
    '-data', workspace_folder,
  },
}

jdtls.start_or_attach(config)
