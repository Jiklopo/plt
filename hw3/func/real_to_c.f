fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));

tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
and = lambda a. lambda b. a b fls;
c_to_bool = lambda b. b true false;

c0 = lambda s. lambda z. z;
scc = lambda n. lambda s. lambda z. s (n s z);
c_to_real = lambda cn. cn (lambda n. succ n) 0;

pair = lambda f. lambda s. lambda b. b f s;
fst = lambda p. p tru;
snd = lambda p. p fls;

zz = pair c0 c0;
step = lambda p. pair (snd p) (scc (snd p));
predok = lambda n. fst (n step zz);

minus = lambda a. lambda b. b predok a;

plus = lambda a. lambda b. a scc b;

real_to_c = fix (lambda cn.
    lambda n. lambda s. lambda z.
        if iszero n
            then z
            else s (cn (pred n) s z)
);
/* >>>>>>> tests after this line <<<<< */
c2 = real_to_c 2;
c3 = real_to_c 3;
c4 = real_to_c 4;
c7 = real_to_c 7;
c11 = real_to_c 11;
c_to_real(c7);
c_to_real(predok(c7));
c_to_real(scc(c11));
c_to_real(plus c2 c3);
c_to_real(minus c11 c7);
