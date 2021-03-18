type token =
  | IF of (Support.Error.info)
  | THEN of (Support.Error.info)
  | ELSE of (Support.Error.info)
  | TRUE of (Support.Error.info)
  | FALSE of (Support.Error.info)
  | LAMBDA of (Support.Error.info)
  | TIMESFLOAT of (Support.Error.info)
  | SUCC of (Support.Error.info)
  | PRED of (Support.Error.info)
  | ISZERO of (Support.Error.info)
  | LET of (Support.Error.info)
  | IN of (Support.Error.info)
  | UCID of (string Support.Error.withinfo)
  | LCID of (string Support.Error.withinfo)
  | INTV of (int Support.Error.withinfo)
  | FLOATV of (float Support.Error.withinfo)
  | STRINGV of (string Support.Error.withinfo)
  | APOSTROPHE of (Support.Error.info)
  | DQUOTE of (Support.Error.info)
  | ARROW of (Support.Error.info)
  | BANG of (Support.Error.info)
  | BARGT of (Support.Error.info)
  | BARRCURLY of (Support.Error.info)
  | BARRSQUARE of (Support.Error.info)
  | COLON of (Support.Error.info)
  | COLONCOLON of (Support.Error.info)
  | COLONEQ of (Support.Error.info)
  | COLONHASH of (Support.Error.info)
  | COMMA of (Support.Error.info)
  | DARROW of (Support.Error.info)
  | DDARROW of (Support.Error.info)
  | DOT of (Support.Error.info)
  | EOF of (Support.Error.info)
  | EQ of (Support.Error.info)
  | EQEQ of (Support.Error.info)
  | EXISTS of (Support.Error.info)
  | GT of (Support.Error.info)
  | HASH of (Support.Error.info)
  | LCURLY of (Support.Error.info)
  | LCURLYBAR of (Support.Error.info)
  | LEFTARROW of (Support.Error.info)
  | LPAREN of (Support.Error.info)
  | LSQUARE of (Support.Error.info)
  | LSQUAREBAR of (Support.Error.info)
  | LT of (Support.Error.info)
  | RCURLY of (Support.Error.info)
  | RPAREN of (Support.Error.info)
  | RSQUARE of (Support.Error.info)
  | SEMI of (Support.Error.info)
  | SLASH of (Support.Error.info)
  | STAR of (Support.Error.info)
  | TRIANGLE of (Support.Error.info)
  | USCORE of (Support.Error.info)
  | VBAR of (Support.Error.info)

open Parsing;;
let _ = parse_error;;
# 7 "parser.mly"
open Support.Error
open Support.Pervasive
open Syntax
# 64 "parser.ml"
let yytransl_const = [|
    0|]

let yytransl_block = [|
  257 (* IF *);
  258 (* THEN *);
  259 (* ELSE *);
  260 (* TRUE *);
  261 (* FALSE *);
  262 (* LAMBDA *);
  263 (* TIMESFLOAT *);
  264 (* SUCC *);
  265 (* PRED *);
  266 (* ISZERO *);
  267 (* LET *);
  268 (* IN *);
  269 (* UCID *);
  270 (* LCID *);
  271 (* INTV *);
  272 (* FLOATV *);
  273 (* STRINGV *);
  274 (* APOSTROPHE *);
  275 (* DQUOTE *);
  276 (* ARROW *);
  277 (* BANG *);
  278 (* BARGT *);
  279 (* BARRCURLY *);
  280 (* BARRSQUARE *);
  281 (* COLON *);
  282 (* COLONCOLON *);
  283 (* COLONEQ *);
  284 (* COLONHASH *);
  285 (* COMMA *);
  286 (* DARROW *);
  287 (* DDARROW *);
  288 (* DOT *);
    0 (* EOF *);
  289 (* EQ *);
  290 (* EQEQ *);
  291 (* EXISTS *);
  292 (* GT *);
  293 (* HASH *);
  294 (* LCURLY *);
  295 (* LCURLYBAR *);
  296 (* LEFTARROW *);
  297 (* LPAREN *);
  298 (* LSQUARE *);
  299 (* LSQUAREBAR *);
  300 (* LT *);
  301 (* RCURLY *);
  302 (* RPAREN *);
  303 (* RSQUARE *);
  304 (* SEMI *);
  305 (* SLASH *);
  306 (* STAR *);
  307 (* TRIANGLE *);
  308 (* USCORE *);
  309 (* VBAR *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\004\000\004\000\003\000\003\000\
\003\000\003\000\003\000\003\000\005\000\005\000\005\000\005\000\
\005\000\005\000\006\000\006\000\006\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\008\000\008\000\009\000\
\009\000\010\000\010\000\000\000"

let yylen = "\002\000\
\001\000\003\000\001\000\002\000\001\000\002\000\001\000\006\000\
\004\000\004\000\006\000\006\000\001\000\002\000\003\000\002\000\
\002\000\002\000\003\000\003\000\001\000\003\000\001\000\001\000\
\001\000\003\000\001\000\001\000\001\000\000\000\001\000\001\000\
\003\000\003\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\023\000\024\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\029\000\027\000\028\000\001\000\
\000\000\000\000\036\000\000\000\003\000\000\000\000\000\021\000\
\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\005\000\004\000\000\000\035\000\000\000\
\031\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\006\000\000\000\026\000\000\000\
\022\000\002\000\019\000\020\000\000\000\009\000\010\000\000\000\
\000\000\034\000\033\000\000\000\000\000\000\000\008\000\011\000\
\012\000"

let yydgoto = "\002\000\
\019\000\020\000\021\000\037\000\022\000\023\000\024\000\040\000\
\041\000\042\000"

let yysindex = "\003\000\
\001\000\000\000\018\000\000\000\000\000\244\254\020\255\020\255\
\020\255\020\255\245\254\246\254\000\000\000\000\000\000\000\000\
\056\000\018\000\000\000\219\254\000\000\020\255\236\254\000\000\
\000\000\011\255\001\255\006\255\036\000\236\254\236\254\236\254\
\009\255\017\255\018\000\000\000\000\000\021\255\000\000\232\254\
\000\000\249\254\010\255\001\000\236\254\251\254\018\000\018\000\
\018\000\236\254\018\000\018\000\000\000\018\000\000\000\056\000\
\000\000\000\000\000\000\000\000\044\255\000\000\000\000\045\255\
\051\255\000\000\000\000\018\000\018\000\018\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\207\255\000\000\000\000\000\000\000\000\
\019\255\000\000\000\000\000\000\000\000\149\255\014\255\000\000\
\000\000\000\000\000\000\000\000\000\000\066\255\072\255\119\255\
\000\000\000\000\000\000\000\000\000\000\211\255\000\000\000\000\
\000\000\027\255\000\000\000\000\125\255\000\000\000\000\000\000\
\000\000\172\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\029\000\000\000\253\255\000\000\000\000\254\255\000\000\000\000\
\023\000\000\000"

let yytablesize = 353
let yytable = "\026\000\
\016\000\027\000\033\000\001\000\029\000\030\000\031\000\032\000\
\059\000\060\000\044\000\046\000\047\000\039\000\043\000\013\000\
\013\000\013\000\013\000\045\000\055\000\056\000\035\000\004\000\
\005\000\013\000\050\000\013\000\013\000\013\000\013\000\053\000\
\048\000\025\000\013\000\014\000\015\000\049\000\036\000\028\000\
\034\000\051\000\013\000\061\000\062\000\063\000\068\000\064\000\
\065\000\052\000\066\000\013\000\039\000\054\000\013\000\057\000\
\069\000\017\000\013\000\013\000\018\000\013\000\070\000\030\000\
\071\000\072\000\073\000\016\000\016\000\016\000\016\000\032\000\
\058\000\017\000\017\000\017\000\017\000\016\000\067\000\016\000\
\016\000\016\000\016\000\017\000\000\000\017\000\017\000\017\000\
\017\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\
\000\000\000\000\000\000\000\000\017\000\000\000\000\000\016\000\
\000\000\000\000\016\000\000\000\000\000\017\000\016\000\016\000\
\017\000\016\000\000\000\000\000\017\000\017\000\000\000\017\000\
\018\000\018\000\018\000\018\000\000\000\000\000\014\000\014\000\
\014\000\014\000\018\000\000\000\018\000\018\000\018\000\018\000\
\014\000\000\000\014\000\014\000\014\000\014\000\000\000\000\000\
\000\000\000\000\000\000\018\000\000\000\000\000\007\000\007\000\
\000\000\014\000\000\000\000\000\018\000\000\000\000\000\018\000\
\007\000\000\000\014\000\018\000\018\000\014\000\018\000\000\000\
\000\000\014\000\014\000\000\000\014\000\015\000\015\000\015\000\
\015\000\007\000\000\000\000\000\000\000\000\000\000\000\015\000\
\000\000\015\000\015\000\015\000\015\000\000\000\000\000\000\000\
\000\000\007\000\007\000\000\000\007\000\000\000\000\000\000\000\
\015\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\015\000\025\000\025\000\015\000\000\000\025\000\025\000\
\015\000\015\000\000\000\015\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\025\000\025\000\
\000\000\000\000\025\000\000\000\025\000\000\000\000\000\025\000\
\025\000\000\000\000\000\025\000\000\000\000\000\025\000\025\000\
\000\000\003\000\000\000\000\000\004\000\005\000\006\000\007\000\
\008\000\009\000\010\000\011\000\000\000\000\000\012\000\013\000\
\014\000\015\000\003\000\000\000\000\000\004\000\005\000\006\000\
\007\000\008\000\009\000\010\000\011\000\000\000\000\000\025\000\
\013\000\014\000\015\000\000\000\000\000\000\000\017\000\004\000\
\005\000\018\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\025\000\013\000\014\000\015\000\000\000\000\000\017\000\
\003\000\000\000\018\000\004\000\005\000\006\000\007\000\008\000\
\009\000\010\000\011\000\046\000\000\000\038\000\013\000\014\000\
\015\000\017\000\000\000\000\000\018\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\
\018\000"

let yycheck = "\003\000\
\000\000\014\001\014\001\001\000\007\000\008\000\009\000\010\000\
\014\001\015\001\048\001\032\001\002\001\017\000\018\000\002\001\
\003\001\004\001\005\001\022\000\045\001\029\001\033\001\004\001\
\005\001\012\001\029\000\014\001\015\001\016\001\017\001\035\000\
\032\001\014\001\015\001\016\001\017\001\032\001\049\001\052\001\
\052\001\033\001\029\001\047\000\048\000\049\000\003\001\051\000\
\052\000\033\001\054\000\038\001\056\000\033\001\041\001\046\001\
\012\001\038\001\045\001\046\001\041\001\048\001\012\001\045\001\
\068\000\069\000\070\000\002\001\003\001\004\001\005\001\045\001\
\044\000\002\001\003\001\004\001\005\001\012\001\056\000\014\001\
\015\001\016\001\017\001\012\001\255\255\014\001\015\001\016\001\
\017\001\255\255\255\255\255\255\255\255\255\255\029\001\255\255\
\255\255\255\255\255\255\255\255\029\001\255\255\255\255\038\001\
\255\255\255\255\041\001\255\255\255\255\038\001\045\001\046\001\
\041\001\048\001\255\255\255\255\045\001\046\001\255\255\048\001\
\002\001\003\001\004\001\005\001\255\255\255\255\002\001\003\001\
\004\001\005\001\012\001\255\255\014\001\015\001\016\001\017\001\
\012\001\255\255\014\001\015\001\016\001\017\001\255\255\255\255\
\255\255\255\255\255\255\029\001\255\255\255\255\002\001\003\001\
\255\255\029\001\255\255\255\255\038\001\255\255\255\255\041\001\
\012\001\255\255\038\001\045\001\046\001\041\001\048\001\255\255\
\255\255\045\001\046\001\255\255\048\001\002\001\003\001\004\001\
\005\001\029\001\255\255\255\255\255\255\255\255\255\255\012\001\
\255\255\014\001\015\001\016\001\017\001\255\255\255\255\255\255\
\255\255\045\001\046\001\255\255\048\001\255\255\255\255\255\255\
\029\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\038\001\004\001\005\001\041\001\255\255\004\001\005\001\
\045\001\046\001\255\255\048\001\014\001\015\001\016\001\017\001\
\014\001\015\001\016\001\017\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\032\001\029\001\
\255\255\255\255\032\001\255\255\038\001\255\255\255\255\041\001\
\038\001\255\255\255\255\041\001\255\255\255\255\048\001\045\001\
\255\255\001\001\255\255\255\255\004\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\255\255\255\255\014\001\015\001\
\016\001\017\001\001\001\255\255\255\255\004\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\255\255\255\255\014\001\
\015\001\016\001\017\001\255\255\255\255\255\255\038\001\004\001\
\005\001\041\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\014\001\015\001\016\001\017\001\255\255\255\255\038\001\
\001\001\255\255\041\001\004\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\032\001\255\255\014\001\015\001\016\001\
\017\001\038\001\255\255\255\255\041\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\038\001\255\255\255\255\
\041\001"

let yynames_const = "\
  "

let yynames_block = "\
  IF\000\
  THEN\000\
  ELSE\000\
  TRUE\000\
  FALSE\000\
  LAMBDA\000\
  TIMESFLOAT\000\
  SUCC\000\
  PRED\000\
  ISZERO\000\
  LET\000\
  IN\000\
  UCID\000\
  LCID\000\
  INTV\000\
  FLOATV\000\
  STRINGV\000\
  APOSTROPHE\000\
  DQUOTE\000\
  ARROW\000\
  BANG\000\
  BARGT\000\
  BARRCURLY\000\
  BARRSQUARE\000\
  COLON\000\
  COLONCOLON\000\
  COLONEQ\000\
  COLONHASH\000\
  COMMA\000\
  DARROW\000\
  DDARROW\000\
  DOT\000\
  EOF\000\
  EQ\000\
  EQEQ\000\
  EXISTS\000\
  GT\000\
  HASH\000\
  LCURLY\000\
  LCURLYBAR\000\
  LEFTARROW\000\
  LPAREN\000\
  LSQUARE\000\
  LSQUAREBAR\000\
  LT\000\
  RCURLY\000\
  RPAREN\000\
  RSQUARE\000\
  SEMI\000\
  SLASH\000\
  STAR\000\
  TRIANGLE\000\
  USCORE\000\
  VBAR\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 111 "parser.mly"
      ( fun ctx -> [],ctx )
# 345 "parser.ml"
               :  Syntax.context -> (Syntax.command list * Syntax.context) ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'Command) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 :  Syntax.context -> (Syntax.command list * Syntax.context) ) in
    Obj.repr(
# 113 "parser.mly"
      ( fun ctx ->
          let cmd,ctx = _1 ctx in
          let cmds,ctx = _3 ctx in
          cmd::cmds,ctx )
# 357 "parser.ml"
               :  Syntax.context -> (Syntax.command list * Syntax.context) ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 121 "parser.mly"
      ( fun ctx -> (let t = _1 ctx in Eval(tmInfo t,t)),ctx )
# 364 "parser.ml"
               : 'Command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string Support.Error.withinfo) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'Binder) in
    Obj.repr(
# 123 "parser.mly"
      ( fun ctx -> ((Bind(_1.i,_1.v,_2 ctx)), addname ctx _1.v) )
# 372 "parser.ml"
               : 'Command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 128 "parser.mly"
      ( fun ctx -> NameBind )
# 379 "parser.ml"
               : 'Binder))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 130 "parser.mly"
      ( fun ctx -> TmAbbBind(_2 ctx) )
# 387 "parser.ml"
               : 'Binder))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'AppTerm) in
    Obj.repr(
# 134 "parser.mly"
      ( _1 )
# 394 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Term) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 136 "parser.mly"
      ( fun ctx -> TmIf(_1, _2 ctx, _4 ctx, _6 ctx) )
# 406 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string Support.Error.withinfo) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 138 "parser.mly"
      ( fun ctx ->
          let ctx1 = addname ctx _2.v in
          TmAbs(_1, _2.v, _4 ctx1) )
# 418 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 142 "parser.mly"
      ( fun ctx ->
          let ctx1 = addname ctx "_" in
          TmAbs(_1, "_", _4 ctx1) )
# 430 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string Support.Error.withinfo) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Term) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 146 "parser.mly"
      ( fun ctx -> TmLet(_1, _2.v, _4 ctx, _6 (addname ctx _2.v)) )
# 442 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 5 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : Support.Error.info) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'Term) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 148 "parser.mly"
      ( fun ctx -> TmLet(_1, "_", _4 ctx, _6 (addname ctx "_")) )
# 454 "parser.ml"
               : 'Term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 152 "parser.mly"
      ( _1 )
# 461 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'AppTerm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 154 "parser.mly"
      ( fun ctx ->
          let e1 = _1 ctx in
          let e2 = _2 ctx in
          TmApp(tmInfo e1,e1,e2) )
# 472 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'PathTerm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 159 "parser.mly"
      ( fun ctx -> TmTimesfloat(_1, _2 ctx, _3 ctx) )
# 481 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 161 "parser.mly"
      ( fun ctx -> TmSucc(_1, _2 ctx) )
# 489 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 163 "parser.mly"
      ( fun ctx -> TmPred(_1, _2 ctx) )
# 497 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'PathTerm) in
    Obj.repr(
# 165 "parser.mly"
      ( fun ctx -> TmIsZero(_1, _2 ctx) )
# 505 "parser.ml"
               : 'AppTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PathTerm) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string Support.Error.withinfo) in
    Obj.repr(
# 169 "parser.mly"
      ( fun ctx ->
          TmProj(_2, _1 ctx, _3.v) )
# 515 "parser.ml"
               : 'PathTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'PathTerm) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int Support.Error.withinfo) in
    Obj.repr(
# 172 "parser.mly"
      ( fun ctx ->
          TmProj(_2, _1 ctx, string_of_int _3.v) )
# 525 "parser.ml"
               : 'PathTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ATerm) in
    Obj.repr(
# 175 "parser.mly"
      ( _1 )
# 532 "parser.ml"
               : 'PathTerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 180 "parser.mly"
      ( _2 )
# 541 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 182 "parser.mly"
      ( fun ctx -> TmTrue(_1) )
# 548 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 184 "parser.mly"
      ( fun ctx -> TmFalse(_1) )
# 555 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string Support.Error.withinfo) in
    Obj.repr(
# 186 "parser.mly"
      ( fun ctx ->
          TmVar(_1.i, name2index _1.i ctx _1.v, ctxlength ctx) )
# 563 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Support.Error.info) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'Fields) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Support.Error.info) in
    Obj.repr(
# 189 "parser.mly"
      ( fun ctx ->
          TmRecord(_1, _2 ctx 1) )
# 573 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float Support.Error.withinfo) in
    Obj.repr(
# 192 "parser.mly"
      ( fun ctx -> TmFloat(_1.i, _1.v) )
# 580 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string Support.Error.withinfo) in
    Obj.repr(
# 194 "parser.mly"
      ( fun ctx -> TmString(_1.i, _1.v) )
# 587 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int Support.Error.withinfo) in
    Obj.repr(
# 196 "parser.mly"
      ( fun ctx ->
          let rec f n = match n with
              0 -> TmZero(_1.i)
            | n -> TmSucc(_1.i, f (n-1))
          in f _1.v )
# 598 "parser.ml"
               : 'ATerm))
; (fun __caml_parser_env ->
    Obj.repr(
# 204 "parser.mly"
      ( fun ctx i -> [] )
# 604 "parser.ml"
               : 'Fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'NEFields) in
    Obj.repr(
# 206 "parser.mly"
      ( _1 )
# 611 "parser.ml"
               : 'Fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'Field) in
    Obj.repr(
# 210 "parser.mly"
      ( fun ctx i -> [_1 ctx i] )
# 618 "parser.ml"
               : 'NEFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'Field) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'NEFields) in
    Obj.repr(
# 212 "parser.mly"
      ( fun ctx i -> (_1 ctx i) :: (_3 ctx (i+1)) )
# 627 "parser.ml"
               : 'NEFields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string Support.Error.withinfo) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Support.Error.info) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 216 "parser.mly"
      ( fun ctx i -> (_1.v, _3 ctx) )
# 636 "parser.ml"
               : 'Field))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'Term) in
    Obj.repr(
# 218 "parser.mly"
      ( fun ctx i -> (string_of_int i, _1 ctx) )
# 643 "parser.ml"
               : 'Field))
(* Entry toplevel *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf :  Syntax.context -> (Syntax.command list * Syntax.context) )
