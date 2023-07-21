complement(FuzzySet, ComplementedSet) :-
    complement(FuzzySet, 1.0, ComplementedSet).

complement([], _, []).

complement([(Element, Degree) | Tail], MaxDegree, [(Element, ComplementedDegree) | ComplementedTail]) :-
    ComplementedDegree is MaxDegree - Degree,
    complement(Tail, MaxDegree, ComplementedTail).
