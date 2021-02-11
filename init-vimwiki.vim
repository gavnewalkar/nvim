let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'path': '~/Documents/vimwiki'}]
let g:vimwiki_url_maxsave=0

function! VimwikiLinkHandler(link)
    let link = a:link
    if link =~# '^vfile:'
        let link = link[1:]
    else
        return 0
    endif
    let link_infos = vimwiki#base#resolve_link(link)
    if link_infos.filename ==? ''
        echomsg 'Vimwiki Error: Unable to resolve link!'
        return 0
    else
        exe 'edit' . fnameescape(link_infos.filename)
        return 1
    endif
endfunction
