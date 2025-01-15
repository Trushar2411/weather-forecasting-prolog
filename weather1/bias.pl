% Declare target predicate (the hypothesis we want Popper to learn)
head_pred(forecast, 3).

% Declare background knowledge predicates
body_pred(weather, 5).
body_pred(trend_temperature, 2).

% Type declarations for the predicates
type(forecast, (int, int, float)).
type(weather, (int, int, float, float, float)).
type(trend_temperature, (int, float)).

% Direction of the arguments
direction(forecast, (in, in, out)).
direction(weather, (in, in, out, out, out)).
direction(trend_temperature, (in, out)).
