local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["q"] = { "<cmd> q<CR>", "退出"},
    ["qq"] = { "<cmd> q!<CR>", "不保存并退出" , opts={ nowait = true}},
--    ["Q"] = { "qa!<CR>", "保存并退出", opts = {nowait = true}},
    -- 分屏
      ["sl"] = { "<cmd> set splitright<CR>:vsplit<CR>", "垂直向右" },
      ["sh"] = { "<cmd> set nosplitright<CR>:vsplit<CR>", "垂直向左" },
      ["sj"] = { "<cmd> set splitright<CR>:split<CR>", "水平向下" },
      ["sk"] = { "<cmd> set nosplitright<CR>:split<CR>", "水平向上" },

      -- 在分屏间移动
      ["<C-h>"] = { "<C-w>h", "向左" },
      ["<C-j>"] = { "<C-w>j", "向下" },
      ["<C-k>"] = { "<C-w>k", "向上" },
      ["<C-l>"] = { "<C-w>l", "向右" },

      -- 改变窗口大小
      ["<up>"] = { "<cmd> res +5<CR>", "" },
      ["<down>"] = { "<cmd> res -5<CR>", "" },
      ["<left>"] = { "<cmd> vertical resize-5<CR>", "" },
      ["<right>"] = { "<cmd> vertical resize+5<CR>", "" },
  },
}

-- more keybinds!

return M
