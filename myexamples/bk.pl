:- use_module(library(lists)).

% Weather facts (load your dataset here)
:- consult('weather_facts.pl').

% Auxiliary predicates for trends
temp_diff(Year1, Year2, Diff) :-
    weather(Year1, _, Temp1, _, _),
    weather(Year2, _, Temp2, _, _),
    Diff is Temp2 - Temp1.

humidity_diff(Year1, Year2, Diff) :-
    weather(Year1, _, _, Humidity1, _),
    weather(Year2, _, _, Humidity2, _),
    Diff is Humidity2 - Humidity1.

precip_diff(Year1, Year2, Diff) :-
    weather(Year1, _, _, _, Precip1),
    weather(Year2, _, _, _, Precip2),
    Diff is Precip2 - Precip1.
