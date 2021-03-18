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
/* >>>>>>> tests after this line <<<<< */
isequal c1 c1;
isequal c2 c2;
isequal c3 c3;
isequal c4 c4;
isequal c5 c5;
isequal c1 c4;
isequal c3 c5;
isequal c2 c3;