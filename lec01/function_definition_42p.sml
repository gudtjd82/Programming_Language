fun square (x: int) = 
  x*x

(* compute x to the power of y*)
fun pow(x: int, y: int): int=
  if y=0
  then 1
  else x*pow(x, y-1)

fun square(x:int): int = 
  pow(x, 2)