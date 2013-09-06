--TREE FELLER
--Plants then cuts down a tree, harvesting saplings if possible.
--v0.4.2
--Latest Major Change: Turtle now destroys even more leaves, crossing the tree as it goes
--Latest Minor Change: Merge Complete - Puts Spare saplings in sapling chest
--Author: V38

function Main()
    while true do
        Plant()
        Fell()
        Refuel()
        Store()
        sleep(10)
    end
end

function Fell()
    turtle.select(1)
    inLeaves = false
    while turtle.detect() do
        if inLeaves then
            SpinDig()
            turtle.forward()
            SpinDig()
            turtle.forward()
            SpinDig()
            turtle.turnRight()
            turtle.turnRight()
            turtle.forward()
            turtle.forward()
            turtle.turnRight()
            turtle.turnRight()
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

function SpinDig()
    for i=1,4 do
        turtle.turnRight()
        turtle.dig()
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
    turtle.select(14) --grab saplings
    if turtle.getItemCount(14)==0 then
        turtle.suck()
    end
    for i=1, 12 do --put saplings in the sapling chest
        turtle.select(i)
        if turtle.compareTo(14) then
            turtle.drop()
        end
    end
    turtle.turnRight()
    for i=1, 12 do --deposit wood rubber w/e
        turtle.select(i)
        turtle.drop()
    end
    turtle.turnRight()
    turtle.select(15) --grab bonemeal
    if(turtle.getItemCount(15) == 0) then
        turtle.suck()
    end
    turtle.turnRight()
end

Main()
