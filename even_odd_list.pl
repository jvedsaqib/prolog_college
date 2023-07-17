evenLength([]).
evenLength([_ | Rest]) :-
	oddLength(Rest).

oddLength([_]).
oddLength([_ | Rest]) :-
	evenLength(Rest).
