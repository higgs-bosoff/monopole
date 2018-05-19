local State = {}

function State:load(arg)
end

function State:update(dt)
end 

function State:draw(dt)
end

function State:new ()
    o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

return State