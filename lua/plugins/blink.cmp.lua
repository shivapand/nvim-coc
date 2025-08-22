return {
  'saghen/blink.cmp',
  dependencies = {},
  version = '1.*',
  opts = {
    keymap = {
      preset = 'enter'
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = { auto_show = true }
    },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' }
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
    }

  },
  opts_extend = { "sources.default" }
}
