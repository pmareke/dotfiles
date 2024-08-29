return {
  mode = { "n", "v" },
  
  L = { ":Lazy<CR>", "Lazy" },
  w = { ":w!<CR>", "Save" },
  a = { ":A<CR>", "Alternate" },
  x = { ":x<CR>", "Save and Quit" },
  q = { ":q!<CR>", "Quit" },
  c = { ":bd<CR>", "Close Buffer" },
  h = { ":nohlsearch<CR>", "No Highlight" },
  n = { ":BufferNext<CR>", "Next tab"},
  t = { ":w<CR>:TestFile<cr>", "Run File"},
  f = { ":Telescope current_buffer_fuzzy_find<CR>", "Find in file"},
  F = { ":Telescope live_grep<CR>", "Find in files"},
  rf = { [[ <Esc><Cmd>lua require('telescope').extensions.refactoring.refactors()<CR>]], "Refactor" },
  re = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  r = {
    name = "Replace",
    r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
    F = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  },
  b = {
    name = "Buffers",
    -- j = { "<cmd>BufferLinePick<cr>", "Jump" },
    f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
    -- b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
    -- n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
    W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
    -- e = {
    --   "<cmd>BufferLinePickClose<cr>",
    --   "Pick which buffer to close",
    -- },
    -- h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
    -- l = {
    --   "<cmd>BufferLineCloseRight<cr>",
    --   "Close all to the right",
    -- },
    -- D = {
    --   "<cmd>BufferLineSortByDirectory<cr>",
    --   "Sort by directory",
    -- },
    -- L = {
    --   "<cmd>BufferLineSortByExtension<cr>",
    --   "Sort by language",
    -- },
    -- p = { "<cmd>BufferLineTogglePin<CR>", "Toggle pin" },
    -- P = { "<cmd>BufferLineGroupClose ungrouped<CR>", "Delete non-pinned buffers" },
  },
  G = {
    name = "+Git",
    k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    C = {
      "<cmd>Telescope git_bcommits<cr>",
      "Checkout commit(for current file)",
    },
    d = {
      "<cmd>Gitsigns diffthis HEAD<cr>",
      "Git Diff",
    },
  },
  l = {
    name = "+LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
    A = { "<cmd>lua vim.lsp.buf.range_code_action()<cr>", "Range Code Actions" },
    d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
    D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration" },
    i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
    o = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
    R = { "<cmd>Telescope lsp_references<cr>", "References" },
    s = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Display Signature Information" },
    f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
    K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
    l = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics (Trouble)" },
    L = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics (Trouble)" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    h = { "<cmd>lua require('config.utils').toggle_inlay_hints()<CR>", "Toggle Inlay Hints" },
    -- j = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Previous Diagnostic" },
    -- k = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "Next Diagnostic" },
    -- e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
    c = { "<cmd>lua require('config.utils').copyFilePathAndLineNumber()<CR>", "Copy File Path and Line Number" },
  },
  s = {
    name = "+Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File (CWD)" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    T = { "<cmd>Telescope grep_string<cr>", "Grep String" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    c = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    B = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    m = { "<cmd>Telescope git_status<cr>", "Git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Git stash" },
    e = { "<cmd>Telescope frecency<cr>", "Frecency" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  },
  T = {
    name = "+Tests",
    t = { "<cmd>TestNearest<cr>", "Run Nearest"},
    f = { "<cmd>TestFile<cr>", "Run File"},
    s = { "<cmd>TestSuite<cr>", "Run Suite"},
    l = { "<cmd>TestLast<cr>", "Run Latest"},
    v = { "<cmd>TestVisit<cr>", "Run Visit"},
    n = { ":lua notify_test()<CR>", "Notify"},
  },
  ['\\'] = {
    name = "+Terminal",
    h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm direction=vertical size=100 <cr>", "Vertical" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  },
  o = {
    name = "Overseer",
    r = { ":OverseerRun<CR>", "Run task" },
    t = { ":OverseerToggle<CR>", "Toggle panel tasks" },
  },
}
