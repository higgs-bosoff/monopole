State = require('states.state')
Ship = require('objects.ship')

local PlayState = State:new()

PlayState.y1 = 300
PlayState.y2 = 300

function PlayState:load()
    self.ship1 = Ship:new({x=50, y=self.y1, s=2, tint={0, 0.5, 1}})
    self.ship2 = Ship:new({x=750, y=self.y2, s=-2, tint={1, 0.5, 0}})
end

function PlayState:draw()
    print(self)
    print(self.ship1.x)
    print(self.ship2.x)
    self.ship1:draw()
    self.ship2:draw()
end

return PlayState