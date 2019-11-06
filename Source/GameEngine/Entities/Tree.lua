require("GameEngine.Helper.ContentLoader")
Tree = {}

function Tree:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.texture = nil
    self.quad = nil
    self.x = 0
    self.y = 0
    return o
end

function Tree:load (x, y)
    self.x = x
    self.y = y
    -- self.texture = love.graphics.newImage("Content/Overworld.png")
    self.texture = ContentLoader.Overworld
    self.quad = love.graphics.newQuad(80, 254, 32, 32, self.texture:getDimensions())
end

function Tree:draw ()
    -- love.graphics.draw(self.texture, self.x, self.y)
    love.graphics.draw(self.texture, self.quad, self.x, self.y)
end

function Tree:update (dt)
end