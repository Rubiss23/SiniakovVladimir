include("func.jl")
condition = false
robot = ChessRobot(Robot("sits/zd25.sit",animate = true),condition)

function zd25(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        zd25(robot,side)
    end

end