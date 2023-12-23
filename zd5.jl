include("func.jl")
robot = Robot("sits/zd5.sit",animate = true)

function zd5(robot)

    side1 = Nord
    side2 = West

    x = movealong!(robot,West)
    y = movealong!(robot,Nord)
    while !isborder(robot,Nord) || !isborder(robot,West)
        if !isborder(robot,West)
            x+=movealong!(robot,West)
            side1,side2 = side2,side2
            x,y=y,x
        elseif !isborder(robot,Nord)
            y+=movealong!(robot,Nord)
        end
    end
    println(x," ", y," ",side1," ",side2)

    perimetr(robot,Ost)
    lenght = movealong!(robot,Ost)
    println(lenght)
    movealong!(robot,West)
    line=gofind(robot,lenght)
    markinnerperimetr(robot,line)
    gocorner(robot,Nord,West)
    gohome!(robot,side1,side2,y,x)
    
end
