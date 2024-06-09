vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local gib_nvim_Fugitive = vim.api.nvim_create_augroup("gib_nvim_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = gib_nvim_Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>gp", function()
            vim.cmd.Git('push')
        end, opts)

        -- rebase always
        vim.keymap.set("n", "<leader>gP", function()
            vim.cmd.Git({'pull',  '--rebase'})
        end, opts)

        -- Git commit
        vim.keymap.set("n", "<leader>gc", function()
            local message = vim.fn.input('Commit message: ')
            vim.cmd('Git commit -m "' .. message .. '"')
        end, opts)

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        vim.keymap.set("n", "<leader>gt", ":Git push -u origin ", opts);
    end,
})
