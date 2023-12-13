local navic = require("nvim-navic")
local lualine = require("lualine")

lualine.setup({
    winbar = {
        lualine_c = {
            {
              function()
                  return navic.get_location()
              end,
              cond = function()
                  return navic.is_available()
              end
            },
        }
    }
})
