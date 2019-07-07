local code = {}
_G.keys = require("keys")

function code.init() end

function code.update()
	keys.update()
end

local statenum = 1

function code.draw()
	pal.setBackgroundColor(0)
	pal.setColor(15)
	love.graphics.print("Tecmo Character Creator v0.1.0",1,1)
end

return code
