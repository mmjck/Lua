Player = {}

function Player:new()
    data = {
        x = 30,
        y = 30,
        h = 30,
        w = 30,
        speed = 300,
        score = 0,
        highscore = 0,
        nColected = 0
    }

    setmetatable(data, {
        __index = Player
    })

    return data
end

function Player:update(dt)
    if love.keyboard.isDown("up") then
        data.y = data.y - data.speed * dt
    end
   
    if love.keyboard.isDown("down") then
        data.y = data.y + data.speed * dt
    end
   
    if love.keyboard.isDown("right") then
        data.x = data.x + data.speed * dt
    end
   
   if love.keyboard.isDown("left") then
        data.x = data.x - data.speed * dt
   end

    if data.x > love.graphics.getWidth() - data.w - 50 then
        data.x = love.graphics.getWidth() - data.w - 50
    end
    if data.y > love.graphics.getHeight() - data.h - 50 then
        data.y = love.graphics.getHeight() - data.h - 50
    end

    if data.x < 50 then
        data.x = 50
    end
    if data.y < 50 then
        data.y = 50
    end
end



function Player:draw()
   love.graphics.rectangle("fill", data.x, data.y, data.w, data.h)

end
