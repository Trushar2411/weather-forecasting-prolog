% Positive examples (true forecasts)
pos(forecast(20000101, 2001, 5.1)).  % Forecasted correctly
pos(forecast(20000101, 2002, 6.0)).  % Forecasted correctly

% Negative examples (incorrect forecasts)
neg(forecast(20000101, 2001, 8.0)).  % Wrong temperature prediction
neg(forecast(20000101, 2002, 10.0)). % Wrong temperature prediction
