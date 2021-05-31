if (lambda x:Bool.x) then true else false;
if true then (lambda y:Bool.y) else false;
if false then true else (lambda z:Bool.z);