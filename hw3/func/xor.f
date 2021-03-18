tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
not = lambda b. b fls tru;
xor = lambda a. lambda b. a (not b) b;
/* >>>>>>> tests after this line <<<<< */
xor tru fls;
xor fls tru;
xor tru tru;
xor fls fls;