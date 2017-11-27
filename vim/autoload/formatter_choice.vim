function! ChooseAstyleSetting()
call inputsave()
let name = input('Choose Astyle setting: ')
call inputrestore()
let g:astyle_setting = name
endfunction
