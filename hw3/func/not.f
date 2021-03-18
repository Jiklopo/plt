tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
not = lambda b. b fls tru;
/* >>>>>>> tests after this line <<<<< */
not fls;
not tru;