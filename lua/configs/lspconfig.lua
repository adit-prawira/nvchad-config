local lspconfig = require("lspconfig")
local nvlsp = require("nvchad.configs.lspconfig")

nvlsp.defaults()

local servers = {
  html = {},
  cssls = {},
  pyright = {},
  vtsls = {
    root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", ".git"),
  },
  clangd = {
    cmd = {
      "clangd",
      "--query-driver=/usr/bin/clang",
      "--cross-file-rename",
      "--clang-tidy",
      "--compile-commands-dir=.",
    },
    root_dir = lspconfig.util.root_pattern(".git"),
    init_options = {
      fallbackFlags = {
        "-std=c++17", "-xc++",
        "-I./include", "-I./include/**",
        "-I./lib/**", "-I./src", "-I./src/**",
      }
    }
  },
  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod" },
    root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
    settings = {
      gopls = {
        analyses = { unusedparams = true, unreachable = true },
        staticcheck = true,
      },
    },
  },
  rust_analyzer = {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_dir = lspconfig.util.root_pattern("Cargo.toml", ".git"),
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
        checkOnSave = { command = "clippy" },
        assist = {
          importGranularity = "module",
          importPrefix = "by_self",
        },
        diagnostics = {
          enable = true,
          disabled = { "inactive-code" },
        },
      },
    },
  },
  omnisharp = {
    cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
    root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", ".git"),
    settings = {
      omnisharp = {
        enableRoslynAnalyzers = true,
        enableEditorConfigSupport = true,
        organizeImportsOnFormat = true,
      },
    },
  },
  jdtls = {
    cmd = { "jdtls" },
    root_dir = lspconfig.util.root_pattern("pom.xml", "build.gradle", ".git"),
    settings = {
      java = {
        eclipse = { downloadSources = true },
        maven = { downloadSources = true },
        implementationsCodeLens = { enabled = true },
        referencesCodeLens = { enabled = true },
        format = { enabled = true },
      },
    },
  },
  yamlls = {
    settings = {
      yaml = {
        schemas = {
          ["https://json.schemastore.org/github-workflow.json"] = {
            ".github/workflows/*.yml",
            ".github/workflows/*.yaml",
          },
          ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.yml",
          ["https://json.schemastore.org/kustomization.json"] = "kustomization.yaml",
        },
        validate = true,
        hover = true,
        completion = true,
      },
    },
  },
  nginx_language_server = {
    cmd = { "nginx-language-server" },
    filetypes = { "nginx" },
    root_dir = lspconfig.util.root_pattern("nginx.conf", ".git"),
  },
}

for name, opts in pairs(servers) do
  lspconfig[name].setup(vim.tbl_deep_extend("force", {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }, opts))
end
