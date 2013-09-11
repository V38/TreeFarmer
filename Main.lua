--Main Execution Code

require "TreeFarmAPI"

function Main()
    while true do
        Plant()
        Fell()
        Refuel()
        Store()
        sleep(5)
    end
end
