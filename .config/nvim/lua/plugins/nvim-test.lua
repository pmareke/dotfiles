require('nvim-test').setup {
  run = true,                 -- run tests (using for debug)
  commands_create = true,     -- create commands (TestFile, TestLast, ...)
  filename_modifier = ":.",   -- modify filenames before tests run(:h filename-modifiers)
  silent = false,             -- less notifications
  term = "toggleterm",          -- a terminal to run ("terminal"|"toggleterm")
  termOpts = {
    direction = "float",   -- terminal's direction ("horizontal"|"vertical"|"float")
    width = 96,               -- terminal's width (for vertical|float)
    height = 12,              -- terminal's height (for horizontal|float)
    go_back = false,          -- return focus to original window after executing
    stopinsert = "auto",      -- exit from insert mode (true|false|"auto")
    keep_one = false,          -- keep only one terminal for testing
  }
}

require('nvim-test.runners.pytest'):setup {
  command = "poetry",
  args = { "run", "pytest", "-n", "auto" },
  env = { PYTHONPATH = "." },
  file_pattern = "\\v(tests/.*|test)\\.py$",
  find_files = { "test_{name}.{ext}", "{name}_test.{ext}" },
  filename_modifier = nil,
  working_directory = nil,
}
