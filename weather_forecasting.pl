% Load the weather data facts from the 'weather_facts.pl' file
:- consult('weather_facts.pl').

% Rule: Forecast future temperature based on temperature trends
forecast_temperature(CurrentDate, ForecastedYear, ForecastedTemp) :-
    % Extract year and month from the date (YYYYMMDD)
    CurrentYear is CurrentDate // 10000,
    CurrentMonth is (CurrentDate // 100) mod 100,
    
    % Calculate the next year based on the forecasted year
    ForecastedYearsAhead is ForecastedYear - CurrentYear,
    
    % Get the temperature for the current date
    weather(CurrentDate, CurrentMonth, CurrentTemp, _, _),
    
    % Calculate the temperature change rate based on historical data
    findall(TempChange, (weather(Year1, _, Temp1, _, _), weather(Year2, _, Temp2, _, _), Year1 < Year2, Year2 is Year1 + 1, TempChange is Temp2 - Temp1), TempChanges),
    sum_list(TempChanges, TotalTempChange),
    length(TempChanges, Count),
    AvgTempChange is TotalTempChange / Count,
    
    % Calculate forecasted temperature based on the trend
    ForecastedTemp is CurrentTemp + (AvgTempChange * ForecastedYearsAhead).

% Rule: Forecast future temperature based on humidity trends
forecast_temperature_humidity(CurrentDate, ForecastedYear, ForecastedTemp) :-
    % Extract year and month from the date (YYYYMMDD)
    CurrentYear is CurrentDate // 10000,
    CurrentMonth is (CurrentDate // 100) mod 100,
    
    % Calculate the next year based on the forecasted year
    ForecastedYearsAhead is ForecastedYear - CurrentYear,
    
    % Get the temperature for the current date
    weather(CurrentDate, CurrentMonth, CurrentTemp, CurrentHumidity, _),
    
    % Calculate the humidity change rate based on historical data
    findall(HumidityChange, (weather(Year1, _, _, Humidity1, _), weather(Year2, _, _, Humidity2, _), Year1 < Year2, Year2 is Year1 + 1, HumidityChange is Humidity1 - Humidity2), HumidityChanges),
    sum_list(HumidityChanges, TotalHumidityChange),
    length(HumidityChanges, Count),
    AvgHumidityChange is TotalHumidityChange / Count,
    
    % Calculate forecasted temperature based on the trend of humidity
    ForecastedTemp is CurrentTemp + (AvgHumidityChange * ForecastedYearsAhead).

% Rule: Forecast future temperature based on precipitation trends
forecast_temperature_precipitation(CurrentDate, ForecastedYear, ForecastedTemp) :-
    % Extract year and month from the date (YYYYMMDD)
    CurrentYear is CurrentDate // 10000,
    CurrentMonth is (CurrentDate // 100) mod 100,
    
    % Calculate the next year based on the forecasted year
    ForecastedYearsAhead is ForecastedYear - CurrentYear,
    
    % Get the temperature for the current date
    weather(CurrentDate, CurrentMonth, CurrentTemp, _, CurrentPrecipitation),
    
    % Calculate the precipitation change rate based on historical data
    findall(PrecipChange, (weather(Year1, _, _, _, Precip1), weather(Year2, _, _, _, Precip2), Year1 < Year2, Year2 is Year1 + 1, PrecipChange is Precip2 - Precip1), PrecipChanges),
    sum_list(PrecipChanges, TotalPrecipChange),
    length(PrecipChanges, Count),
    AvgPrecipChange is TotalPrecipChange / Count,
    
    % Calculate forecasted temperature based on the trend of precipitation
    ForecastedTemp is CurrentTemp + (AvgPrecipChange * ForecastedYearsAhead).
