tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
not = lambda b. b fls tru;
nand = lambda a. lambda b. a fls (not b);
/* >>>>>>> tests after this line <<<<< */
nand tru tru;
nand fls tru;
nand tru fls;
nand fls fls;