-- M = {}
local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", ",", "", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","
keymap("n", "<C-,>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Close current buffer
keymap("n", "<c-x>", ":q<cr>", opts)

-- Fast saving
keymap("n", "<leader>,", ":w<cr>", opts)

-- Insert --
-- Press jk fast to exist
keymap("i", "jk", "<ESC>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Move/Create Windows 
keymap("n", "<C-h>", ":call WinMove('h')<cr>", opts)
keymap("n", "<C-j>", ":call WinMove('j')<cr>", opts)
keymap("n", "<C-k>", ":call WinMove('k')<cr>", opts)
keymap("n", "<C-l>", ":call WinMove('l')<cr>", opts)

-- Tabs --
-- keymap("n", "<m-t>", ":tabnew %<cr>", opts)
-- keymap("n", "<m-y>", ":tabclose<cr>", opts)
-- keymap("n", "<m-\\>", ":tabonly<cr>", opts)
 
-- Resize with arrows
keymap("n", "<m-Up>", ":resize -2<CR>", opts)
keymap("n", "<m-Down>", ":resize +2<CR>", opts)
keymap("n", "<m-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<m-Right>", ":vertical resize +2<CR>", opts)

-- NvimTree
keymap("n", "<leader>k", ":NvimTreeToggle<cr>", opts)

-- Telescope / Fuzzy
vim.api.nvim_set_keymap(
  "n",
  "<tab>",
  "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>",
  opts
)
vim.api.nvim_set_keymap(
  "n",
  "<s-tab>",
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
  opts
)
-- 
-- -- I hate typing these
-- -- keymap("n", "H", "^", opts)
-- -- keymap("n", "L", "$", opts)
-- -- keymap("v", "H", "^", opts)
-- -- keymap("v", "L", "$", opts)
-- -- keymap("x", "H", "^", opts)
-- -- keymap("x", "L", "$", opts)
-- -- keymap("o", "H", "^", opts)
-- -- keymap("o", "L", "$", opts)
-- 
-- -- keymap("n", "n", "nzzzv", opts)
-- -- keymap("n", "N", "Nzzzv", opts)
-- 
-- -- Naviagate buffers
-- -- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- -- keymap("n", "<S-h>", ":bprevious<CR>", opts)
-- 
-- -- keymap("n", "<RightMouse>", ":Alpha<CR>", opts)
-- 

-- 
-- -- Visual --
-- -- Stay in indent mode
-- keymap("v", "<", "<gv", opts)
-- keymap("v", ">", ">gv", opts)
-- 
-- keymap("v", "p", '"_dP', opts)
-- -- keymap("v", "P", '"_dP', opts)
-- 

-- Visual Block --
-- Move lines
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- 
-- -- Terminal --
-- -- Better terminal navigation
-- -- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- -- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- -- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- -- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- 
-- -- Custom
-- -- keymap("n", "<c-h>", "<cmd>nohlsearch<cr>", opts)
-- -- NOTE: the fact that tab and ctrl-i are the same is stupid
-- -- keymap("n", "<TAB>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
-- keymap("n", "<F1>", ":e ~/Notes/<cr>", opts)
-- keymap("n", "<F3>", ":e .<cr>", opts)
-- keymap("n", "<F4>", "<cmd>Telescope resume<cr>", opts)
-- keymap("n", "<F5>", "<cmd>Telescope commands<CR>", opts)
-- keymap(
--   "n",
--   "<F6>",
--   [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
--   opts
-- )
-- keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
-- keymap("n", "<F8>", "<cmd>TSPlaygroundToggle<cr>", opts)
-- keymap("n", "<F11>", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- keymap("n", "<F12>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- keymap("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], opts)
-- keymap("n", "<C-p>", "<cmd>Telescope projects<cr>", opts)
-- keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)
-- keymap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)
-- keymap("n", "<c-n>", ":e ~/Notes/<cr>", opts)
-- 
-- keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
-- -- keymap("n", "<C-\\>", "<cmd>vsplit<cr>", opts)
-- -- vim.cmd[[nnoremap c* /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]]
-- -- vim.cmd[[nnoremap c# ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]]
-- -- keymap("n", "c*", [[/\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]], opts)
-- -- keymap("n", "c#", [[?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]], opts)
-- -- keymap("n", "gx", [[:execute '!brave ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- -- Change '<CR>' to whatever shortcut you like :)
-- -- vim.api.nvim_set_keymap("n", "<CR>", "<cmd>NeoZoomToggle<CR>", { noremap = true, silent = true, nowait = true })
-- vim.api.nvim_set_keymap("n", "=", "<cmd>JABSOpen<cr>", { noremap = true, silent = true, nowait = true })
-- 
-- -- alt binds
-- -- keymap("n", "<m-s>", "<cmd>split<cr>", opts)
-- keymap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)
-- -- keymap("n", "<m-q>", "<cmd>:q<cr>", opts)
-- 
-- M.show_documentation = function()
--   local filetype = vim.bo.filetype
--   if vim.tbl_contains({ "vim", "help" }, filetype) then
--     vim.cmd("h " .. vim.fn.expand "<cword>")
--   elseif vim.tbl_contains({ "man" }, filetype) then
--     vim.cmd("Man " .. vim.fn.expand "<cword>")
--   elseif vim.fn.expand "%:t" == "Cargo.toml" then
--     require("crates").show_popup()
--   else
--     vim.lsp.buf.hover()
--   end
-- end
-- vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>", opts)
-- 
-- -- vim.api.nvim_set_keymap("n", "<m-b>", "<cmd>lua require('user.bfs').open()<cr>", opts)
-- -- vim.api.nvim_set_keymap("n", "<m-b>", "<cmd>JABSOpen<cr>", opts)
-- -- vim.api.nvim_set_keymap("n", "<m-e>", "NvimTreeToggle<cr>", opts)
-- -- vim.api.nvim_set_keymap(
-- --   "n",
-- --   "<m-f>",
-- --   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
-- --   opts
-- -- )
-- -- Comment
-- keymap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)
-- 
-- -- vim.api.nvim_set_keymap(
-- --   "n",
-- --   "<tab>",
-- --   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
-- --   opts
-- -- )
-- 
-- -- vim.api.nvim_set_keymap("n", "<tab>", "<cmd>lua require('telescope.builtin').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>", opts)
-- 
-- vim.api.nvim_set_keymap(
--   "n",
--   "<tab>",
--   "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>",
--   opts
-- )
-- vim.api.nvim_set_keymap(
--   "n",
--   "<s-tab>",
--   "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
--   opts
-- )
-- -- vim.api.nvim_set_keymap("n", "<tab>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
-- vim.api.nvim_set_keymap("n", "<m-g>", "<cmd>Telescope git_branches<cr>", opts)
-- vim.api.nvim_set_keymap("n", "<s-enter>", "<cmd>TodoQuickFix<cr>", opts)
-- -- l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },
-- 
-- vim.cmd [[
--   function! QuickFixToggle()
--     if empty(filter(getwininfo(), 'v:val.quickfix'))
--       copen
--     else
--       cclose
--     endif
--   endfunction
-- ]]
-- 
-- keymap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)
-- keymap("n", "<c-l>", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)
-- 
-- return M
--
--

vim.cmd [[
  function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
      if (match(a:key,'[jk]'))
          wincmd v
      else
          wincmd s
      endif
      exec "wincmd ".a:key
    endif
  endfunction
]]
