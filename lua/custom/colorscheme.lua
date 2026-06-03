-- dygrim 260602 依据tokyo night 调整颜色

-- vim.cmd("hi clear") -- 清除已有高亮
vim.opt.termguicolors = true

local hl = vim.api.nvim_set_hl

-- === UI底色 ===
-- hl(0, "Normal", { bg = "#262626", fg = "#E0E0E0" }) -- 深黑底，默认文字灰色
-- hl(0, "NormalNC",     { bg = "#0a0a0a" })                   -- 非活动窗口底色
-- hl(0, "VertSplit",    { fg = "#444444" })                   -- 分割线
--
-- -- === 光标 / 当前行 ===
-- hl(0, "CursorLine", { bg = "#6D6D6D" }) -- 当前行底色稍亮
hl(0, "CursorLineNr", { fg = "#FFFA40", bold = true }) -- 当前行号
-- hl(0, "Cursor",       { bg = "#FF79C6", fg = "#000000" })   -- 光标颜色
--
-- -- === 行号 ===
-- hl(0, "LineNr",       { fg = "#555555" })                   -- 普通行号
--
-- -- === 搜索 ===
-- hl(0, "Search",       { bg = "#FFFF00", fg = "#000000" })   -- / 搜索匹配
-- hl(0, "IncSearch",    { bg = "#FF0000", fg = "#FFFFFF" })   -- 增量搜索
--
-- -- === 语法高亮示例 ===
-- hl(0, "Comment",      { fg = "#6272a4", italic = true })    -- 注释
-- hl(0, "String",       { fg = "#50FA7B" })                   -- 字符串
-- hl(0, "Number",       { fg = "#FFB86C" })                   -- 数字
hl(0, "Function", { fg = "#E875F6", bold = true }) -- 函数

hl(0, "Identifier", { fg = "#8EF6F5" }) -- 变量名

hl(0, "Type", { fg = "#FFFA40" }) -- 类型 / 类名
-- Python 中 and / or / not / in / is / if else elif try except return 等颜色更改
hl(0, "Operator", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "@operator", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "@keyword.operator", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "@keyword.operator.python", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "@keyword", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "Keyword", {
  fg = "#4D91FC",
  bold = true,
})

-- if else elif
hl(0, "@conditional", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "Conditional", {
  fg = "#4D91FC",
  bold = true,
})

-- for while
hl(0, "@repeat", {
  fg = "#4D91FC",
  bold = true,
})

hl(0, "Repeat", {
  fg = "#4D91FC",
  bold = true,
})
