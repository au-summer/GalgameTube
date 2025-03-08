-- Usage:
--    j - skip to the next subtitle
--    k - skip to the previous subtitle

function skip_to_the_previous_subtitle()
	mp.commandv("sub-seek", "-1")
end

function skip_to_the_next_subtitle()
	mp.commandv("sub-seek", "1")
end

function init()
	mp.add_key_binding("j", "skip-to-the-next-subtitle", skip_to_the_next_subtitle)
	mp.add_key_binding("k", "skip-to-the-previous-subtitle", skip_to_the_previous_subtitle)
end

mp.register_event("file-loaded", init)
