function _up_dirstack
	if not set -q _FISH_DIRSTACK
		return 1
	end
	set -xg _FISH_DIRSTACK (pwd) $_FISH_DIRSTACK
	
	set -xg _FISH_STACK_FLAG
	cd .. 2>/dev/null
	set -xge _FISH_STACK_FLAG
end
