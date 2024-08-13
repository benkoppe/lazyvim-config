return {
  -- autopairs support
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
  },

  -- commands for snippets with luasnip
  {
    "L3MON4D3/LuaSnip",
    keys = {
      -- command to expand/jump forward
      {
        "<c-N>",
        function()
          local ls = require("luasnip")
          if ls.expand_or_jumpable() then
            ls.expand_or_jump()
          end
        end,
        silent = true,
        desc = "Expand or jump snippet",
        mode = { "i", "s" },
      },
      -- command to jump backward
      {
        "<c-P>",
        function()
          local ls = require("luasnip")
          if ls.jumpable(-1) then
            ls.jump(-1)
          end
        end,
        silent = true,
        desc = "Jump to prev snippet",
        mode = { "i", "s" },
      },
    },
  },
}
