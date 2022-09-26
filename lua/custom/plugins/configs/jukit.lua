

vim.cmd([[

let g:jukit_shell_cmd = 'ipython3'
let g:jukit_terminal = ''
let g:jukit_auto_output_hist = 0
let g:jukit_use_tcomment = 0
let g:jukit_comment_mark = '#'
let g:jukit_mappings = 1



let g:jukit_highlight_markers = 1
let g:jukit_enable_textcell_bg_hl = 1
let g:jukit_enable_textcell_syntax = 1
let g:jukit_text_syntax_file = $VIMRUNTIME . '/syntax/' . 'markdown.vim'
let g:jukit_hl_ext_enabled = '*'

let g:jukit_output_bg_color = get(g:, 'jukit_output_bg_color', '')
let g:jukit_output_fg_color = get(g:, 'jukit_output_fg_color', '')
let g:jukit_outhist_bg_color = get(g:, 'jukit_outhist_bg_color', '#090b1a')
let g:jukit_outhist_fg_color = get(g:, 'jukit_outhist_fg_color', 'gray')
let g:jukit_output_new_os_window = 0
let g:jukit_outhist_new_os_window = 0

let g:jukit_in_style = 2
let g:jukit_max_size = 20
let g:jukit_show_prompt = 0
let g:jukit_save_output = 1
let g:jukit_clean_outhist_freq = 60 * 10


let g:jukit_savefig_dpi = 150
let g:jukit_mpl_block = 1
let g:jukit_custom_backend = -1
let g:jukit_inline_plotting = 1


]])
