include("func.jl")
robot = Robot("sits/zd3.sit",animate = true);

function zd3(robot)

    x = movealong!(robot,Nord)
    y = movealong!(robot,West)
    markall!(robot)
    gocorner(robot,Nord,West)
    gohome!(robot,Nord,West,x,y)
    
end