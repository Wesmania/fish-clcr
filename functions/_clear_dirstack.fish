function _clear_dirstack --on-variable PWD
	status --is-command-substitution; and return
	if not set -q _FISH_STACK_FLAG
		set -xg _FISH_DIRSTACK
	end
end
