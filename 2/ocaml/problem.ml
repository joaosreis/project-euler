let fibonacci_sum =
  let rec aux acc1 acc2 sum x =
    let r =
      if x = 0 then 0 else
      if x = 1 then 1 else acc1 + acc2 in
    if r > 4000000 then sum else
      let new_sum = if r mod 2 = 0 then sum + r else sum in
      aux r acc1 new_sum (x + 1)
  in aux 0 0 0 0 in
print_int (fibonacci_sum)
