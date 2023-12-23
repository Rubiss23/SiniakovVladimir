include("func.jl")
robot = Robot("sits/zd12.sit",animate = true)

function zd12(robot)

    x = movealong!(robot,West)
    y = movealong!(robot,Nord)
    count = crossall_space_count(robot)
    gocorner(robot,West,Nord)
    gohome!(robot,Nord,West,y,x)

    println(count)
    
end
