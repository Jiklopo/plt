fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));

plus = fix (lambda p.
    lambda a. lambda b.
        if iszero a
            then b
            else succ (p (pred a) b)
);

fib = fix (lambda fb.
    lambda n.
        if iszero n
            then 0
            else
                if iszero (pred n)
                    then 1
                    else plus (fb (pred n)) (fb (pred (pred n)))
);
/* >>>>>>> tests after this line <<<<< */
fib 1;
fib 2;
fib 3;
fib 4;
fib 5;
fib 6;
fib 7;
fib 8;
