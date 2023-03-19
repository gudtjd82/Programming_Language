fun cipher(x:int, n:int) = 
    if x div n = 0
    then 
        if x = 0   
        then 1
        else n div 10
    else cipher(x, n*10)