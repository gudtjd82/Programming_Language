fun pi(a:int, b:int, f:int -> int) = 
    if a = b
    then f(b)
    else f(a)*pi(a+1, b, f)

fun digits(x:int) = 
    let fun split_digits(n:int, lst:int list) = 
        if n = 0
        then lst
        else split_digits(n div 10, (n mod 10)::lst)
    in
        split_digits(x, [])
    end
(*
    let fun cipher(x:int, n:int) = 
            if x div n = 0
            then 
                if x = 0
                then 1
                else n div 10
            else cipher(x, n*10)
        val c = cipher(x, 1)
    in
        if x div c = 0
        then []
        else x div c :: digits(x - c*(x div c))
    end
*)

fun additivePersistence(x:int) = 
    let fun sum_list(lst:int list) = 
            if null lst
            then 0
            else hd lst + sum_list(tl lst)
    in
        if x div 10 = 0
        then 0
        else 1 + additivePersistence(sum_list(digits(x)))
    end