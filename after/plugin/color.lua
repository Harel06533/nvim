local status, color = pcall(require, 'gruvbox')
if (not status) then print('gruvbox not loaded') return end

color.setup({
   undercurl = true,
   underline = true,
   bold = true,
   italic = false, --I don't like italics
   strkiethrough = true,
   invert_selection = false,
   invert_signs = false,
   invert_tabline = false,
   invert_intend_guides = false,
   inverse = true,
   contrast = '';
   palette_overrides = {},
   overrides = {},
   dim_inactive = false,
   transparent_mode = false,
})

vim.cmd('colorscheme gruvbox')
