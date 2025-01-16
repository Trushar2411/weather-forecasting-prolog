% Head predicates
head_pred(will_rain, 1).

% Body predicates
body_pred(weather, 5).

% Type declarations
type(will_rain, (date)).
type(weather, (date, month, temperature, cloud_cover, precipitation)).

% Direction declarations
% Specify how arguments are used in the predicates
direction(will_rain, (in,)).
direction(weather, (in, in, in, in, in)).

% Constraints

% Ensure each clause uses exactly one variable of type `date`
:-
    clause(C),
    #count{V : var_type(C, V, date)} != 1.

