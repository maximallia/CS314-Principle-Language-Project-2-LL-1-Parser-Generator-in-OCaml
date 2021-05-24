let g = ("S",[
("S",["a";"A";"b";]);
("S",["b";"A";"a";]);
("A",["c";"S";]);
("A",[]);
]);;
let fs_refstring = [
("A",["c";"eps";]);
("S",["a";"b";]);
];;
let ls_refstring = [
("A",["a";"b";]);
("S",["a";"b";"eof";]);
];;
let pset_refstring = [
(("S",["a";"A";"b";]),["a";]);
(("S",["b";"A";"a";]),["b";]);
(("A",["c";"S";]),["c";]);
(("A",[]),["a";"b";]);
];;

let correct_inputstring1 = ["a";"b";];;
let correct_inputstring2 = ["b";"a";];;
let correct_inputstring3 = ["a";"c";"a";"b";"b";];;
let correct_inputstring4 = ["a";"c";"b";"a";"b";];;
let correct_inputstring5 = ["b";"c";"a";"b";"a";];;

let incorrect_inputstring1 = ["a";"a";];;
let incorrect_inputstring2 = ["b";"b";"a";];;
let incorrect_inputstring3 = ["a";"c";"b";"b";"a";];;
let incorrect_inputstring4 = ["a";"b";"a";"b";];;
let incorrect_inputstring5 = ["b";"a";"c";"b";"a";];;

let correct_tree1 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Terminal "b");]));;

let correct_tree2 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Terminal "a");]));;

let correct_tree3 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "c");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Terminal "b");]));]));(Proj2_types.Terminal "b");]));;

let correct_tree4 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "c");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Terminal "a");]));]));(Proj2_types.Terminal "b");]));;

let correct_tree5 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "c");(Proj2_types.Nonterminal ("S",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Terminal "b");]));]));(Proj2_types.Terminal "a");]));;

