let g = ("S",[
("S",["a";"S";"b";"S";]);
("S",[]);
]);;
let fs_refstring = [
("S",["a";"eps";]);
];;
let ls_refstring = [
("S",["b";"eof";]);
];;
let pset_refstring = [
(("S",["a";"S";"b";"S";]),["a";]);
(("S",[]),["b";"eof";]);
];;

let correct_inputstring1 = ["a";"a";"a";"b";"b";"b";];;
let correct_inputstring2 = ["a";"b";"a";"b";"a";"b";];;
let correct_inputstring3 = ["a";"a";"b";"b";"a";"b";];;
let correct_inputstring4 = ["a";"a";"a";"b";"a";"b";"b";"b";"a";"a";"b";"b";];;
let correct_inputstring5 = ["a";"a";"b";"a";"a";"a";"b";"b";"a";"b";"b";"b";];;

let incorrect_inputstring1 = ["b";"b";"a";"a";];;
let incorrect_inputstring2 = ["a";"a";"b";"b";"b";];;
let incorrect_inputstring3 = ["a";"a";"a";"b";"b";];;
let incorrect_inputstring4 = ["a";"a";"a";"b";"a";"b";"a";"b";"b";];;
let incorrect_inputstring5 = ["a";"a";"a";"a";"b";"b";"b";"a";"a";"b";"b";"b";"b";];;

let correct_tree1 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));;

let correct_tree2 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));]));;

let correct_tree3 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));;

let correct_tree4 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));;

let correct_tree5 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("S",[]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));]));(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("S",[]));]));;

