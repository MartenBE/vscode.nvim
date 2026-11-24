local utils = {}

---@param c table<string,string> palette from `vscode.colors.get_colors()`
---@param opts table `vscode.config.opts`
utils.terminal = function(c, opts)
  local is_dark = vim.o.background == 'dark'

  -- dark
  vim.g.terminal_color_0 = opts.transparent and 'NONE' or (is_dark and c.d_black_10 or c.l_white_30)
  vim.g.terminal_color_8 = is_dark and c.d_gray_120 or c.l_black_10

  -- light
  vim.g.terminal_color_7 = is_dark and c.d_gray_170 or c.l_gray_10
  vim.g.terminal_color_15 = is_dark and c.d_gray_170 or c.l_gray_10

  -- colors
  vim.g.terminal_color_1 = is_dark and c.d_red_40 or c.l_red_50
  vim.g.terminal_color_9 = is_dark and c.d_red_40 or c.l_red_50

  vim.g.terminal_color_2 = is_dark and c.d_green_30 or c.l_green_20
  vim.g.terminal_color_10 = is_dark and c.d_green_30 or c.l_green_20

  vim.g.terminal_color_3 = is_dark and c.d_yellow_30 or c.l_yellow_20
  vim.g.terminal_color_11 = is_dark and c.d_yellow_30 or c.l_yellow_20

  vim.g.terminal_color_4 = is_dark and c.d_blue_60 or c.l_blue_30
  vim.g.terminal_color_12 = is_dark and c.d_blue_60 or c.l_blue_30

  vim.g.terminal_color_5 = is_dark and c.d_pink_10 or c.l_purple_10
  vim.g.terminal_color_13 = is_dark and c.d_pink_10 or c.l_purple_10

  vim.g.terminal_color_6 = is_dark and c.d_green_50 or c.l_green_40
  vim.g.terminal_color_14 = is_dark and c.d_green_50 or c.l_green_40
end

return utils
