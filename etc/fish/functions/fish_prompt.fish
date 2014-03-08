# Öntanımlı komut istemini küçük değişikliklerle uyarla
function fish_prompt --description "Write out the prompt"

	set -l color_normal (set_color normal)
	set -l color_cyan (set_color 00ffff)
	set -l color_blue (set_color 87afff)
	set -l color_pink (set_color ff0087)


	# Just calculate these once, to save a few cycles when displaying the prompt
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	switch $USER

		case root

		if not set -q __fish_prompt_cwd
			if set -q fish_color_cwd_root
				set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
			else
				set -g __fish_prompt_cwd (set_color $fish_color_cwd)
			end
		end

		echo -n -s "$USER" @ "$__fish_prompt_hostname" ' ' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '# '

		case '*'

		if not set -q __fish_prompt_cwd
			set -g __fish_prompt_cwd (set_color $fish_color_cwd)
		end

		echo -n -s \
			"$color_cyan" \
			"$USER" \
			"$color_normal" \
			"$color_pink"\
			'@' \
			"$color_normal" \
			"$color_blue" \
			"$__fish_prompt_hostname" \
			"$color_normal" \
			' ' \
			"$__fish_prompt_cwd" (prompt_pwd) \
			"$__fish_prompt_normal" \
			"$color_pink" \
			'>' \
			"$color_normal" \
			' '
	end
end
