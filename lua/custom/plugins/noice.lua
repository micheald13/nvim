return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    -- enabled = Is_Enabled("noice.nvim"),
    keys = false,
    opts = function(_, opts)
        opts.presets = {
          bottom_search = false,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = true,
        }

        opts.cmdline_popup = {
          views = {
            position = {
              row = "50%",
              col = "50%",
            },
            win_options = {
              winhighlight = "NormalFloat:NormalFloat, FloatBorder:FloatBorder",
            },
          },
        }

        opts.lsp = {
          progress = {
            view = "notify",
          },
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
            ["vim.lsp.util.stylize_markdown"] = false,
            ["cmp.entry.get_documentation"] = false,
          },
        }

        opts.routes = {
          {
            filter = {
              event = "msg_show",
              kind = "",
            },
            opts = { skip = true },
          },

          {
            filter = {
              event = "msg_show",
              kind = "wmsg",
            },
            opts = { skip = true },
          },
        }
    end,

    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
}
