--TREE FELLER
--v0.3
--Latest change: Turtle now destroys more leaves on the way up
--0.2 - Combined into one script
--Author V38

function Main()
    while true do
        Plant()
        Fell()
        Refuel()
        Store()
    end
end

function Fell()
    inLeaves = false
    while turtle.detect() do
        if inLeaves do
            for i=1,4 do
                turtle.turnRight()
                turtle.dig()
            end
        end
        turtle.dig()
        if turtle.detect() do
            turtle.digUp()
            inLeaves = true
        end
        turtle.up()
    end
    while not turtle.detectDown() do
        turtle.down()
    end
end

function Refuel()
    turtle.select(16)
    turtle.refuel(5)
end

function Plant()
    turtle.select(14)
    turtle.place()
    turtle.select(15)
    for i=1,4 do
        turtle.place()
    end
end

function Store()
    turtle.turnRight()
    turtle.select(14)
    if turtle.getItemCount(14)==0 then
        turtle.suck()
    end
    turtle.turnRight()
    for i=1, 12 do
        turtle.select(i)
        turtle.drop()
    end
    turtle.turnRight()
    turtle.select(15)
    if(turtle.getItemCount(15) == 0) then
        turtle.suck()
    end
    turtle.turnRight()
end

Main()