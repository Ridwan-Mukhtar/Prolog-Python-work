%Ridwan Mukhtar, H00247135
%QUESTION 1 (CADD)
cadd([X1,X2],[Y1,Y2],[Z1,Z2]):-
 %simply adds the first two values and the second two values
 Z1 is X1 + Y1,
 Z2 is X2 + Y2.

%TEST
%cadd([3,4],[4,5], [7, 9]).
%should return true




%QUESTION 1 (CMULT)
cmult([X1,X2],[Y1,Y2],[Z1,Z2]):-
 %simply uses the calculation found on the site and sets the normal calculation to Z1 and the imaginary calculation to Z2
 Z1 is X1*Y1 - X2*Y2,
 Z2 is X1*Y2 + X2*Y1.

%TESTS
%cmult([1,2],[3,1],[1,7]).
%should return true




%QUESTION 2 (SEQADD)
%this is our base case
seqadd([],[],[]).

%seperates the first value from every other value in the array, H being the first value and T being every other value after the head
seqadd([H1|T1],[H2|T2],[X|T3]):- 
 %we put in the tail values of all three arrays back into seqadd
 seqadd(T1,T2,T3),
 %X will be the value which stores the two heads being added together
 X is H1+H2.

%TESTS
%seqadd([1,2,3,4,5],[2,2,2,2,2], [3,4,5,6,7]).
%should return true

%seqadd([],[],[]).
%should return true




%QUESTION 2 (SEQMULT)
%this is our base case
seqmult([],[],[]).

%seperates the first value from every other value in the array, H being the first value and T being every other value after the head
seqmult([H1|T1],[H2|T2],[X|T3]):- 
 %we put in the tail values of all three arrays back into seqadd
 seqmult(T1,T2,T3),
 %X will be the value which stores the two heads being multiplied together
 X is H1*H2.

%TESTS
%seqmult([1,2,3,4,5],[2,2,2,2,2], [2,4,6,8,10]).
%should return true

%seqmult([],[],[]).
%should return true




%Question 4 part 1
%The way Prolog deals with finding multiple solutions is known as “backtracking”. We can have backtracking in a database and an example of this is:

%eat (fred, pears).
%eat (fred,t_bone_steak).
%eat (fred,apples).

%If we go through this database, it will first return pears, then t_bone_steak and if you ask for one more solution, it will finally print apples. If you try to get another solution prolog will not be able to give anymore solutions due to their only being 3.

%Question 4 part 2
%Prolog does have some features which makes it a logical progrmming language. It allows us to prove and to not prove statements.

%In normal logic programming languages, the values folliwing values are seen: true, false and don't know.
%Prolog as a result struggles with the 'not' concept. In logic, you also don't need to worry about how you order your code but in prolog, you have to be careful of how you order your code.
%So as a result, it can be considered not fully a logical programming language.


%QUESTION 5
%these are the variables which we are going to display and go through
cycleoflife(eat).
cycleoflife(sleep).
cycleoflife(code).

cycleoflife(X):-
 %we recursively call cycleoflife so everytime we press N, it will continue the cycle
 cycleoflife(X).

 %TEST
 %cycleoflife(X).
 %KEEP PRESSING N
