PlayState = require('states.play')

game_global = {
    state=PlayState:new()
}

function love.load(arg)
    love.window.setMode(800, 600, {msaa=0})
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
    game_global.state:draw()
end