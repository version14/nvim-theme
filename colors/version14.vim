" version14 — colorscheme for Neovim
" On Neovim 0.8+, colors/version14.lua is loaded first and this file is skipped.
" On Neovim <0.8 this file delegates to the Lua module via :lua.
if has('nvim')
  lua require('version14').load()
  finish
endif
