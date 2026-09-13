local M = {}

-- All blended values are pre-computed: color@alpha blended onto the editor bg.
-- Dark editor bg: #14171B, Black editor bg: #000000, Light editor bg: #EBEDEF

M.dark = {
  -- Backgrounds (darkest → lightest)
  bg_dark  = "#08090B",  -- status/title bar
  bg       = "#14171B",  -- editor
  bg0      = "#0E1012",  -- panel / float
  bg1      = "#1A1E23",  -- main window (non-editor)
  bg2      = "#1A1E23",  -- element hover / border
  bg3      = "#22272D",  -- element active / border variant
  bg4      = "#4E5660",  -- disabled

  -- Foregrounds
  fg       = "#F2F4F6",
  fg1      = "#9CA0A6",
  fg2      = "#6E737A",
  fg3      = "#4E5660",

  -- Accent colors (from the Zed theme palette, v0.4.1 regrade)
  accent   = "#B7A2FF",  -- violet (primary, placeholder pending a final hue)
  accent2  = "#ED8EF3",  -- pink-violet (secondary)
  blue     = "#78AFFF",
  green    = "#4BDE7F",
  yellow   = "#FFA85E",
  red      = "#FF5C59",

  -- Pre-blended composite colors (alpha blended onto bg = #14171B)
  selection   = "#2E2D3F",  -- B7A2FF @ 16%
  active_line = "#1B1E22",  -- F2F4F6 @ 3%
  bracket_bg  = "#232430",  -- B7A2FF @ 9%
  read_bg     = "#25282C",  -- 9CA0A6 @ 12.5%
  write_bg    = "#2E3135",  -- 9CA0A6 @ 19%
  diff_add    = "#1B3128",  -- 4BDE7F @ 13%
  diff_change = "#212B39",  -- 78AFFF @ 13%
  diff_delete = "#332023",  -- FF5C59 @ 13%

  git_add     = "#4BDE7F",
  git_change  = "#78AFFF",
  git_delete  = "#FF5C59",

  -- ANSI slots 0-15, read by :terminal via vim.g.terminal_color_*.
  -- These are TEXT slots, not surface slots: 0 and 8 take the text ramp
  -- (disabled / subtle). Filling them from the elevation ramp is what made
  -- shell autosuggestions invisible -- see color-palette.md, "ANSI slot mapping".
  terminal = {
    "#4E5660", -- 0  text.disabled
    "#FF5C59", -- 1  red
    "#4BDE7F", -- 2  green
    "#FFA85E", -- 3  yellow
    "#78AFFF", -- 4  blue
    "#ED8EF3", -- 5  magenta
    "#B7A2FF", -- 6  cyan / accent
    "#9CA0A6", -- 7  text.muted
    "#6E737A", -- 8  text.subtle
    "#FF5C59", -- 9
    "#4BDE7F", -- 10
    "#FFA85E", -- 11
    "#78AFFF", -- 12
    "#ED8EF3", -- 13
    "#B7A2FF", -- 14
    "#F2F4F6", -- 15 text
  },
}

M.black = {
  -- Backgrounds (fully dark)
  bg_dark  = "#010102",  -- status/title bar
  bg       = "#000000",  -- editor
  bg0      = "#070809",  -- panel / float
  bg1      = "#0C0D0E",  -- main window (non-editor)
  bg2      = "#0F0F10",  -- element hover / border
  bg3      = "#17181A",  -- element active / border variant
  bg4      = "#4E5660",  -- disabled

  -- Foregrounds (identical to dark)
  fg       = "#F2F4F6",
  fg1      = "#9CA0A6",
  fg2      = "#6E737A",
  fg3      = "#4E5660",

  -- Accent colors (identical to dark)
  accent   = "#B7A2FF",
  accent2  = "#ED8EF3",
  blue     = "#78AFFF",
  green    = "#4BDE7F",
  yellow   = "#FFA85E",
  red      = "#FF5C59",

  -- Pre-blended composite colors (alpha blended onto bg = #000000)
  selection   = "#1D1A29",  -- B7A2FF @ 16%
  active_line = "#070707",  -- F2F4F6 @ 3%
  bracket_bg  = "#100F17",  -- B7A2FF @ 9%
  read_bg     = "#141415",  -- 9CA0A6 @ 12.5%
  write_bg    = "#1E1E20",  -- 9CA0A6 @ 19%
  diff_add    = "#0A1D11",  -- 4BDE7F @ 13%
  diff_change = "#101721",  -- 78AFFF @ 13%
  diff_delete = "#210C0C",  -- FF5C59 @ 13%

  git_add     = "#4BDE7F",
  git_change  = "#78AFFF",
  git_delete  = "#FF5C59",

  -- Identical to dark: the text ramp is shared, only the elevation ramp differs.
  terminal = {
    "#4E5660", -- 0  text.disabled
    "#FF5C59", -- 1  red
    "#4BDE7F", -- 2  green
    "#FFA85E", -- 3  yellow
    "#78AFFF", -- 4  blue
    "#ED8EF3", -- 5  magenta
    "#B7A2FF", -- 6  cyan / accent
    "#9CA0A6", -- 7  text.muted
    "#6E737A", -- 8  text.subtle
    "#FF5C59", -- 9
    "#4BDE7F", -- 10
    "#FFA85E", -- 11
    "#78AFFF", -- 12
    "#ED8EF3", -- 13
    "#B7A2FF", -- 14
    "#F2F4F6", -- 15 text
  },
}

M.light = {
  -- Backgrounds (lightest → darkest)
  bg_dark  = "#DADBDC",  -- status/title bar
  bg       = "#EBEDEF",  -- editor
  bg0      = "#E3E5E6",  -- panel / float
  bg1      = "#F4F5F6",  -- main window (non-editor)
  bg2      = "#D2D4D7",  -- element hover / border
  bg3      = "#C5C7CA",  -- element active / border variant
  bg4      = "#999FA7",  -- disabled

  -- Foregrounds
  fg       = "#0D0F11",
  fg1      = "#535960",
  fg2      = "#787E86",
  fg3      = "#999FA7",

  -- Accent colors (darker variants for legibility on light bg, v0.4.1 regrade)
  accent   = "#5F3BBB",  -- deep violet (primary, placeholder pending a final hue)
  accent2  = "#8C2293",  -- deep magenta (secondary)
  blue     = "#0054CB",
  green    = "#166534",
  yellow   = "#8F4400",
  red      = "#B91A25",

  -- Pre-blended composite colors (alpha blended onto bg = #EBEDEF)
  selection   = "#D5D1E7",  -- 5F3BBB @ 16%
  active_line = "#E2E5E9",  -- E0E3E7 @ 80% (off-palette base, kept as-is -- not part of the regrade)
  bracket_bg  = "#D9D6E8",  -- 5F3BBB @ 13%
  read_bg     = "#D7DADC",  -- 535960 @ 13%
  write_bg    = "#CDCFD2",  -- 535960 @ 20%
  diff_add    = "#CFDBD7",  -- 166534 @ 13%
  diff_change = "#CCD9EA",  -- 0054CB @ 13%
  diff_delete = "#E4D2D5",  -- B91A25 @ 13%

  git_add     = "#166534",
  git_change  = "#0054CB",
  git_delete  = "#B91A25",

  -- Slot 8 is #636870, NOT fg2 (#787E86): the whole suite already uses #636870
  -- for light secondary text, and it is the documented value for this slot.
  terminal = {
    "#999FA7", -- 0  text.disabled
    "#B91A25", -- 1  red
    "#166534", -- 2  green
    "#8F4400", -- 3  yellow
    "#0054CB", -- 4  blue
    "#8C2293", -- 5  magenta
    "#5F3BBB", -- 6  cyan / accent
    "#535960", -- 7  text.muted
    "#636870", -- 8  text.subtle
    "#B91A25", -- 9
    "#166534", -- 10
    "#8F4400", -- 11
    "#0054CB", -- 12
    "#8C2293", -- 13
    "#5F3BBB", -- 14
    "#0D0F11", -- 15 text
  },
}

return M
