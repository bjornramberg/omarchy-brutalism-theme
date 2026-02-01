return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#121212",
                bg_dark = "#121212",
                bg_highlight = "#b89494",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ded3d3",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#d1c7c7",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#b89494",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#450404",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#9c0909",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#cc7a7a",
                -- green: Comments, strings, success states, git additions
                green = "#630a0a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#d48484",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#ce5757",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c87777",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e28585",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
