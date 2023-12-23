using HorizonSideRobots

mutable struct Coordinates

    x:: Int
    y:: Int

end

    function HorizonSideRobots.move!(coord:: Coordinates, side:: HorizonSide)
        if side==Ost
            coord.x += 1
        elseif side==West
            coord.x-=1
        elseif side == Nord
            coord. y += 1
        else # side == Sud
            coord.y -= 1
        end
        nothing
    end

    get(coord::Coordinates) = (coord.x, coord.y)
