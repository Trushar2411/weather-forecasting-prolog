% Weather facts
weather(20000101, 1, 4.2, 0.92, 0.22).
weather(20000102, 1, 6.5, 0.87, 0.0).
weather(20000103, 1, 7.7, 0.78, 0.28).
weather(20000104, 1, 7.8, 0.87, 0.97).
weather(20000105, 1, 5.2, 0.8, 0.0).
weather(20000106, 1, 7.6, 0.83, 0.18).
weather(20000107, 1, 6.6, 0.79, 0.0).
weather(20000108, 1, 6.6, 0.85, 0.12).
weather(20000109, 1, 2.5, 0.94, 0.0).
weather(20000110, 1, 1.1, 0.96, 0.0).
weather(20000111, 1, 0.7, 0.86, 0.0).
weather(20000112, 1, 2.1, 0.79, 0.0).
weather(20000113, 1, 1.3, 0.73, 0.02).
weather(20000114, 1, 3.3, 0.85, 0.0).
weather(20000115, 1, 2.5, 0.77, 0.0).
weather(20000116, 1, 4.2, 0.93, 0.23).
weather(20000117, 1, 6.2, 0.9, 0.13).
weather(20000118, 1, 5.9, 0.78, 0.1).
weather(20000119, 1, 4.1, 0.79, 0.02).
weather(20000120, 1, 4.0, 0.87, 0.08).

% Extract cloud cover
cloud_cover(Date, A) :-
    weather(Date, _, _, A, _).

% Rule for high cloud cover
cloud_cover_high(Date) :-
    cloud_cover(Date, CloudCover),
    CloudCover > 0.75.

% Extract precipitation
precipitation(Date, B) :-
    weather(Date, _, _, _, B).

% Rule for high precipitation
precipitation_high(Date) :-
    precipitation(Date, Precipitation),
    Precipitation > 0.1.

% Extract temperature
temperature(Date, C) :-
    weather(Date, C, _, _, _).
