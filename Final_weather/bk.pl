% Include weather facts from a separate file
:- consult('weather_facts.pl').

% Dynamic predicates
:- dynamic cloud_cover_high/1.
:- dynamic precipitation_high/1.
:- dynamic weather/5.
:- dynamic cloud_cover/2.
:- dynamic precipitation/2.

% Define cloud cover
cloud_cover(Date, CloudCover) :-
    weather(Date, _, _, CloudCover, _).

% Define precipitation
precipitation(Date, Precipitation) :-
    weather(Date, _, _, _, Precipitation).

% Define high cloud cover
cloud_cover_high(Date) :-
    cloud_cover(Date, CloudCover),
    CloudCover > 0.75.

% Define high precipitation
precipitation_high(Date) :-
    precipitation(Date, Precipitation),
    Precipitation > 0.1.
