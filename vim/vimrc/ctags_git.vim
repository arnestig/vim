function CtagsGitPath()
    let git_path = split(system('git rev-parse --show-toplevel'),"\n")
    if v:shell_error == 0 && len(git_path) == 1
        let tmp = system('ctags -R --extra=f -f ' . git_path[0] . '/tags ' . git_path[0])
        echo 'tags generated to ' . git_path[0]
    else
        let tmp = system('ctags -R *')
        echo 'no git repo, tags generated locally'
    endif
endfunction
