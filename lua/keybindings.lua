require "helpers/globals"
require "helpers/keyboard"
local telescope_helpers = require("helpers.telescope")

-- Basic stuff 😡
nm("<leader><leader>", "<cmd>Telescope<cr>")
nm("K", "<cmd>lua vim.lsp.buf.hover()<cr>")
nm("<leader>o", telescope_helpers.open_file)
nm("<leader>p", "<cmd>Telescope oldfiles<cr>")
nm("<leader>f", "<cmd>Telescope live_grep<cr>")
nm("<leader>v", "<cmd>Neotree float toggle<cr>")

-- LSP 🤓
nm("gd", "<cmd>Telescope lsp_definitions<cr>");
nm("gr", "<cmd>Telescope lsp_references<cr>");
nm("ga", "<cmd>lua vim.lsp.buf.code_action()<cr>");
nm("<leader>lf", "<cmd>lua require('conform').format({lsp_fallback = false})<cr>");
nm("<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>")
nm("<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>")
