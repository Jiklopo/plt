open Format
open Syntax
open Support.Error
open Support.Pervasive

(* ------------------------   EVALUATION  ------------------------ *)

exception NoRuleApplies

let rec isnumericval t = match t with
    TmZero(_) -> true
  | TmSucc(_,t1) -> isnumericval t1
  | _ -> false

let rec isval t = match t with
    TmTrue(_)  -> true
  | TmFalse(_) -> true
  | t when isnumericval t  -> true
  | _ -> false

let rec isbadnat t = match t with
    TmWrong(_) -> true
  | TmTrue(_) -> true
  | TmFalse(_) -> true
  | _ -> false

let rec isbadbool t = match t with
    TmWrong(_) -> true
  | t when isnumericval t -> true
  | _ -> false

let rec isnorm t = match t with
    TmWrong(_) -> true
  | t when isval t -> true
  | _ -> false

let rec eval1 t = printtm t;
    print_string "->";
    match t with
    TmIf(_,TmTrue(_),t2,t3) ->
      t2
  | TmIf(_,TmFalse(_),t2,t3) ->
      t3
  | TmIf(_, badbool, t2, t3) when (isbadbool badbool) ->
      TmWrong(dummyinfo)
  | TmIf(fi,t1,t2,t3) when (isnorm t2) && (isnorm t3)->
      let t1' = eval1 t1 in
      TmIf(fi, t1', t2, t3)
  | TmIf(fi,t1,t2,t3) when not(isnorm t2)->
      let t2' = eval1 t2 in
      TmIf(fi,t1,t2',t3)
  | TmIf(fi,t1,t2,t3) when not(isnorm t3)->
      let t3' = eval1 t3 in
      TmIf(fi,t1,t2,t3')
  | TmSucc(_, badnat) when (isbadnat badnat) ->
      TmWrong(dummyinfo)
  | TmSucc(fi,t1) ->
      let t1' = eval1 t1 in
      TmSucc(fi, t1')
  | TmPred(_,TmZero(_)) ->
      TmZero(dummyinfo)
  | TmPred(_, badnat) when (isbadnat badnat) ->
      TmWrong(dummyinfo)
  | TmPred(_,TmSucc(_,nv1)) when (isnumericval nv1) ->
      nv1
  | TmPred(fi,t1) ->
      let t1' = eval1 t1 in
      TmPred(fi, t1')
  | TmIsZero(_,TmZero(_)) ->
      TmTrue(dummyinfo)
  | TmIsZero(_, badnat) when (isbadnat badnat) ->
      TmWrong(dummyinfo)
  | TmIsZero(_,TmSucc(_,nv1)) when (isnumericval nv1) ->
      TmFalse(dummyinfo)
  | TmIsZero(fi,t1) ->
      let t1' = eval1 t1 in
      TmIsZero(fi, t1')
  | _ ->
      raise NoRuleApplies

let rec eval t =
  try let t' = eval1 t
      in eval t'
  with NoRuleApplies -> t
