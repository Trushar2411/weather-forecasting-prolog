% Load the weather data facts
:- consult('weather_facts.pl').

% Rule to determine if it will rain
will_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    CloudCover > 0.75,       % High cloud cover
    Precipitation > 0.0.    % Some precipitation is expected

% Rule to suggest it will not rain
will_not_rain(Date) :-
    weather(Date, _, _, CloudCover, Precipitation),
    (CloudCover =< 0.75;    % Low cloud cover
     Precipitation =< 0.0). % No precipitation expected