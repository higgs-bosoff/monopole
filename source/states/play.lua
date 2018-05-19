State = require('states.state')

local PlayState = State:new()

PlayState.x = 300

function PlayState:draw()
    t = love.math.newTransform()
    t:translate(self.x,300)
    t:rotate(self.x/100.0)
    love.graphics.applyTransform(t)
    love.graphics.arc('fill', 0, 0, 50, 0, math.pi)
    love.graphics.origin()
    self.x = self.x+1
end

return PlayState