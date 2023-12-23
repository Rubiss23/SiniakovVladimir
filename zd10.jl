include("func.jl")
N = 3
robot = Robot("sits/zd10.sit",animate=true)

function zd10(robot)

    x = movealong!(robot,Sud)
    y = movealong!(robot,West)
    robot = ChessRobotN(robot,N)
    snake!(robot; start_side=Nord, ortogonal_side=Ost)
    gocorner(robot::AbstractRobot, Sud, West)
    gohome!(robot,Sud,West,x,y)

end