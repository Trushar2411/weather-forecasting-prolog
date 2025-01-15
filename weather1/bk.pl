% Load weather data facts
:- consult('weather_facts.pl').

% Rules for trends (if they can be reused by Popper)
trend_temperature(CurrentDate, AvgTempChange) :-
    findall(TempChange, (
        weather(Year1, _, Temp1, _, _),
        weather(Year2, _, Temp2, _, _),
        Year1 < Year2, Year2 is Year1 + 1,
        TempChange is Temp2 - Temp1
    ), TempChanges),
    sum_list(TempChanges, TotalTempChange),
    length(TempChanges, Count),
    AvgTempChange is TotalTempChange / Count.
