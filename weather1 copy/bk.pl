% Suppress warnings about discontiguous predicates
:- discontiguous pos/1.
:- discontiguous neg/1.

% Include weather facts
:- consult('weather_facts.pl').

% Declare weather predicate
weather/5.

% Include existing rule for testing
will_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    CloudCover > 0.75,
    Precipitation > 0.0.
