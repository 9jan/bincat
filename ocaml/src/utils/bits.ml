(** convert a Z integer to its bit representation *)
let z_to_bit_string i =
  let bitstring = ref ""              in
  let two 	= Z.of_int 2          in
  let i'        = ref i               in
  while Z.compare !i' Z.zero > 0 do
    let bit = Z.rem !i' two in
    let q   = Z.div !i' two in
    if Z.equal bit Z.zero then
      bitstring := "0" ^ !bitstring
    else
      bitstring := "1" ^ !bitstring;
    i' := q
  done;
  !bitstring
       
(** convert the string representation of an integer to its bit representation *)
let string_to_bit_string i = z_to_bit_string (Z.of_string i) 
					     

					  
       