let rec f acc x =
  let r = (if x mod 3 = 0 || x mod 5 = 0 then acc + x else acc) in
  if x = 0 then r else f r (x - 1);;

print_int (f 0 999)
