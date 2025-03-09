-- Usage:
--    j - skip to the next subtitle
--    k - skip to the previous subtitle

function Skip_to_the_previous_subtitle()
	mp.commandv("sub-seek", "-1")
end

function Skip_to_the_next_subtitle()
	mp.commandv("sub-seek", "1")
end

function Init()
	mp.add_key_binding("j", "Skip-to-the-next-subtitle", Skip_to_the_next_subtitle)
	mp.add_key_binding("k", "Skip-to-the-previous-subtitle", Skip_to_the_previous_subtitle)
end

mp.register_event("file-loaded", Init)
