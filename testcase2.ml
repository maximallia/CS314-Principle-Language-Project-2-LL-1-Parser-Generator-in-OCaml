let g = ("S",[
("S",["A";"B";]);
("A",["a";"A";]);
("A",[]);
("B",["b";"B";]);
("B",[]);
]);;
let fs_refstring = [
("A",["a";"eps";]);
("B",["b";"eps";]);
("S",["a";"b";"eps";]);
];;
let ls_refstring = [
("A",["b";"eof";]);
("B",["eof";]);
("S",["eof";]);
];;
let pset_refstring = [
(("S",["A";"B";]),["a";"b";"eof";]);
(("A",["a";"A";]),["a";]);
(("A",[]),["b";"eof";]);
(("B",["b";"B";]),["b";]);
(("B",[]),["eof";]);
];;

let correct_inputstring1 = ["b";];;
let correct_inputstring2 = ["a";"b";];;
let correct_inputstring3 = ["a";"a";"a";"b";"b";"b";];;
let correct_inputstring4 = ["a";"a";"b";"b";"b";];;
let correct_inputstring5 = ["a";"a";"a";"a";"b";"b";];;

let incorrect_inputstring1 = ["a";"b";"a";];;
let incorrect_inputstring2 = ["b";"b";"a";"a";];;
let incorrect_inputstring3 = ["b";"a";"b";"a";];;
let incorrect_inputstring4 = ["a";"a";"b";"b";"a";"a";];;
let incorrect_inputstring5 = ["a";"a";"a";"b";"b";"a";];;

let correct_tree1 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("A",[]));(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[]));]));]));;

let correct_tree2 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));]));(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[]));]));]));;

let correct_tree3 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));]));]));]));(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[]));]));]));]));]));;

let correct_tree4 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));]));]));(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[]));]));]));]));]));;

let correct_tree5 = (Proj2_types.Nonterminal ("S",[(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[(Proj2_types.Terminal "a");(Proj2_types.Nonterminal ("A",[]));]));]));]));]));(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[(Proj2_types.Terminal "b");(Proj2_types.Nonterminal ("B",[]));]));]));]));;

