
require("player")
require("food")



function love.load()
    highscores = {}

    p = Player:new()

    foods = { Food:new(), Food:new(), Food:new() }


    if not love.filesystem.exists("scores.lua") then
        scores = love.filesystem.newFile("scores.lua")
    end


    for lines in love.filesystem.lines("scores.lua") do
        table.insert(highscores, lines)
    end


    love.filesystem.write("scores.lua", "p.highscore\n=\n" .. p.highscore)
    p.highscore = highscores[3]


    font = love.graphics.newFont("fonts/Acme-Regular.ttf", 27)

end


function love.update(dt)
    p:update(dt)
    for i, item in ipairs(foods) do
        item:update()
    end
 
    if p.score > tonumber(p.highscore) then
        p.highscore = p.score
        love.filesystem.write("scores.lua", "p.highscore\n=\n" .. p.highscore)
    end

end

function love.draw()
   
    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(font)
    love.graphics.print("Score: "..p.score, 15, 15)
    love.graphics.print("HighScore: "..p.highscore, 150, 15)

    love.graphics.rectangle("line", 50, 50, love.graphics.getWidth() - 100, love.graphics.getHeight() - 100)

    p:draw()


    for i, item in ipairs(foods) do
        item:draw()
    end
 
    love.graphics.setBackgroundColor(100, 255, 255)

end


function love.quit()
    love.event.quit()
    love.filesystem.write("scores.lua", "p.highscore\n=\n" .. p.highscore)

end
