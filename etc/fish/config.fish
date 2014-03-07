set -lx curdir (dirname (status -f))

if not contains $curdir/completions $fish_complete_path
	set fish_complete_path $fish_complete_path $curdir/completions
end

if not contains $curdir/functions $fish_function_path
 	set fish_function_path $fish_function_path $curdir/functions
end
