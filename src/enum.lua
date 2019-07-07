local function enum()
	local ret = {}
	ret.n = 0
	ret.define = function(k)
		ret.n = ret.n+1
		ret[k:upper()]=ret.n
		ret[ret.n]=k:upper()
	end
	return ret
end

return enum
