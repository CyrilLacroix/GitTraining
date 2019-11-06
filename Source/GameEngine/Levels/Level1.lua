require("GameEngine.Entities.Grass")
<<<<<<< HEAD
require("GameEngine.Entities.Home")
=======
require("GameEngine.Entities.Tree")
>>>>>>> origin/tree
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
<<<<<<< HEAD
      self.newHome = Home:new()
      self.newHome:load(200, 200)
=======
    self.newTree = Tree:new()
    self.newTree:load(50, 30)
>>>>>>> origin/tree
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
<<<<<<< HEAD
    self.newHome:draw ()
=======
    self.newTree:draw()
>>>>>>> origin/tree
end

function Level1:update (dt)
end