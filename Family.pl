% Completed by: Joseph Prostko

% Here are some men
man(stuart).
man(kurt).
man(mark).
man(rayond).
man(august).
man(hans).
man(ryan).
man(adam).
man(max).

% Here are some women.
woman(erica).
woman(susan).
woman(elaine).
woman(viola).
woman(ida).
woman(florence).
woman(marissa).
woman(annika).
woman(kaita).

% For our purposes, we will always put the woman's name first in the
% marriage facts.
married(erica, stuart).
married(susan, mark).
married(elaine, raymond).
married(viola, august).
married(ida, hans).
married(marissa, ryan).
married(annika, adam).

% For our purposes, the parent's name always comes first
parent(susan, marissa).
parent(mark, marissa).
parent(susan, annika).
parent(mark, annika).
parent(elaine, mark).
parent(raymond, mark).
parent(elaine, stuart).
parent(raymond, stuart).
parent(elaine, kurt).
parent(raymond, kurt).
parent(viola, elaine).
parent(august, elaine).
parent(ida, raymond).
parent(hans, raymond).

% The mother-in-law predicate.
motherInLaw(X,Y) :- woman(X), parent(X,Z), married(Z,Y).

% The grandparent predicate.
grandParent(X,Y) :- parent(X,Z), parent(Z,Y).

% The grandMother(X,Y) predicate.
grandMother(X,Y) :- woman(X), parent(X,Z), parent(Z,Y).