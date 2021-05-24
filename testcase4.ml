let g = ("S",[
("S",["T";]);
("T",["a";"T";]);
("T",[]);
]);;
let fs_refstring = [
("S",["a";"eps";]);
("T",["a";"eps";]);
];;
let ls_refstring = [
("S",["eof";]);
("T",["eof";]);
];;
let pset_refstring = [
(("S",["T";]),["a";"eof";]);
(("T",["a";"T";]),["a";]);
(("T",[]),["eof";]);
];;

let correct_inputstring1 = [];;
let correct_inputstring2 = ["a";];;
let correct_inputstring3 = ["a";"a";];;
let correct_inputstring4 = ["a";"a";"a";];;
let correct_inputstring5 = ["a";"a";"a";"a";];;

let incorrect_inputstring1 = ["a";"b";];;
let incorrect_inputstring2 = ["b";"a";];;
let incorrect_inputstring3 = ["a";"a";"a";"b";];;
let incorrect_inputstring4 = ["b";"a";"b";"a";];;
let incorrect_inputstring5 = ["a";"b";"a";"a";"b";];;

let correct_tree1 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("T",[]));]));;

let correct_tree2 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[]));]));]));;

let correct_tree3 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[]));]));]));]));;

let correct_tree4 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[]));]));]));]));]));;

let correct_tree5 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("T",[]));]));]));]));]));]));;

