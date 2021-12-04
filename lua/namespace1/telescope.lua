local telescope = require("telescope")

-- Recipes are here:
-- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes

local actions = require("telescope.actions")
local previewers = require("telescope.previewers")

-- To ignore files bigger than a certain threshold
local new_maker = function(filepath, bufnr, opts)
  opts = opts or {}

  filepath = vim.fn.expand(filepath)
  vim.loop.fs_stat(filepath, function(_, stat)
    if not stat then return end
    if stat.size > 100000 then
      return
    else
      previewers.buffer_previewer_maker(filepath, bufnr, opts)
    end
  end)
end

telescope.setup {
  defaults = {
    buffer_previewer_maker = new_maker,
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

require("telescope").load_extension("fzy_native")

