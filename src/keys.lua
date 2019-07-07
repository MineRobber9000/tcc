local keys = {}
keys.list = require("enum")()

keys.list.define("up")
keys.list.define("down")
keys.list.define("left")
keys.list.define("right")
keys.list.define("a")
keys.list.define("b")
keys.list.define("start")
keys.list.define("select")

local default_bindings = {"up","down","left","right","z","x","return","lshift"}

keys.bindings = {}
for i=1,8 do
	keys.bindings[i] = function() return love.keyboard.isDown(default_bindings[i]) end
end

keys._override={}

keys.held = {false,false,false,false,false,false,false,false}
keys.pushed = {false,false,false,false,false,false,false,false}
keys.holding = {false,false,false,false,false,false,false,false}

local function _set_key_state(n,state)
	if keys._override[n]~=nil then state=keys._override[n] end
	keys.held[n]=state
	if state and keys.holding[n] then keys.pushed[n]=false else keys.pushed[n]=state end
	keys.holding[n]=state
end

function keys.update()
	for k=1,8 do
		_set_key_state(k,keys.bindings[k]())
	end
end

function keys.override(n,s)
	keys._override[n]=s
end

local function is(k)
	return function(n) return keys[k][n] end
end

keys.btn = is("held")
keys.btnp = is("pushed")

return keys
