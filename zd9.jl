include("func.jl")
robot = ChessRobot(Robot("sits/zd9.sit",animate = true), true)

function zd9(robot)

    x = movealong!(robot,West)
    y = movealong!(robot,Nord)
    crossall(robot)
    gocorner(robot,West,Nord)
    gohome!(robot,West,Nord,x,y)
    
end