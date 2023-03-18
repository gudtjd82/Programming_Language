fun sum_pair_list (xs : (int*int) list) = 
    if null xs  
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

fun firsts( xs : (int*int) list) :int list = 
    if null xs 
    then []
    else #1(hd(xs))::firsts(tl xs)

fun seconds( xs : (int*int) list) :int list = 
if null xs 
then []
else #2(hd(xs))::seconds(tl xs)