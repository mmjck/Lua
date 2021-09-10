Food = {
    nFood = 0
}


function Food:new()
    food = {
        x = math.random(100, 800 - 10),
        y = math.random(100, 800 - 10),
        h = 10,
        w = 10,        
    }

    setmetatable(food, { __index = Food  })

    return food
end


function Food:update(dt)
    conditional = data.y + data.h > self.y and data.y < self.h + self.y and data.x + data.w > self.x and data.x < self.w + self.x

    if conditional == true then
        data.score = data.score + 10
        self:respawn()
    end

end

function Food:draw()
    love.graphics.setColor(255, 0, 255)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end
 

function Food:respawn()
    self.x = math.random(100, 800 - self.w)
    self.y = math.random(100, 800 - self.h)
end