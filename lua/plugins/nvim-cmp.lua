return {

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "onsails/lspkind.nvim",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      opts.sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 50 },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip", priority = 30 }, -- snippets
        { name = "path" },
        { name = "copilot" },
      }, {
        { name = "buffer" },
      })

      opts.sorting = {
        comparators = {
          cmp.config.compare.scopes,
          cmp.config.compare.kind,
          cmp.config.compare.exact,
          cmp.config.compare.sort_text,
          cmp.config.compare.locality,
          cmp.config.compare.length,
          cmp.config.compare.score,
          cmp.config.compare.order,
          cmp.config.compare.offset,
          cmp.config.compare.recently_used,
        },
      }

      opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }

      opts.formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      }

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-Down>"] = cmp.mapping.scroll_docs(4),
        ["<C-Up>"] = cmp.mapping.scroll_docs(-4),
        ["<C-y>"] = cmp.mapping.complete(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
}
