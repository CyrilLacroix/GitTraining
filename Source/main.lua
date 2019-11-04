require("GameEngine.Screen.ScreenManager")

ScreenManager = ScreenManager:new()

function love.load ()
    love.window.setMode(640, 480)
end

function love.draw ()
    ScreenManager:draw()
end

function love.update (dt)
    ScreenManager:update(dt)
    if love.keyboard.isDown("a") then ScreenManager:goToGameScreen() end
    if love.keyboard.isDown("b") then ScreenManager:goToHomeScreen() end
end