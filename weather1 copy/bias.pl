% Head predicates
head_pred(cloud_cover_high, 1).
head_pred(precipitation_high, 1).

% Body predicates
body_pred(weather, 5).
body_pred(cloud_cover, 2).
body_pred(precipitation, 2).
body_pred(temperature, 2).

% Type declarations
type(cloud_cover_high, (date,)).
type(precipitation_high, (date,)).
type(weather, (date, month, temperature, cloud_cover, precipitation)).
type(cloud_cover, (date, cloud_cover)).
type(precipitation, (date, precipitation)).
type(temperature, (date, temperature)).



% Constraints
% Ensure each clause uses exactly one variable of type `date`
:-
    clause(C),
    #count {V : var_type(C, V, date)} != 1.

