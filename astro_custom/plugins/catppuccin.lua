return {
  "catppuccin/nvim",
  config = function(plugin, opts)
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          Comment = { fg = '#d4922F' },
        }
      end
    })

    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
