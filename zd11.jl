include("func.jl")
robot = Robot("sits/zd11.sit",animate = true)

function zd11(robot)

    x = movealong!(robot,West)
    y = movealong!(robot,Nord)
    count = crossall_count(robot)
    gocorner(robot,West,Nord)
    gohome!(robot,Nord,West,y,x)

    println(count)
    
end