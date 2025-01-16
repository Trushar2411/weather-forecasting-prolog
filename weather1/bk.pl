% Suppress warnings about discontiguous predicates
:- discontiguous pos/1.
:- discontiguous neg/1.

% Include weather facts
:- consult('weather_facts.pl').

% Predicates used in background knowledge
weather/5.

% Rule for will_rain
will_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    CloudCover > 0.75,       % High cloud cover
    Precipitation > 0.0.    % Some precipitation is expected
