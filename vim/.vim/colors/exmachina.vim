" Vim color file - exmachina
" Generated by http://bytefluent.com/vivify 2015-09-13
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "exmachina"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#c4c4c4 guibg=#252a2b guisp=#252a2b gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=bold ctermfg=189 ctermbg=235 cterm=bold
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#b04c3c guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#192224 guibg=#18497a guisp=#18497a gui=bold ctermfg=235 ctermbg=6 cterm=bold
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#c4c4c4 guibg=#912c00 guisp=#912c00 gui=NONE ctermfg=251 ctermbg=88 cterm=NONE
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#256cb4 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#b04c3c guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Todo guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=189 ctermbg=1 cterm=NONE
hi Special guifg=#8f8f8f guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi LineNr guifg=#946021 guibg=NONE guisp=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#192224 guibg=#256cb4 guisp=#256cb4 gui=bold ctermfg=235 ctermbg=25 cterm=bold
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#192224 guibg=#256cb4 guisp=#256cb4 gui=NONE ctermfg=235 ctermbg=25 cterm=NONE
hi Search guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#256cb4 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Comment guifg=#5E6C70 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#192224 guibg=#7da151 guisp=#7da151 gui=bold ctermfg=235 ctermbg=107 cterm=bold
hi Number guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Boolean guifg=#7da151 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi Operator guifg=#7da151 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi Question guifg=#c4c4c4 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#c4c4c4 guibg=#192224 guisp=#192224 gui=bold ctermfg=251 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#7da151 guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreProc guifg=#b04c3c guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi Exception guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Keyword guifg=#803c91 guibg=NONE guisp=NONE gui=bold ctermfg=96 ctermbg=NONE cterm=bold
hi Type guifg=#7da151 guibg=NONE guisp=NONE gui=bold ctermfg=107 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#542528 guisp=#542528 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#192224 guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=235 ctermbg=252 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#a8a8a8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#737373 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#256cb4 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#c8c8cc guibg=#192224 guisp=#192224 gui=underline ctermfg=252 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#225c3b guisp=#225c3b gui=NONE ctermfg=NONE ctermbg=22 cterm=NONE
hi TabLine guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE