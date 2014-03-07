set -l curdir (dirname (status -f))

if not set -q fish_complete_path
	set fish_complete_path $curdir/completions
end

if not contains $curdir/completions $fish_complete_path
	set fish_complete_path[-1] $curdir/completions
end

if not set -q fish_function_path
	set fish_function_path $curdir/functions
end

if not contains $curdir/functions $fish_function_path
	set fish_function_path[-1] $curdir/functions
end
