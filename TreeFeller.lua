--TREE FELLER
--v0.3.1
--Latest Change: Turtle now destroys more leaves on the way up
--Latest Minor Revision: Fixing up if Statements
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
        if inLeaves then
            for i=1,4 do
                turtle.turnRight()
                turtle.dig()
            end
        end
        turtle.dig()
        if turtle.detectUp() then
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
    turtle.refuel(1)
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