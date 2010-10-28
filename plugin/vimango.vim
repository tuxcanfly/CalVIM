" File:          vimango.vim
" Author:        Jakh Daven<tuxcanfly@gmail.com>
" Version:       0.1~dev
" Description:   Django project navigation helper
"                Currently supports navigating to view
"                from urls
" License:	     This file is licensed under BSD License

let s:save_cpo = &cpo
set cpo&vim

if exists("loaded_vimango")
    finish
endif
let loaded_vimango = 1

if !exists('g:vimango_app_prefix')
    let g:vimango_app_prefix = ''
endif

if !exists('g:vimango_open_cmd')
    let g:vimango_open_cmd = 'tabnew'
endif

if !exists('g:vimango_template_prefix')
    let g:vimango_template_prefix = 'templates'
endif

python << EOF

def get_view_from_url():
    import vim
    line = vim.current.line
    parse_type = line.split(',')[1]
    if parse_type.strip() == 'direct_to_template':
        template = line.split(',')[2].split(":")[1].strip().replace("\"", "").rstrip("}")
        vim_grep_cmd = "%s %s%s" %(vim.eval('g:vimango_open_cmd'), vim.eval('g:vimango_template_prefix'), template)
    else:
        parsed = parse_type.split("'")[1]
        num_dots = parsed.count(".")
        if num_dots == 0:
            app = vim.current.buffer.name.split('/')[-2]
            vim_grep_cmd = "vimgrep /def " + parsed + "/g " + app + "/" + "views.py"
        elif num_dots == 1:
            app, urls = parsed.split('.')
            vim_grep_cmd = vim.eval('g:vimango_open_cmd') + " " + vim.eval('g:vimango_app_prefix') + app + "/" + urls + ".py"
        elif num_dots == 2:
            app, views, func = parsed.split('.')
            vim_grep_cmd = "vimgrep /def " + func + "/g " + vim.eval('g:vimango_app_prefix') + app + "/" + views + ".py"
    vim.command(vim_grep_cmd)

EOF

map <F2> :python get_view_from_url()<CR>j

let &cpo = s:save_cpo

