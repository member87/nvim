return {
  {
    "folke/snacks.nvim",
    dependencies = {
      {
        "lewis6991/gitsigns.nvim",
        opts = {},
      }
    },
    lazy = false,
    opts = {
      bigfile = { enabled = true, },
      notifier = { enabled = true },
      lazygit = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      scroll = { enabled = true },
      dashboard = { enabled = true },
      indent = {
        enabled = true,
        indent = { only_scope = true }
      },
      statuscolumn = {
        enabled = true,
        left = { "mark", "sign" },
        right = { "fold", "git" },
        folds = {
          open = false,
          git_hl = false,
        },
        git = {
          patterns = { "GitSign", "MiniDiffSign" },
        },
        refresh = 50
      },
    },
    keys = {
      { "<leader><space>", function() Snacks.picker.smart() end,                     desc = "Smart Find Files" },
      { "<leader>m",       function() Snacks.explorer() end,                         desc = "Toggle Snacks Explorer" },
      { "<leader>n",       function() Snacks.explorer.reveal() end,                  desc = "Snacks reveal current file" },
      { "<leader>gg",      function() Snacks.lazygit() end,                          desc = "Open LazyGit" },
      { "<leader>gb",      function() Snacks.gitbrowse() end,                        desc = "Open git repo" },
      { "<leader>ff",      function() Snacks.picker.files() end,                     desc = "Find files" },
      { "<leader>fg",      function() Snacks.picker.grep() end,                      desc = "Live grep" },
      { "<leader>fr",      function() Snacks.picker.recent() end,                    desc = "Open recent files" },
      { "<leader>cR",      function() Snacks.rename.rename_file() end,               desc = "Rename File",                mode = { "n" } },
      { "<leader>fp",      function() Snacks.picker.projects() end,                  desc = "Projects" },
      { "<leader>gb",      function() Snacks.picker.git_branches() end,              desc = "Git Branches" },
      { "<leader>gl",      function() Snacks.picker.git_log() end,                   desc = "Git Log" },
      { "<leader>gL",      function() Snacks.picker.git_log_line() end,              desc = "Git Log Line" },
      { "<leader>gs",      function() Snacks.picker.git_status() end,                desc = "Git Status" },
      { "<leader>gS",      function() Snacks.picker.git_stash() end,                 desc = "Git Stash" },
      { "<leader>gd",      function() Snacks.picker.git_diff() end,                  desc = "Git Diff (Hunks)" },
      { "<leader>gf",      function() Snacks.picker.git_log_file() end,              desc = "Git Log File" },
      { "<leader>gi",      function() Snacks.picker.gh_issue() end,                  desc = "GitHub Issues (open)" },
      { "<leader>gI",      function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
      { "<leader>gp",      function() Snacks.picker.gh_pr() end,                     desc = "GitHub Pull Requests (open)" },
      { "<leader>gP",      function() Snacks.picker.gh_pr({ state = "all" }) end,    desc = "GitHub Pull Requests (all)" },
      { "gd",              function() Snacks.picker.lsp_definitions() end,           desc = "Goto Definition" },
      { "gD",              function() Snacks.picker.lsp_declarations() end,          desc = "Goto Declaration" },
      { "gr",              function() Snacks.picker.lsp_references() end,            nowait = true,                       desc = "References" },
      { "gI",              function() Snacks.picker.lsp_implementations() end,       desc = "Goto Implementation" },
      { "gy",              function() Snacks.picker.lsp_type_definitions() end,      desc = "Goto T[y]pe Definition" },
      { "gai",             function() Snacks.picker.lsp_incoming_calls() end,        desc = "C[a]lls Incoming" },
      { "gao",             function() Snacks.picker.lsp_outgoing_calls() end,        desc = "C[a]lls Outgoing" },
      { "<leader>ss",      function() Snacks.picker.lsp_symbols() end,               desc = "LSP Symbols" },
      { "<leader>sS",      function() Snacks.picker.lsp_workspace_symbols() end,     desc = "LSP Workspace Symbols" },
      { "<leader>sd",      function() Snacks.picker.diagnostics() end,               desc = "Diagnostics" },
      { "<leader>sD",      function() Snacks.picker.diagnostics_buffer() end,        desc = "Buffer Diagnostics" },
      { "<leader>sb",      function() Snacks.picker.lines() end,                     desc = "Buffer Lines" },
    }
  }
}
