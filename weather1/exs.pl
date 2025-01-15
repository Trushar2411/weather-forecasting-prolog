% Positive examples
pos(forecast(20000101, 20010101, 3.6)).
pos(forecast(20000102, 20010102, 9.8)).
pos(forecast(20000103, 20010103, 6.1)).

% Negative examples
neg(forecast(20000101, 20010101, 10.0)).
neg(forecast(20000102, 20010102, 5.0)).
neg(forecast(20000103, 20010103, 2.0)).
