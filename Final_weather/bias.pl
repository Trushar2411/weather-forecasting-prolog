% Head predicate
head_pred(will_rain, 1).

% Body predicates
body_pred(weather, 5).
body_pred(cloud_cover_high, 1).
body_pred(precipitation_high, 1).

% Type declarations
type(will_rain, (date,)).
type(weather, (date, month, temperature, cloud, precip)).
type(cloud_cover_high, (date,)).
type(precipitation_high, (date,)).

% Maximum number of variables per rule
max_vars(5).

% Maximum number of literals per body
max_body(2).

% Enable recursion
enable_recursion.

% Maximum number of clauses
max_clauses(4).
