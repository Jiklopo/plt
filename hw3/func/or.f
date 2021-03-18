tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
or = lambda a.lambda b. a tru b;
/* >>>>>>> tests after this line <<<<< */
or tru tru;
or tru fls;
or fls tru;
or fls fls;