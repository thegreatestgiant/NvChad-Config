require "nvchad.mappings"

local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>fd"] = { "<cmd> Telescope diagnostics <CR>", "[F]ind [D]iagnostics" },

    -- Trouble
    ["<leader>tt"] = { "<cmd> TroubleToggle <CR>", "[T]oggle [T]rouble" },

    -- CodeSnap.nvim
    ["<leader>cs"] = { "<cmd> CodeSnapPreviewOn <CR>", "[C]ode[S]nap" },

    -- Vim REST Console
    ["<leader>rc"] = { "<cmd>call VrcQuery()<CR>", "Run REST Query" },

    -- Neoclip Stuff
    ["<leader>fp"] = { "<cmd> Telescope neoclip<CR>", "[F]ind [P]astes" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Add breakpoint at line" },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go tests",
    },

    ["<leader>dgl"] = {
      function()
        require("dap-go").debut_last()
      end,
      "Debut last test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = { "<cmd> GoTagAdd json <CR>", "Add json struct tags" },
    ["<leader>gsy"] = { "<cmd> GoTagAdd yaml <CR>", "Add yaml struct tags" },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}

return M
