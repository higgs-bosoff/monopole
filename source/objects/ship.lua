Object = require('objects.object')

local Ship = Object:new()

Ship.sprite = love.graphics.newImage('assets/sprites/ship.png')
Ship.sprite:setFilter('nearest', 'nearest', 0)
Ship.px = Ship.sprite:getWidth()/2
Ship.py = Ship.sprite:getHeight()/2

function Ship:load(arg)
    self.x = arg.x or 0
    self.y = arg.y or 0
    self.sx = arg.sx or arg.s or 1
    self.sy = arg.sy or arg.s or 1
    self.rot = arg.rot or 0
    self.tint = arg.tint or {255, 255, 255}
end

function Ship:draw()
    love.graphics.setColor(self.tint)
    love.graphics.draw(self.sprite, self.x, self.y, self.rot, 
                       self.sx, self.sy, self.px, self.py)
    love.graphics.setColor({255, 255, 255})
end

return Ship