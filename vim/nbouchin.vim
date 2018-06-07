" Description: nbouchin.vim theme
" Maintainer:  nbouchin
set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'nbouchin'
"For asenat : ctermbg=235
hi Normal guifg=#e5e5e5 ctermfg=253 guibg=#262626 ctermbg=232 gui=NONE cterm=NONE
" Misc {{{1
hi Boolean        guifg=#af97df ctermfg=98  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Character      guifg=#9d7ff2 ctermfg=131 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Comment        guifg=#585858 ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi Conditional    guifg=#F6DA7B ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Constant       guifg=#87dfdf ctermfg=116 ctermbg=NONE gui=NONE cterm=NONE
hi Cursor         guifg=#eeeeee ctermfg=15  ctermbg=247  gui=NONE guibg=#8DA1A1
hi CursorIM       guifg=#eeeeee ctermfg=15  ctermbg=247  gui=bold guibg=#8da1a1 cterm=NONE
hi Debug          guifg=#55747c ctermfg=131  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Define         guifg=#F6DA7B ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Delimiter      guifg=#55747c ctermfg=131  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Directory      guifg=#ffaf87 ctermfg=216 ctermbg=NONE gui=NONE cterm=NONE
hi Exception      guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Float          guifg=#87dfdf ctermfg=116 ctermbg=NONE gui=NONE cterm=NONE
hi Function       guifg=#82c057 ctermfg=107 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Identifier     guifg=#ffaf87 ctermfg=216 ctermbg=NONE gui=NONE cterm=NONE
hi Ignore         guifg=#55747c ctermfg=131
hi Include        guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Keyword        guifg=#87afdf ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Label          guifg=#F6DA7B ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Macro          guifg=#F6DA7B ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi MatchParen     guifg=#df005f ctermfg=161 ctermbg=NONE gui=bold cterm=bold
hi NonText        guifg=#ff00af ctermfg=255 ctermbg=NONE gui=bold cterm=bold
hi Number         guifg=#87dfdf ctermfg=116 ctermbg=NONE gui=NONE cterm=NONE
hi Operator       guifg=#F6DA7B ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi PreCondit      guifg=#c67c48 ctermfg=173 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi PreProc        guifg=#ffdfaf ctermfg=223 ctermbg=NONE gui=NONE cterm=NONE
hi Question       guifg=#c98de6 ctermfg=102 ctermbg=NONE gui=bold guibg=bg cterm=NONE
hi Repeat         guifg=#c67c48 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Scrollbar      guibg=bg
hi Special        guifg=#dfafaf ctermfg=181 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar    guifg=#55747c ctermfg=66  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi SpecialComment guifg=#55747c ctermfg=66  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi SpecialKey     guifg=#3a3a3a ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
hi Statement      guifg=#afdf87 ctermfg=117 ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass   guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi String         guifg=#EB6B6B ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
hi Structure      guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Tag            guifg=#55747c ctermfg=131  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Title          guifg=#9d7ff2 ctermfg=141 ctermbg=NONE gui=bold guibg=bg cterm=NONE
hi Todo           guifg=#ffdfaf ctermfg=223 ctermbg=NONE gui=NONE cterm=NONE guibg=bg
hi Type           guifg=#87afdf ctermfg=75 ctermbg=NONE gui=NONE cterm=NONE
hi Typedef        guifg=#95d5f1 ctermfg=117 ctermbg=NONE gui=NONE guibg=bg cterm=NONE
hi Underlined     guifg=#c98de6 ctermfg=192 ctermbg=NONE gui=underline guibg=bg cterm=NONE
hi VertSplit      guifg=#3a3a3a ctermfg=237 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi WildMenu       guifg=#101010 ctermfg=0   guibg=#f6da7b ctermbg=222 gui=bold cterm=NONE
" Cursor lines {{{1
hi CursorColumn ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine   ctermfg=NONE guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
" Tabline {{{1
hi TabLine     guifg=#808080 ctermfg=244 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi TabLineFill guifg=#dfdfaf ctermfg=187 guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi TabLineSel  guifg=#e4e4e4 ctermfg=254 guibg=#303030 ctermbg=236 gui=bold cterm=bold
" Statusline {{{1
hi StatusLine   guifg=#e4e4e4 ctermfg=254 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi StatusLineNC guifg=#808080 ctermfg=244 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
" Number column {{{1
hi CursorLineNr guifg=#878787 ctermfg=102 guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
hi LineNr       guifg=#878787 ctermfg=102 guibg=#3a3a3a ctermbg=233 gui=NONE cterm=NONE
" Color column {{{1
hi ColorColumn ctermfg=NONE guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
" Diff & Signs {{{1
hi DiffAdd    guifg=#87ff5f ctermfg=119 ctermbg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#ffff5f ctermfg=227 ctermbg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#df5f5f ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
hi DiffText   guifg=#ff5f5f ctermfg=203 guibg=#5f0000 ctermbg=52 gui=bold cterm=bold
hi SignColumn ctermfg=NONE guibg=#3a3a3a ctermbg=237 gui=NONE cterm=NONE
" Folds {{{1
hi FoldColumn ctermfg=102 ctermbg=237 cterm=NONE guifg=#878787 guibg=#3a3a3a gui=NONE
hi Folded     ctermfg=102 ctermbg=237 cterm=NONE guifg=#878787 guibg=#3a3a3a gui=NONE
" Search {{{1
hi IncSearch guifg=#c0c0c0 ctermfg=7 guibg=#005fff ctermbg=27  gui=NONE cterm=NONE
hi Search    guifg=#c0c0c0 ctermfg=16 guibg=#df005f ctermbg=116 gui=NONE cterm=NONE
" Messages {{{1
hi Error      guifg=#eeeeee ctermfg=255 guibg=#df005f ctermbg=160  gui=NONE cterm=NONE
hi ErrorMsg   guifg=#eeeeee ctermfg=255 guibg=#df005f ctermbg=160  gui=NONE cterm=NONE
hi ModeMsg    guifg=#afff87 ctermfg=156               ctermbg=NONE gui=bold cterm=bold
hi MoreMsg    guifg=#c0c0c0 ctermfg=7   guibg=#005fdf ctermbg=26   gui=NONE cterm=NONE
hi WarningMsg guifg=#c0c0c0 ctermfg=7   guibg=#005fdf ctermbg=26   gui=NONE cterm=NONE
" Visual {{{1
hi Visual    guifg=#c0c0c0 guibg=NONE ctermbg=066 gui=reverse cterm=NONE
hi VisualNOS guifg=#c0c0c0 guibg=#5f5f87 ctermbg=066 gui=reverse cterm=NONE
" Pmenu {{{1
hi Pmenu      guifg=#e4e4e4 ctermfg=254 guibg=#262626 ctermbg=238 gui=NONE cterm=NONE
hi PmenuSbar  ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi PmenuSel   guifg=#df5f5f ctermfg=167 guibg=#444444 ctermbg=238 gui=bold cterm=bold
hi PmenuThumb ctermfg=NONE guibg=#df5f5f ctermbg=167 gui=NONE cterm=NONE
