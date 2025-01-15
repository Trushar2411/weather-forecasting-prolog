% Allow rules to use up to 3 body predicates
max_body(3).

% Specify the predicates Popper can use
body_pred(weather,5).
body_pred(temp_diff,3).
body_pred(humidity_diff,3).
body_pred(precip_diff,3).

% Specify the target predicate
head_pred(forecast,3).

% Type declarations
type(forecast, (date, year, float)).
type(weather, (date, month, float, float, float)).
type(temp_diff, (year, year, float)).
type(humidity_diff, (year, year, float)).
type(precip_diff, (year, year, float)).

% Clause