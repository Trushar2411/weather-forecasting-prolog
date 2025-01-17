% Use lists
:- use_module(library(lists)).

% Include weather facts
:- consult('weather_facts.pl').

% Declare weather predicate
:- dynamic weather/5.
:- dynamic will_rain/1.
:- dynamic high_temp/1.

% Base rule for rain prediction
will_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    CloudCover > 0.8,
    Precipitation > 0.1.

% Base rule for high temperature
high_temp(Date) :-
    weather(Date, _, Temp, _, _),
    Temp > 20.0.

