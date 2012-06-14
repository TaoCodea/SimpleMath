--# Main
 
displayMode(FULLSCREEN_NO_BUTTONS)
supportedOrientations(ANY)
 
-- Use this function to perform your initial setup
function setup()
w,h = textSize("Simple")
tx = 0 - w*3
w,h = textSize("Math")
stx = WIDTH + w*3
w,h = textSize("Subtraction")
ttx = -w
gtx = WIDTH + w*2
w,h = textSize("Start Game")
sh = HEIGHT + h
start = true
prog = 10
barfull = false
ls = 0
levelanswer = - 1
one = Enemy1()
two = Enemy2()
three = Enemy3()
four = Enemy4()
five = Enemy5()
six = Enemy6()
seven = Enemy7()
eight = Enemy8()
nine = Enemy9()
end
 
-- This function gets called once every frame
function draw()
 background(0, 0, 0, 0)
   
  -- This sets the line thickness
    strokeWidth(5)
    -- Determines where enemy(s) are placed
if g == 1 then
 one:draw()
end
if g == 2 then
two:draw()
end
if g == 3 then
 three:draw()
end
if g == 4 then
four:draw()
end
if g == 5 then
five:draw()
end
if g == 6 then
six:draw()
end
if g == 7 then
seven:draw()
end
if g == 8 then
eight:draw()
end
if g == 9 then
nine:draw()
end
if g == 10 then
Enemy10:draw()
end
if g == 11 then
g = 10
end
if g == 12 then
g = 10
end
 
if start == true then
Start:draw()
end
 
if progbar == true then
ProgBar:draw()
end
 
if levels == true then
LevelSelect:draw()
end
 
if levels2 == true then
LevelSelect2:draw()
end
 
 
if levelwin == true then
LevelWon:draw()
end
 
if levellost == true then
LevelLost:draw()
end
 
if level == 1 then
Level1:draw()
end
 
if level == 2 then
Level2:draw()
end
 
if level == 3 then
Level3:draw()
end
 
if level == 4 then
Level4:draw()
end
 
if level == 5 then
Level5:draw()
end
 
if level == 6 then
Level6:draw()
end
 
if level == 7 then
Level7:draw()
end
 
if level == 8 then
Level8:draw()
end
 
if level == 9 then
Level9:draw()
end
 
if gameover == true then
GameOver:draw()
end
end  
 
function touched(touch)
cx = touch.x
cy = touch.y
if start == true then
   if barfull == true then
if CurrentTouch.state == ENDED and touch.x > WIDTH/2.8 and touch.x < WIDTH/1.6
    and touch.y > HEIGHT/2.1 and touch.y < HEIGHT/1.88 then
start = false
levels = true
end
end
end
 
if levels == true then
    w,h = textSize("8 - 6")
    if touch.state == ENDED and touch.x < WIDTH/2.8 and touch.y < HEIGHT/1.55 and touch.y > HEIGHT/2.75 then
    levels = false
    g = math.random(7,9)
    level = 2
    levelanswer = 5
end
if touch.state == ENDED and touch.x > WIDTH/2.8 and touch.x < WIDTH/1.5 and touch.y > HEIGHT/1.55 then
    levels = false
    g = math.random(4,9)
    level = 1
    levelanswer = 2
end
   if touch.state == ENDED and touch.x > WIDTH/2.8 and touch.x < WIDTH/1.5 and touch.y < HEIGHT/2.75 then
    levels = false
    g = math.random(5,9)
    level = 3
    levelanswer = 3
end
 if touch.state == ENDED and touch.x > WIDTH/1.5 and touch.y > HEIGHT/2.75 then
    levels = false
   g = math.random(8,9)
    level = 4
   levelanswer = 6
end
if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    levels2 = true
end
end
 
if levels2 == true then
    touches = 0
    w,h = textSize("8 - 6")
    if touch.state == ENDED and touch.x < WIDTH/2.8 and touch.y < HEIGHT/1.55 and touch.y > HEIGHT/2.75 then
    levels2 = false
    g = math.random(6,9)
    level = 6
    levelanswer = 4
end
if touch.state == ENDED and touch.x > WIDTH/2.8 and touch.x < WIDTH/1.5 and touch.y > HEIGHT/1.55 then
    levels2 = false
    g = math.random(10,12)
    level = 5
    levelanswer = 8
end
   if touch.state == ENDED and touch.x > WIDTH/2.8 and touch.x < WIDTH/1.5 and touch.y < HEIGHT/2.75 then
    levels2 = false
    g = math.random(2,9)
    level = 7
    levelanswer = 1
end
 if touch.state == ENDED and touch.x > WIDTH/1.5 and touch.y > HEIGHT/2.75 then
    levels2 = false
   g = math.random(9,12)
    level = 8
   levelanswer = 7
end
if touch.state == ENDED and touch.x < w*2
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    levels2 = false
    levels = true
end
end
 
if levelwin == true then
    if touch.state == ENDED and touch.x > WIDTH/3.25 and touch.x < WIDTH/2.35
    and touch.y > HEIGHT/3.3 and touch.y < HEIGHT /2.7 then
    levelwin = false
    g = math.random((nextlevelanswer + 2), 11)
    level = currentlevel + 1
    elseif touch.state == ENDED and touch.x > WIDTH/1.6 and touch.x < WIDTH/1.4
    and touch.y > HEIGHT/3.3 and touch.y < WIDTH/2.7 then
    levelwin = false
    levels = true
    end
end
 
if levellost == true then
    if touch.state == ENDED and touch.x > WIDTH/3.25 and touch.x < WIDTH/2.35
    and touch.y > HEIGHT/3.3 and touch.y < HEIGHT /2.7 then
    levellost = false
    level = currentlevel
    g = math.random((nextlevelanswer + 2), 11)
    elseif touch.state == ENDED and touch.x > WIDTH/1.6 and touch.x < WIDTH/1.4
    and touch.y > HEIGHT/3.3 and touch.y < WIDTH/2.7 then
    levellost = false
    levels = true
    end
end
 
if level == 1 then
    nextlevelanswer = 5
    w,h = textSize("8 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == 2 then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > 2 or g < 2 then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    end
    if CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 2 then
    levelanswer = 5
    nextlevelanswer = 3
    w,h = textSize("15 - 10")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == 5 then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > 5 or g < 5 then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 3 then
    levelanswer = 3
    nextlevelanswer = 6
    w,h = textSize("10 - 7")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 4 then
    nextlevelanswer = 8
    levelanswer = 6
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 5 then
    nextlevelanswer = 4
    levelanswer = 8
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 6 then
    nextlevelanswer = 1
    levelanswer = 4
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 7 then
    nextlevelanswer = 7
    levelanswer = 1
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    levelwin = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 8 then
    nextlevelanswer = 7
    levelanswer = 7
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    gameover = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if level == 9 then
    levelanswer = 9
    w,h = textSize("12 - 6")
    if touch.state == ENDED and touch.x > WIDTH - w*2.5 and touch.x < WIDTH - w/3
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    currentlevel = level
    if g == levelanswer then
    sound(SOUND_POWERUP, 8954)
    gameover = true
    level = 0
    g = 0
    elseif g > levelanswer or g < levelanswer then
    sound(SOUND_EXPLODE, 49856)
    levellost = true
    level = 0
    end
    elseif CurrentTouch.state == ENDED and g > 0 then
        g = g - 1
    end
end
 
if gameover == true then
w,h = textSize("Home")
if touch.state == ENDED and touch.x > WIDTH/2 - w and touch.x < WIDTH/2 + w
    and touch.y > HEIGHT/20 and touch.y < HEIGHT/10 then
    w,h = textSize("Simple")
tx = 0 - w
w,h = textSize("Math")
stx = WIDTH + w
w,h = textSize("Subtraction")
ttx = -w
gtx = WIDTH + w*2
w,h = textSize("Start Game")
sh = HEIGHT + h
    start = true
    gameover = false
end
end
end
--# GameOver
GameOver = class()
 
function GameOver:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function GameOver:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    fill(255, 167, 0, 255)
    w,h = textSize("CONGRATS!")
    fontSize(75)
    text("CONGRATULATIONS!", WIDTH/2, HEIGHT - h)
    fontSize(50)
    text("You've beat the last level!", WIDTH/2, HEIGHT/2)
    text("New levels coming soon!", WIDTH/2, HEIGHT/3)
    w,h = textSize("8 - 6")
    text("Home", WIDTH/2, HEIGHT/15)
end
 
function GameOver:touched(touch)
    -- Codea does not automatically call this method
end
 
--# LevelLost
LevelLost = class()
 
function LevelLost:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function LevelLost:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    sprite("Documents:X", WIDTH/2, HEIGHT/1.1, WIDTH/10)
    sprite("Documents:X", WIDTH/1.5, HEIGHT/1.1, WIDTH/10)
    sprite("Documents:X", WIDTH/3, HEIGHT/1.1, WIDTH/10)
    fontSize(WIDTH/15)
    fill(255, 244, 0, 255)
    text("Sorry, "..g.." is not the right answer", WIDTH/2, HEIGHT/1.75)
    fontSize(WIDTH/20)
    fill(255, 0, 210, 255)
    text("Want to try again?", WIDTH/2, HEIGHT/2.25)
    fill(0, 255, 50, 255)
    text("YES!", WIDTH/2.75, HEIGHT/3)
    text("No", WIDTH/1.5, HEIGHT/3)
end
 
function LevelLost:touched(touch)
    -- Codea does not automatically call this method
end
 
--# LevelSelect
LevelSelect = class()
 
function LevelSelect:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function LevelSelect:draw()
    -- Codea does not automatically call this method
       background(0, 172, 255, 255)
 
    -- This sets the line thickness
    strokeWidth(5)
    -- Do your drawing here
    fill(219, 255, 0, 255)
    fontSize(WIDTH/20)
    w,h = textSize("Level Select")
    text("Level Select", WIDTH/2, HEIGHT - h/2)
    sprite("Documents:Level3", WIDTH/2, HEIGHT/5, 250)
    sprite("Documents:Level1", WIDTH/2, HEIGHT/1.25, 250)
    sprite("Documents:Level4", WIDTH/1.25, HEIGHT/2, 250)
    sprite("Documents:Level2", WIDTH/5, HEIGHT/2, 250)
    w,h = textSize("8 - 6")
    text("More", WIDTH - w, HEIGHT/15)
end
 
function LevelSelect:touched(touch)
    -- Codea does not automatically call this method
end
 
--# LevelSelect2
LevelSelect2 = class()
 
function LevelSelect2:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function LevelSelect2:draw()
    touches = 0
    -- Codea does not automatically call this method
    background(0, 172, 255, 255)
    fill(219, 255, 0, 255)
    fontSize(WIDTH/20)
    w,h = textSize("Level Select")
    text("Level Select", WIDTH/2, HEIGHT - h/2)
    sprite("Documents:Level7", WIDTH/2, HEIGHT/5, 250)
    sprite("Documents:Level5", WIDTH/2, HEIGHT/1.25, 250)
    sprite("Documents:Level8", WIDTH/1.25, HEIGHT/2, 250)
    sprite("Documents:Level6", WIDTH/5, HEIGHT/2, 250)
    w,h = textSize("8 - 6")
    text("Back", w, HEIGHT/15)
end
 
function LevelSelect2:touched(touch)
    -- Codea does not automatically call this method
end
 
--# LevelSelect3
LevelSelect3 = class()
 
function LevelSelect3:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function LevelSelect3:draw()
    -- Codea does not automatically call this method
    background(0, 172, 255, 255)
    fill(219, 255, 0, 255)
    fontSize(WIDTH/20)
    w,h = textSize("Level Select")
    text("Level Select", WIDTH/2, HEIGHT - h/2)
    sprite("Documents:Level9", WIDTH/2, HEIGHT/1.25, 250)
    w,h = textSize("8 - 6")
    text("Back", w, HEIGHT/15)
end
 
function LevelSelect3:touched(touch)
    -- Codea does not automatically call this method
end
 
--# LevelWon
LevelWon = class()
 
function LevelWon:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function LevelWon:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    sprite("Planet Cute:Star", WIDTH/2, HEIGHT - 35)
    sprite("Planet Cute:Star", WIDTH/1.5, HEIGHT - 35)
    sprite("Planet Cute:Star", WIDTH/3, HEIGHT - 35)
    fontSize(WIDTH/15)
    fill(255, 244, 0, 255)
    text("Congratulations!! You did it!", WIDTH/2, HEIGHT/1.75)
    fontSize(WIDTH/20)
    fill(255, 0, 210, 255)
    text("Ready to take on the next level?", WIDTH/2, HEIGHT/2.25)
    fill(0, 255, 51, 255)
    text("YES!", WIDTH/2.75, HEIGHT/3)
    text("No", WIDTH/1.5, HEIGHT/3)
end
 
function LevelWon:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level1
Level1 = class()
 
function Level1:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level1:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("8 - 6")
    text("8 - 6", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
   
end
 
function Level1:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level2
Level2 = class()
 
function Level2:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level2:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("15 - 10")
    text("15 - 10", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level2:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level3
Level3 = class()
 
function Level3:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level3:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("10 - 7")
    text("10 - 7", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
   
end
 
function Level3:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level4
Level4 = class()
 
function Level4:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level4:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("12-6")
    text("12 - 6", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level4:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level5
Level5 = class()
 
function Level5:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level5:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("17 - 9")
    text("17 - 9", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level5:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level6
Level6 = class()
 
function Level6:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level6:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("9 - 5")
    text("9 - 5", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level6:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level7
Level7 = class()
 
function Level7:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level7:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("9 - 5")
    text("57 - 56", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level7:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level8
Level8 = class()
 
function Level8:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level8:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("19 - 12")
    text("19 - 12", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level8:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Level9
Level9 = class()
 
function Level9:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Level9:draw()
    -- Codea does not automatically call this method
    fill(255, 255, 255, 255)
    fontSize(50)
    w,h = textSize("19 - 12")
    text("28 - 19", WIDTH/2, HEIGHT - h/2)
    fontSize(40)
    text("Done", WIDTH - w, HEIGHT/15)
    Cursor:draw()
end
 
function Level9:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Cursor
Cursor = class()
 
function Cursor:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Cursor:draw()
    -- Codea does not automatically call this method
    ellipse(cx, cy, 51.2, 51.2)
end
 
function Cursor:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy1
Enemy1 = class()
 
function Enemy1:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy1:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2, 275)
end
 
function Enemy1:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy2
Enemy2 = class()
 
function Enemy2:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy2:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/4, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.4, HEIGHT/2, 275)
end
 
function Enemy2:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy3
Enemy3 = class()
 
function Enemy3:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy3:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 275)
end
 
function Enemy3:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy4
Enemy4 = class()
 
function Enemy4:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy4:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy4:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy5
Enemy5 = class()
 
function Enemy5:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy5:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy5:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy6
Enemy6 = class()
 
function Enemy6:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy6:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy6:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Enemy7
Enemy7 = class()
 
function Enemy7:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy7:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy7:touched(touch)
    -- Codea does not automatically call this method
    g = g - 1
end
 
--# Enemy8
Enemy8 = class()
 
function Enemy8:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy8:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy8:touched(touch)
    -- Codea does not automatically call this method
    g = g - 1
end
 
--# Enemy9
Enemy9 = class()
 
function Enemy9:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy9:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 275)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 275)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 275)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 275)
end
 
function Enemy9:touched(touch)
    -- Codea does not automatically call this method
    g = g - 1
end
 
--# Enemy10
Enemy10 = class()
 
function Enemy10:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Enemy10:draw()
    -- Codea does not automatically call this method
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/5, 250)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/1.5, 250)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/2, 250)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/2, 250)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/1.1, 250)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/1.25, 250)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/1.25, 250)
    sprite("Documents:Rocketship", WIDTH/2, HEIGHT/2.5, 250)
    sprite("Documents:Rocketship", WIDTH/1.25, HEIGHT/5, 250)
    sprite("Documents:Rocketship", WIDTH/5, HEIGHT/5, 250)
end
 
function Enemy10:touched(touch)
    -- Codea does not automatically call this method
end
 
--# ProgBar
ProgBar = class()
 
function ProgBar:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function ProgBar:draw()
    -- Codea does not automatically call this method
if barfull == false then
    fill(255, 255, 255, 255)
    rectMode(CORNER)
    rect(2, HEIGHT - 50, WIDTH, 50)
    fill(0, 174, 255, 255)
    rect(2, HEIGHT - 48, prog, 48)
 
    if CurrentOrientation == 3 or CurrentOrientation == 2 then
    rate = 3.55
    else rate = 2.65
    end
   
    if ElapsedTime < 5
    then prog = prog + rate
    elseif ElapsedTime > 5 then
    prog = WIDTH - 2
    barfull = true
    end
   
    fill(127, 127, 127, 255)
    fontSize(25)
    w,h = textSize("LOADING...")
    if prog > w then
    text("LOADING...", prog/2, HEIGHT - 25)
    end
end
end
 
function ProgBar:touched(touch)
    -- Codea does not automatically call this method
end
 
--# Start
Start = class()
 
function Start:init(x)
    -- you can accept and set parameters here
    self.x = x
end
 
function Start:draw()
    -- Codea does not automatically call this method
    progbar = true
    speed = 15
    background(127, 127, 127, 0)
    fill(0, 213, 255, 255)
    w,h = textSize("Simple Math")
    fontSize(75)
    text("Simple", tx, HEIGHT - h)
    text("Math", stx, HEIGHT - h)
    fontSize(25)
    text("Subtraction", ttx, HEIGHT - h*2)
    text("Edition", gtx, HEIGHT - h*2)
    fill(0, 255, 73, 255)
    fontSize(50)
    text("Start Game", WIDTH/2, sh)
    sprite("Documents:MadeWithCodea", WIDTH/2, HEIGHT/3.5, WIDTH/2.25)
 
if barfull == true then
if CurrentOrientation == 2 or CurrentOrientation == 3 then
if tx < WIDTH/2 - w/4 then
    tx = tx + speed
    else tx = WIDTH/2 - w/4
end  
 
if tx == WIDTH/2 - w/4 then  
    if ttx < WIDTH/2.175 then
    ttx = ttx + speed
    else ttx = WIDTH/2.175
    end
end  
     
    if stx > WIDTH/1.6 then
    stx = stx - speed
    else stx = WIDTH/1.6
    end
 
if stx == WIDTH/1.6 then
    if gtx > WIDTH/1.775 then
    gtx = gtx - speed
    else gtx = WIDTH/1.775
    end
end
 
if ttx == WIDTH/2.175 then    
    if sh > HEIGHT/2 then
    sh = sh - speed
    else sh = HEIGHT/2
    end
end
elseif CurrentOrientation == 0 or CurrentOrientation == 1 then
background(127, 127, 127, 0)
fontSize(75)
fill(0, 213, 255, 255)
text("Simple Math", WIDTH/2, HEIGHT - h)
fontSize(25)
text("Subtraction Edition", WIDTH/2, HEIGHT - h*2)
fill(0, 255, 73, 255)
fontSize(50)
text("Start Game", WIDTH/2, HEIGHT/2)
sprite("Documents:MadeWithCodea", WIDTH/2, HEIGHT/3.5, WIDTH/2.25)
end
end
end
 
function Start:touched(touch)
    -- Codea does not automatically call this method
end