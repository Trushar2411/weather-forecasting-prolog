% Head predicates
head_pred(will_rain, 1).
head_pred(high_temp, 1).

% Body predicates
body_pred(weather, 5).

% Type declarations
type(will_rain, (date,)).
type(high_temp, (date,)).
type(weather,(date,month,temperature,cloud, precip)).

% Mode declarations without +/- signs hopefully this works
:- modeh(1,will_rain(var(date))).
:- modeb(1,weather(var(date),var(month),var(temp),var(cloud),var(precip))).

% Max vars
max_vars(6).

% Max body literals
max_body(3).

% Enable recursion
enable_recursion.

% Max clauses
max_clauses(4).

