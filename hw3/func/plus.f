tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;

c0 = lambda s. lambda z. z;
c1 = lambda s. lambda z. s (z);
c2 = lambda s. lambda z. s (s(z));
c3 = lambda s. lambda z. s (s(s(z)));
c4 = lambda s. lambda z. s (s(s(s(z))));
c5 = lambda s. lambda z. s (s(s(s(s(z)))));
c_to_num = lambda cn. cn (lambda n. succ n) 0;

scc = lambda n. lambda s. lambda z. s (n s z);
plus_scc = lambda a. lambda b. a scc b;
plus_s = lambda a. lambda b. lambda s. lambda z. a s (b s z);
/* >>>>>>> tests after this line <<<<< */
plus_s c1 c2;
plus_scc c1 c1;

c_to_num(plus_s c2 c1);
c_to_num(plus_scc c2 c1);

c_to_num(plus_s c5 c3);
c_to_num(plus_scc c5 c3);
