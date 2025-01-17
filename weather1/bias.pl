% Head predicates
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

% Max vars
max_vars(5).

% Max body literals
max_body(2).

% Enable recursion
enable_recursion.

% Max clauses
max_clauses(4).

