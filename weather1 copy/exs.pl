% Positive examples
pos(will_rain(20000101)).  % Example with precipitation
pos(will_rain(20000104)).  % Another rainy day

% Negative examples
neg(will_rain(20000102)).  % No precipitation
neg(will_rain(20000105)).  % Another dry day
