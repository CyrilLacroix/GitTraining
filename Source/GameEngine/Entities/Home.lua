require("GameEngine.Helper.ContentLoader")
Home = {}
-- Modification effectuée
function Home:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.texture = nil
    self.quad = nil
    self.x = 0
    self.y = 0
    return o
    -- Modification effectuée
end
-- Modification effectuée
function Home:load (x, y)
    self.x = x
    self.y = y
    -- self.texture = love.graphics.newImage("Content/Overworld.png")
    self.texture = ContentLoader.Overworld
    self.quad = love.graphics.newQuad(96, 0, 80, 80, self.texture:getDimensions())
end

function Home:draw ()
    -- Modification effectuée
    -- love.graphics.draw(self.texture, self.x, self.y)
    love.graphics.draw(self.texture, self.quad, self.x, self.y)
end
-- Modification effectuée
function Home:update (dt)
end