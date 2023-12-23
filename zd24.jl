include("func.jl")
robot = Robot("sits/zd24.sit",animate = true)

function zd24(robot, side)

    function zd24_1(robot,side)
        if !isborder(robot, side)
            move!(robot, side)
            zd24(robot, side)
        end
    end

    if !isborder(robot, side)
        move!(robot, side)
        zd24_1(robot, side)
        move!(robot, inverse(side)) # отложенное действие
    end

end

