% Include weather facts
:- consult('weather_facts.pl').

% Declare background predicate
weather/5.

% Rule: Define when it will rain
will_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    CloudCover > 0.75,  % High cloud cover
    Precipitation > 0.0.  % Some precipitation is expected.
