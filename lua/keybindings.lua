require'mapx'.setup{ global = "skip" }
local function cmap(m, k, v)
    vim.keymap.set(m, k, v, {silent = true})
end

--legend of leader pv!
cmap("n", "<leader>pv", vim.cmd.Ex)

        --change default <Esc> btn
cmap("i", "jj", "<Esc>")

        --map up, down, left and right to move between buffers
cmap("n", "<C-k>", "<C-w>k")
cmap("n", "<C-j>", "<C-w>j")
cmap("n", "<C-l>", "<C-w>l")
cmap("n", "<C-h>", "<C-w>h")

        --move highlighted text 
cmap("v", "J", ":m '>+1<CR>gv=gv")
cmap("v", "K", ":m '<-2<CR>gv=gv")

cmap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

        --Rust bindings
cmap("n", "<C-F5>", ":w <bar> RustRun<CR>")

--Commands
vim.cmd('command! Cargotest w | vnew | term cargo test')
vim.cmd('command! Terem vnew | term ')

        --Bind Ctrl Backspace in insert 
cmap("i", "<C-BS>", "<C-W>")

        --Make it rain or alive!
cmap("n", "<leader>mir", "<cmd>CellularAutomaton make_it_rain<CR>")
cmap("n", "<leader>gof", "<cmd>CellularAutomaton game_of_life<CR>")

--lsp config
--map("n", "l", "<cmd>lua vim.diagnostic.open_float()<CR>")
--map("n", "k", "<cmd>lua vim.diagnostic.open_float()<CR>")

nnoremap({"<S-j>", "<S-k>"}, "<cmd>lua vim.diagnostic.open_float()<CR>", "silent")
