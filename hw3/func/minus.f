tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
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
/* >>>>>>> tests after this line <<<<< */
c_to_num(minus c5 c3);
c_to_num(minus c2 c3);
c_to_num(minus c5 c1);
c_to_num(minus c4 c3);
c_to_num(minus c3 c1);