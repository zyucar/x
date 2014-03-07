set -lx curdir (dirname (status -f))

if not contains $curdir/completions $fish_complete_path
	set fish_complete_path $curdir/completions $fish_complete_path
end

if not contains $curdir/functions $fish_function_path
 	set fish_function_path $curdir/functions $fish_function_path
end

set fish_greeting ""

set fish_color_command "5fff00"
