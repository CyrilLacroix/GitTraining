Player = {}

function Player:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Player:load ()
    self.texture = love.graphics.newImage("Content/character.png")
    self.x = 50
    self.y = 50
    self.quad = love.graphics.newQuad(0, 7, 16, 20, self.texture:getDimensions())
end

function Player:draw ()
    love.graphics.draw(self.texture, self.quad, self.x, self.y)
end

function Player:update (dt)
    if love.keyboard.isDown("a") then self.x = self.x - 1 end
    if love.keyboard.isDown("d") then self.x = self.x + 1 end
    if love.keyboard.isDown("w") then self.y = self.y - 1 end
    if love.keyboard.isDown("s") then self.y = self.y + 1 end
end