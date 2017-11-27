function VimgrepInput()
    call inputsave()
    let user_input = input('vimgrep: ')
    call inputrestore()
    silent exe 'vimgrep /' . user_input . '/j **' | cw
    "vimgrep user_input %
endfunction
