:- discontiguous pos/1, neg/1

% Use lists
:- use_module(library(lists)).

% Include weather facts
:- consult('weather_facts.pl').

% Declare weather predicate
:- dynamic cloud_cover_high/1.
:- dynamic precipitation_high/1.
:- dynamic weather/5.
:- dynamic cloud_cover/2.
:- dynamic precipitation/2.

% Base rule for rain prediction
%will_rain(Date) :-
%    precipitation_high(Date).

cloud_cover(Date, CloudCover):-
    weather(Date, _, _, CloudCover, _).

precipitation(Date, Precipitation):-
    weather(Date, _, _, _, Precipitation).

cloud_cover_high(Date) :-
    cloud_cover(Date, CloudCover),
    CloudCover > 0.75.

precipitation_high(Date) :-
    precipitation(Date, Precipitation),
    Precipitation > 0.1.


