return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- LazyVim uses 'enter' preset. Auto-accepting completions on enter disturbs my workflow.
      -- Use C-y or C-Enter to accept completions instead.
      preset = "default",
      ["<C-CR>"] = { "select_and_accept", "fallback" },
    },
  },
}
