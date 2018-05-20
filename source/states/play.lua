State = require('states.state')
Ship = require('objects.ship')
Utils = require('utils')

local PlayState = State:new()

PlayState.y1 = 300
PlayState.y2 = 300

PlayState.p1_up = 'w'
PlayState.p1_down ='s'
PlayState.p2_up = 'up'
PlayState.p2_down = 'down'

PlayState.bound = 60
_, wh = love.window.getMode()
PlayState.ubound = wh-PlayState.bound

PlayState.ship_speed = 100

function PlayState:load()
    self.ship1 = Ship:new({x=50, y=self.y1, s=2, tint={0, 0.5, 1}})
    self.ship2 = Ship:new({x=750, y=self.y2, s=-2, tint={1, 0.5, 0}})
end

function PlayState:update(dt)
    local dy1 = Utils.axis(love.keyboard.isDown(self.p1_down),
                           love.keyboard.isDown(self.p1_up))
    local dy2 = Utils.axis(love.keyboard.isDown(self.p2_down),
                           love.keyboard.isDown(self.p2_up))

    self.ship1.y = Utils.clip(self.ship1.y + dy1*self.ship_speed*dt, 
                              self.bound, self.ubound)
    self.ship2.y = Utils.clip(self.ship2.y + dy2*self.ship_speed*dt, 
                              self.bound, self.ubound)
end

function PlayState:draw()
    self.ship1:draw()
    self.ship2:draw()
end

return PlayState