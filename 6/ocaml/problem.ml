let do_n_times f =
let rec aux acc i =
  if i = 0 then acc else 
    aux (f acc i) (i - 1)
in aux;;

let sum1,sum2 = do_n_times (fun (acc1,acc2) x -> acc1 + x, acc2 + x * x) (0,0) 100 in
print_int (sum1 * sum1 - sum2)
