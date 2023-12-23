using HorizonSideRobots
include("abstract.jl")
include("Coordinates.jl")

HSR = HorizonSideRobots

struct ChessRobotN <: AbstractRobot

    robot::Robot
    coordinates::Coordinates
    N::Int
    ChessRobotN(r,n) = new(r,Coordinates(0,0),N)

end

get_baserobot(robot::ChessRobotN) = robot.robot

function HorizonSideRobots.move!(robot::ChessRobotN, side)

    x, y = get(robot.coordinates) .÷ N
    display((x, y))
    if (isodd(x) && isodd(y) || iseven(x) && iseven(y))
        putmarker!(robot)
    end

    move!(robot.robot, side)
    move!(robot.coordinates,side)
    


end