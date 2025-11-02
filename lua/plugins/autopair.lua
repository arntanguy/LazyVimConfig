-- Replace LazyVim's mini.pairs plugin wiith autopair to support ruby-on-rails
-- We use nvim-autopair instead as it uses treesitter that has an embe
return {
  {
    "nvim-mini/mini.pairs",
    enabled = false,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true, -- Treesitter integration
      })

      local Rule = require("nvim-autopairs.rule")
      npairs.remove_rule("(")
      npairs.remove_rule('"')
      npairs.remove_rule("'")
      npairs.remove_rule("[")
      npairs.remove_rule("{")

      -- Add custom ERB pairs
      npairs.add_rules({
        Rule("<% ", " %>", "eruby"),
        Rule("<%# ", " %>", "eruby"), -- non printing tag
        Rule("<%= ", " %>", "eruby"), -- expression printing tag
        Rule("<%% ", " %%>", "eruby"), -- litteral tag
      })
    end,
  },
}
