-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
function go_exists(id)
	if not id then return false end
	local exists,_ = pcall(function()
		go.get_position(id)
	end)
	return exists
end