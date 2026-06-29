return {
  {
    "saghen/blink.cmp",
    branch = "main",
    dependencies = {
      'saghen/blink.lib',
      'rafamadriz/friendly-snippets',
      'giuxtaposition/blink-cmp-copilot',
      'xzbdmw/colorful-menu.nvim'
    },
    opts = {
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      },
      signature = { enabled = true },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 0,
        },
        list = {
          selection = {
            preselect = true,
            auto_insert = function(ctx)
              return ctx.mode ~= "cmdline"
            end,
          },
        },

        menu = {
          draw = {
            padding = 2,
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "source_name", gap = 1 } },
            components = {
              label = {
                width = { fill = true, max = 60 },
                text = function(ctx)
                  return require("colorful-menu").blink_components_text(ctx)
                end,
                highlight = function(ctx)
                  return require("colorful-menu").blink_components_highlight(ctx)
                end,
              },
              kind_icon = {
                text = function(ctx)
                  if vim.tbl_contains({ "Path" }, ctx.source_name) then
                    local mini_icon, _ = require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
                    if mini_icon then return mini_icon .. ctx.icon_gap end
                  end

                  local icon = require("lspkind").symbolic(ctx.kind)
                  return icon .. ctx.icon_gap
                end,

                highlight = function(ctx)
                  if vim.tbl_contains({ "Path" }, ctx.source_name) then
                    local mini_icon, mini_hl = require("mini.icons").get_icon(ctx.item.data.type, ctx.label)
                    if mini_icon then return mini_hl end
                  end
                  return ctx.kind_hl
                end,
              },
            },
          }
        },
      },
      sources = {
        default = { 'copilot', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
  },
  {
    "giuxtaposition/blink-cmp-copilot",
    after = { "copilot.lua" },
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      {
        "folke/snacks.nvim",
        opts = {
          terminal = {},
        }
      }
    },
    event = "LspAttach",
    opts = {},
  }
}
