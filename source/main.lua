PlayState = require('states.play')

game_global = {
    state=PlayState:new()
}

print(game_global.state)

function love.draw(dt)
    love.graphics.print("Hello World", 400, 300)
    game_global.state:draw(dt)
end