fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));

plus = fix (lambda p.
    lambda a. lambda b.
        if iszero a
            then b
            else succ (p (pred a) b)
);

mult = fix (lambda m.
    lambda a. lambda b.
        if iszero a
            then 0
            else plus b (m (pred a) b)
);

fact = fix (lambda fct.
    lambda n.
        if iszero n
            then 1
            else mult n (fct (pred n))
);
/* >>>>>>> tests after this line <<<<< */
fact 5;