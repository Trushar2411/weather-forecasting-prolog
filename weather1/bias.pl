% Include weather facts
:- consult('weather_facts.pl').

% Head predicates
head_pred(will_rain, 1).

% Body predicates
body_pred(weather, 5).

% Type declarations
type(will_rain, (date,)).
type(weather, (date, month, temperature, cloud_cover, precipitation)).

% Constraints
% Ensure each clause uses exactly one variable of type `date`
:-
    clause(C),
    #count{V : var_type(C, V, date)} != 1.

% Additional constraints
% Ensure precipitation and cloud cover are numeric
:-
    body_literal(C, weather(_, _, _, CloudCover, Precipitation)),
    (CloudCover < 0.0; CloudCover > 1.0; Precipitation < 0.0).
