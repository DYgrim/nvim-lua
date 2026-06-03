-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ============================================
-- 个人快捷键配置
-- ============================================

-- Leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

---------------------------------------------------
--                 插入模式(Insert)                |
---------------------------------------------------
map("i", "jk", "<Esc>", opts) -- j + k 映射为 <Esc>

---------------------------------------------------
--                 普通模式(Normal)                |
---------------------------------------------------
-- 快速行首/行尾移动
map("n", "H", "^", opts)
map("n", "L", "$", opts)
-- 可删除并进入插入模式(Insert)
map("n", "s", "s", opts)
map("n", "S", "S", opts)
-- t 可以 跳转到下一个会话
map("n", "t", "<cmd>BufferLineCycleNext<cr>", opts)
-- T 可以 跳转到上一个会话
map("n", "T", "<cmd>BufferLineCyclePrev<cr>", opts)
-- 大写U可回撤
map("n", "U", "<C-r>", { desc = "Redo" })
-- 空格 + t 可以打开lazyvim自带终端
vim.keymap.set("n", "<leader>t", "<leader>ft", {
  remap = true,
  silent = true,
})
-- 调整窗口大小
map("n", "<C-Up>", "<cmd>resize +2<cr>")
map("n", "<C-Down>", "<cmd>resize -2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize -5<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +5<cr>")

---------------------------------------------------
--                 可视模式(Visual)                |
---------------------------------------------------
-- 快速行首/行尾移动
map("v", "H", "^", opts)
map("v", "L", "$", opts)
-- 可删除并进入插入模式(Insert)
map("v", "s", "s", opts)
map("v", "S", "S", opts)
-- 各模式下，f 映射为强力跳转
map({ "n", "x", "o" }, "f", function()
  require("flash").jump()
end, opts)
