% Suppress warnings about discontiguous predicates
:- discontiguous pos/1.
:- discontiguous neg/1.

% Positive examples for will_rain
pos(will_rain(20000101)).
pos(will_rain(20000104)).
pos(will_rain(20000208)).

% Negative examples for will_rain
neg(will_rain(20000102)).
neg(will_rain(20000105)).
neg(will_rain(20000203)).
