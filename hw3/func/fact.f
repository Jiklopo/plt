fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));

plus = fix (lambda plus.
    lambda a. lambda b.
        if iszero a
            then b
            else succ (plus (pred a) b)
);

mult = fix (lambda mult.
    lambda a. lambda b.
        if iszero a
            then 0
            else plus b (mult (pred a) b)
);

fact = fix (lambda fact.
    lambda n.
        if iszero n
            then 1
            else mult n (fact (pred n))
);
/* >>>>>>> tests after this line <<<<< */
fact 5;