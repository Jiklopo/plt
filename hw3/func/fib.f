fix = lambda f. (lambda x. f (lambda y. x x y)) (lambda x. f (lambda y. x x y));

plus = fix (lambda plus.
    lambda a. lambda b.
        if iszero a
            then b
            else succ (plus (pred a) b)
);

fib = fix (lambda fib.
    lambda n.
        if iszero n
            then 0
            else
                if iszero (pred n)
                    then 1
                    else plus (fib (pred n)) (fib (pred (pred n)))
);
/* >>>>>>> tests after this line <<<<< */
fib 0;
fib 1;
fib 2;
fib 3;
fib 4;
fib 5;
fib 6;
fib 7;
fib 8;
