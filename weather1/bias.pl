% Head predicate: what we want to learn
:- modeh(1, will_rain(Date)).
:- modeh(1, will_not_rain(Date)).

% Body predicate: background knowledge used to construct rules
:- modeb(1, weather(Date, Month, Temperature, CloudCover, Precipitation)).

% Constraints
% Maximum number of literals in the body
max_body(2).

% Maximum number of clauses in a hypothesis
max_clauses(1).

% Allowable predicates in rules
:- determination(will_rain/1, weather/5).
:- determination(will_not_rain/1, weather/5).