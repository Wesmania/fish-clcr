function _down_dirstack
	if not set -q _FISH_DIRSTACK
		return 1
	end

	if [ (count $_FISH_DIRSTACK) -eq 0 ]
		return 1
	else if [ (count $_FISH_DIRSTACK) -gt 1 ]
		set rest $_FISH_DIRSTACK[2..-1]
	else
		set rest
	end

	set first $_FISH_DIRSTACK[1]
	set -xg _FISH_DIRSTACK $rest

	set -xg _FISH_STACK_FLAG
	cd $first 2>/dev/null
	set -xge _FISH_STACK_FLAG
end
