/* Ex1 */
/* Stuck term */
succ(iszero(pred(pred(0))));
/* Normal Form Term */
true;
/* Value */
false;


/* Ex 3.5.18 */
if (succ(iszero 0)) then (if (true) then succ 0 else 0) else 0;

/* Ex 3.5.16 */
if succ(1) then 1 else 2;/*E-If-Wrong*/
succ(iszero(1));/*E-Succ-Wrong*/
pred(iszero(pred(1)));/*E-Pred-Wrong*/
iszero(iszero(succ(0)));/*E-IsZero-Wrong*/