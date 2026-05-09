return {
    'drop-stones/im-switch.nvim',
    event = { 'BufReadPre', 'BufNew' },
    opts = {
        macos = {
            default_im = "com.apple.keylayout.ABC",
        },
        linux = {
            default_im = "keyboard-us",
        }
    },
}
