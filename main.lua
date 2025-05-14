local function setup(_, options)
	options = options or {}

	local config = {
		hostname_username_color = options.hostname_username_color or "silver",
	}

	if Yatline ~= nil then
		function Yatline.coloreds.get:hostname_username()
      if ya.target_family() ~= "unix" then
				return {}
      end

      local user = ya.user_name()
      local host = ya.host_name()
      if not user or not host then
				return {}
      end

			local out = string.format("%s@%s", user, host)
      return {
        { out, config.hostname_username_color }
      }
		end
	end
end

return { setup = setup }
