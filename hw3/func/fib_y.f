tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
and = lambda a. lambda b. a b fls;
c_to_bool = lambda b. b true false;

c0 = lambda s. lambda z. z;
c1 = lambda s. lambda z. s (z);
c2 = lambda s. lambda z. s (s(z));
c3 = lambda s. lambda z. s (s(s(z)));
c4 = lambda s. lambda z. s (s(s(s(z))));
c5 = lambda s. lambda z. s (s(s(s(s(z)))));
scc = lambda n. lambda s. lambda z. s (n s z);
c_to_num = lambda cn. cn (lambda n. succ n) 0;

pair = lambda f. lambda s. lambda b. b f s;
fst = lambda p. p tru;
snd = lambda p. p fls;

zz = pair c0 c0;
step = lambda p. pair (snd p) (scc (snd p));
predok = lambda n. fst (n step zz);

minus = lambda a. lambda b. b predok a;

is0 = lambda n. n (lambda x. fls) tru;
leq = lambda a. lambda b. is0 (minus a b);
isequal = lambda a. lambda b.c_to_bool (and (leq a b) (leq b a));

plus = lambda a. lambda b. a scc b;

cn = lambda cn. lambda n. lambda s. lambda z. if iszero(n) then z else s (cn cn (pred(n)) s z);
real_to_c = lambda n. cn cn n;


/* >>>>>>> tests after this line <<<<< */
c_to_num(real_to_c 7);
c_to_num(predok(real_to_c 7));
c_to_num(scc(real_to_c 7));
