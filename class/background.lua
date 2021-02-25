Background = {}

function Background:load()
  self.universe = love.graphics.newImage("assets/background/universe.png")
  self.planets = love.graphics.newImage("assets/background/planets/planets.png")
  self.width = self.planets:getWidth()
  self.height = self.planets:getHeight()
  self.rotation = 0
end

function Background:update(dt)
  self.rotation = self.rotation + 0.5 * dt
end

function Background:draw()
  love.graphics.draw(self.universe, 0, 0)
  love.graphics.draw(self.planets, self.width / 2, self.height /2, self.rotation, 1, 1, self.width / 2, self.height / 2)
end