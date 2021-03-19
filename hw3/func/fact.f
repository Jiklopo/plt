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

fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));
g = lambda fct. lambda n. (is0 n) (c1) (c2);
/* >>>>>>> tests after this line <<<<< */