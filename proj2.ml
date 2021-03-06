open Proj2_types;;

let getStartSymbol (g : grammar) : string =
  
  (* return first symbol in tuple *)
  match g with (startsymbol,_) -> startsymbol

;;


let getNonterminals (g : grammar) : string list =
  
  (*return all second pairs(string list)'s all first element*)
  List.map fst( snd g )

;;

let getInitFirstSets (g : grammar) : symbolMap =

  (*getNonterminal and adding startsymbol a follow set*)

  (*then get startsymbol into follow map*)

  let nt = getNonterminals g in

  List.fold_left(fun x y -> SMap.add y SymbolSet.empty x) SMap.empty nt

;;


let getInitFollowSets (g : grammar) : symbolMap =

(*add startsymbol to follow set that has nont*)
  (*get nt into follow set list fold*)
  let emptyTable = List.fold_left(fun x y -> SMap.add y SymbolSet.empty x) SMap.empty (getNonterminals g) in

  (*input startsymbols into follow map*)
  SMap.add (getStartSymbol g) (SymbolSet.singleton "eof") emptyTable

;;


let rec computeFirstSet (first : symbolMap) (symbolSeq : string list) : SymbolSet.t =

  match symbolSeq with [] -> SymbolSet.singleton "eps" (*add eps to end of seq*)
  |h::t-> if SMap.mem h first then ( (*find first symbol in first*)
            
            if SymbolSet.mem "eps" (SMap.find h first) then (*if eps in first*)
              SymbolSet.union (SymbolSet.remove "eps" (SMap.find h first) ) (computeFirstSet first t) (*remove eps then union updated set to rest t*)
            else
              (SMap.find h first) (*if no eps, then just hFirst*)
          )
          else 
            SymbolSet.singleton h (*if h not in first, add h to set*)

;;


let recurseFirstSets (g : grammar) (first : symbolMap) firstFunc : symbolMap =
  
  (*pseudo code from recitation*)
  List.fold_left (fun x y -> match y with (lhs, rhs)->

    let addnew = SymbolSet.union (SMap.find lhs x) (firstFunc x rhs) in
    SMap.add lhs addnew x

   (* recurseFirstSets g addupdate firstFunc*)
  
  ) first (snd g)

;;


let rec getFirstSets (g : grammar) (first : symbolMap) firstFunc : symbolMap =

  if (SMap.equal SymbolSet.equal first (recurseFirstSets g first firstFunc)) then first
  else getFirstSets g (recurseFirstSets g first firstFunc) firstFunc

;;

let rec updateFollowSet (first : symbolMap) (follow : symbolMap) (nt : string) (symbolSeq : string list) : symbolMap =

  match symbolSeq with [] -> follow
  |h::t ->if SMap.mem h first then( 

              let unionFollow = SymbolSet.union (SymbolSet.union (SMap.find nt follow) (SymbolSet.remove "eps" (computeFirstSet first t))) (SMap.find h follow) in
              (*union new follow with follow h*)
              
              let updated = SMap.add h unionFollow follow in (*add h and new follow into follow set*)
              
              if SymbolSet.mem "eps" (computeFirstSet first t) then (*if eps in tFirst*)
                updateFollowSet first updated nt t (*recurse with t*)

              else 
                let newunion = SymbolSet.union (computeFirstSet first t) (SMap.find h follow) in
                let newset = SMap.add h newunion follow in
                updateFollowSet first newset nt t
          )
          else
            updateFollowSet first follow nt t

;;

let rec recurseFollowSets (g : grammar) (first : symbolMap) (follow : symbolMap) followFunc : symbolMap =
  
  (*pseudo code from recitation*)
  List.fold_left(fun x y-> match y with (lhs,rhs)->
    followFunc first x lhs rhs
  ) follow (snd g)

;;

let rec getFollowSets (g : grammar) (first : symbolMap) (follow : symbolMap) followFunc : symbolMap =

  if (SMap.equal SymbolSet.equal follow (recurseFollowSets g first follow followFunc)) then follow
  else getFollowSets g first (recurseFollowSets g first follow followFunc) followFunc

;;

let rec getPredictSets (g : grammar) (first : symbolMap) (follow : symbolMap) firstFunc : ((string * string list) * SymbolSet.t) list =
  (* YOUR CODE GOES HERE *)

  (*pseudo code from recitation*)
  List.map(fun x-> match x with (lhs,rhs)->

    if SymbolSet.mem "eps" (firstFunc first rhs) then (
      let predict = SymbolSet.union (SymbolSet.remove "eps" (firstFunc first rhs)) (SMap.find lhs follow) in
      ((lhs, rhs), predict)
    )
    else
      ((lhs, rhs), (firstFunc first rhs))
  ) (snd g)

;;


let rec findRule (predict) (lhs) (str) =
  match predict with [] -> ["error"]
  |h :: t -> match h with ((lhs_, rhs), pset)->
      if (lhs = lhs_ && SymbolSet.mem str pset) then rhs 
      else findRule t lhs str

;;
let rec tryDeriveHelper predict (sentence:string list) (inputStr: string list) =
 match sentence with [] -> (match inputStr with []-> true | _ -> false )

  |s::t -> (match inputStr with [] -> 
    let rhs = (findRule predict s "eof") @ t in
   tryDeriveHelper predict rhs inputStr 

  |u::v -> if s = u  then tryDeriveHelper predict t v 
            else  
              let rhs2 = (findRule predict s u) @ t in
              tryDeriveHelper predict rhs2 inputStr )
;;


 let tryDerive (g : grammar) (inputStr : string list) : bool =
  (* YOUR CODE GOES HERE *)

  (*let getStartSymbol (g : grammar) : string =
  let getNonterminals (g : grammar) : string list =
  let getInitFirstSets (g : grammar) : symbolMap =
  let getInitFollowSets (g : grammar) : symbolMap =
  let rec computeFirstSet (first : symbolMap) (symbolSeq : string list) : SymbolSet.t =
  let recurseFirstSets (g : grammar) (first : symbolMap) firstFunc : symbolMap =
  let rec getFirstSets (g : grammar) (first : symbolMap) firstFunc : symbolMap =
  let rec updateFollowSet (first : symbolMap) (follow : symbolMap) (nt : string) (symbolSeq : string list) : symbolMap =
  let recurseFollowSets (g : grammar) (first : symbolMap) (follow : symbolMap) followFunc : symbolMap =
  let rec getFollowSets (g : grammar) (first : symbolMap) (follow : symbolMap) followFunc : symbolMap =
  let rec getPredictSets (g : grammar) (first : symbolMap) (follow : symbolMap) firstFunc : ((string * string list) * SymbolSet.t) list = *)

  (*let startSymbol = getStartSymbol g in *)
  (*let nonterminal = getNonterminals g in*)

  let initfirst = getInitFirstSets g in
  let initfollow = getInitFollowSets g in

  (*let computeFirst = computeFirstSet initfirst nonterminal in*)

  (*(recurseFirstSets my_grammar (getInitFirstSets my_grammar) computeFirstSet);;*)
  let recFirst = recurseFirstSets g initfirst computeFirstSet in
  let getFirst = getFirstSets g recFirst computeFirstSet in

  (*let updateFollow = 
    let rec runNT nt = (match nt with []->[]
      |h::t-> updateFollowSet getFirst initfollow h nonterminal 
              runNT t
    ) in
    runNT nonterminal
  in *)

  let recFollow = recurseFollowSets g getFirst initfollow updateFollowSet in
  let getFollow = getFollowSets g getFirst recFollow updateFollowSet in
  
  let getPredict = getPredictSets g getFirst getFollow computeFirstSet in


  (*let rec tryDeriveHelper predict (sentence ) (inputStr) = *)

  (*let rec runDerive predictList = ( match predictList with []-> []
    |h::t -> tryDeriveHelper h [(fst g)] inputStr
    runDerive t)  in  *)

  tryDeriveHelper getPredict [(fst g)] inputStr

  
;;

let tryDeriveTree (g : grammar) (inputStr : string list) : parseTree =
  (* YOUR CODE GOES HERE *)
Terminal "empty";;

let genParser g = tryDerive g;;
let genTreeParser g = tryDeriveTree g;;
