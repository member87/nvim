local cmp = require("cmp")
local lspkind = require('lspkind')


local kind_icons = {
  TypeParameter = "",
  Copilot = ""
}

cmp.setup({
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(_, vim_item)
      if(vim_item.kind == "Copilot") then
        vim_item.kind = kind_icons.Copilot .. " Copilot"
      else
        local icon, hl = require("mini.icons").get("lsp", vim_item.kind)
        vim_item.kind = icon .. " " .. vim_item.kind
        vim_item.kind_hl_group = hl
      end
      return vim_item
    end,
  },
  experimental = {
    ghost_text = true
  },
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },
  window = {
    completion = {
      side_padding = 1,
      --winhighlight = "Normal:Pmenu,CursorLine:CmpSel,Search:None,FloarBorder:CmpBorder",
      scrollbar = false,
    },
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<s-tab>"] = cmp.mapping.select_prev_item(),
    ["<tab>"] = cmp.mapping.select_next_item(),
    ["<C-e>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
  sources = cmp.config.sources({
    { name = "copilot" },
    { name = "nvim_lsp" },
    { name = "vsnip" }, -- For vsnip users.
  }, {
    { name = "buffer" },
  }),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
  sources = cmp.config.sources({
      { name = "path" },
    },
    {
      { name = "cmdline" },
    }),
})

-- Setup lspconfig.

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers {
  -- This is a default handler that will be called for each installed server (also for new servers that are installed during a session)
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end,
}
