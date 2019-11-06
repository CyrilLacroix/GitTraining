require("GameEngine.Entities.Grass")
require("GameEngine.Entities.Home")
require("GameEngine.Entities.Tree")
require("GameEngine.Entities.Player")
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
      self.newHome = Home:new()
      self.newHome:load(200, 200)
    self.newTree = Tree:new()
    self.newTree:load(50, 30)

    self.newPlayer = Player:new()
    self.newPlayer:load()
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
    self.newHome:draw ()
    self.newTree:draw()
      self.newPlayer:draw()
end

function Level1:update (dt)
    self.newPlayer:update(dt)
end