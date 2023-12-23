include("func.jl")
robot = Robot("sits/zd23.sit",animate = true)

function zd23(robot,side)

    if !isborder(robot,side)
        move!(robot,side)
        zd23(robot,side)
        move!(robot,side)
    else
        movealong!(robot,inverse(side))
    end
    
    
end