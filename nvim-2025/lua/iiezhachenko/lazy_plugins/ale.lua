return {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_linters = {
            javascript = {'eslint', 'prettier'},
            lua = {'lua_language_server'}
        }
    end
}
