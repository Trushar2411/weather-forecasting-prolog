:- discontiguous calculate_trend/2.

% Load the weather data facts
:- consult('weather_facts.pl').

% General rule: Forecast temperature based on a given trend
forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp) :-
    forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp, temperature).

forecast_temperature_humidity(CurrentDate, ForecastedYear, ForecastedTemp) :-
    forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp, humidity).

forecast_temperature_precipitation(CurrentDate, ForecastedYear, ForecastedTemp) :-
    forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp, precipitation).

% Forecast temperature using a specified trend
forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp, TrendType) :-
    extract_date_info(CurrentDate, CurrentYear, _),
    ForecastedYearsAhead is ForecastedYear - CurrentYear,
    weather(CurrentDate, _, CurrentTemp, _, _),  % Ensure weather data exists
    calculate_trend(TrendType, AvgChange),
    ForecastedTemp is CurrentTemp + (AvgChange * ForecastedYearsAhead).

% Extract year and month from the date
extract_date_info(Date, Year, Month) :-
    Year is Date // 10000,
    Month is (Date // 100) mod 100.

% Calculate the trend based on a given type (temperature, humidity, precipitation)
calculate_trend(temperature, AvgChange) :-
    calculate_average_change(weather(_, _, Temp1, _, _), weather(_, _, Temp2, _, _), Temp1, Temp2, AvgChange).
calculate_trend(humidity, AvgChange) :-
    calculate_average_change(weather(_, _, _, Humidity1, _), weather(_, _, _, Humidity2, _), Humidity1, Humidity2, AvgChange).
calculate_trend(precipitation, AvgChange) :-
    calculate_average_change(weather(_, _, _, _, Precip1), weather(_, _, _, _, Precip2), Precip1, Precip2, AvgChange).

% General helper to calculate average change between successive years
calculate_average_change(Pred1, Pred2, Value1, Value2, AvgChange) :-
    findall(Change, (
        Pred1,
        Pred2,
        year_differs_by_one(Pred1, Pred2),
        Change is Value2 - Value1
    ), Changes),
    length(Changes, Count),
    ( Count > 0 ->
        sum_list(Changes, TotalChange),
        AvgChange is TotalChange / Count
    ;
        AvgChange is 0  % Default to 0 if no changes are found
    ).

% Check if two weather predicates differ by one year
year_differs_by_one(weather(Date1, _, _, _, _), weather(Date2, _, _, _, _)) :-
    Year1 is Date1 // 10000,
    Year2 is Date2 // 10000,
    Year2 =:= Year1 + 1.

% Debugging for trend calculation (optional, can be removed after testing)
calculate_trend(temperature, AvgChange) :-
    calculate_average_change(weather(_, _, Temp1, _, _), weather(_, _, Temp2, _, _), Temp1, Temp2, AvgChange),
    write('Average Temperature Change: '), write(AvgChange), nl.
calculate_trend(humidity, AvgChange) :-
    calculate_average_change(weather(_, _, _, Humidity1, _), weather(_, _, _, Humidity2, _), Humidity1, Humidity2, AvgChange),
    write('Average Humidity Change: '), write(AvgChange), nl.
calculate_trend(precipitation, AvgChange) :-
    calculate_average_change(weather(_, _, _, _, Precip1), weather(_, _, _, _, Precip2), Precip1, Precip2, AvgChange),
    write('Average Precipitation Change: '), write(AvgChange), nl.
