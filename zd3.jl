include("func.jl")
robot = Robot(animate = true);

function zd3(robot)

    x = movealong!(robot,Nord)
    y = movealong!(robot,West)
    markall!(robot,Ost,Sud)
    gocorner(robot,Nord,West)
    gohome!(robot,Nord,West,x,y)
    
end