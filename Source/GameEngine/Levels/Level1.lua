require("GameEngine.Entities.Grass")
Level1 = {}

function Level1:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.grid = {}
    for i=0, 40 do
        self.grid[i] = {}     -- create a new row
        for j=0, 30 do
            newGrass = Grass:new()
            newGrass:load(i * 16, j * 16)
            self.grid[i][j] = newGrass
        end
      end
    return o
end

function Level1:load ()
end

function Level1:draw ()
    for i=0, 40 do
        for j=0, 30 do
            self.grid[i][j]:draw()
        end
      end
end

function Level1:update (dt)
end