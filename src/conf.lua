local conf = {}
function love.conf(t)
	t.window.title = "Tecmo Character Creator"
	t.window.width = 640
	t.window.height = 600
	t.identity = "TecmoCharCreator"
	t.framerate = 30
	t.debug=true
	t.prefix_blacklist={["sprite."]=true}
	t.blacklist = {["drawCentered"]=true}
	t.palette = "DB16"
	conf.properties = t
end
return conf
