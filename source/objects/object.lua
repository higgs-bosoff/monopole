local Object = {}

function Object:load(arg)
end

function Object:update(dt)
end

function Object:draw()
end

function Object:new(arg)
    o = {}
    setmetatable(o, self)
    self.__index = self
    o:load(arg)
    return o
end

return Object