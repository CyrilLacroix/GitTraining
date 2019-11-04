require("GameEngine.Helper.ContentLoader")
Grass = {}

function Grass:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.texture = nil
    self.quad = nil
    self.x = 0
    self.y = 0
    return o
end

function Grass:load (x, y)
    self.x = x
    self.y = y
    -- self.texture = love.graphics.newImage("Content/Overworld.png")
    self.texture = ContentLoader.Overworld
    self.quad = love.graphics.newQuad(0, 0, 16, 16, self.texture:getDimensions())
end

function Grass:draw ()
    -- love.graphics.draw(self.texture, self.x, self.y)
    love.graphics.draw(self.texture, self.quad, self.x, self.y)
end

function Grass:update (dt)
end