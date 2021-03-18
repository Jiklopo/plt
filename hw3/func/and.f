tru = lambda t. lambda f. t;
fls = lambda t. lambda f. f;
and = lambda a. lambda b. a b fls;
/* >>>>>>> tests after this line <<<<< */
and tru tru;
and fls tru;
and tru fls;
and fls fls;
and (and tru fls) tru;
and 1 2;