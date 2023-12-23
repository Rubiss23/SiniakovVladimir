include("func.jl")
robot = Robot("sits/zd2.sit",animate = true);

function zd2(robot)

    x = movealong!(robot,West)
    y = movealong!(robot,Nord)
    print(x, " ", y)
    perimetr(robot,Ost)
    gohome!(robot,West,Nord,x,y)

end