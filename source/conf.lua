-- Configuration
function love.conf(t)
    t.title = "Monopole" -- The title of the window the game is in (string)
    t.version = "11.1"         -- The LÖVE version this game was made for (string)
    t.window.width = 800        -- we want our game to be long and thin.
    t.window.height = 600
    t.window.msaa = 0

    -- For Windows debugging
    t.console = true
end