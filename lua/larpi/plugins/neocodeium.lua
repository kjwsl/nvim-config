return {
    'monkoose/neocodeium',
    event = 'InsertEnter',
    opts = {},
    cmd = 'NeoCodeium',
    keys = {
        {
            '<A-a>',
            function()
                require('neocodeium').accept()
            end,
            mode = 'i',
        },
    },
}
