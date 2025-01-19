pos(will_rain(20000101)). % High cloud cover and high precipitation
pos(will_rain(20000104)). % High precipitation only
pos(will_rain(20021202)). % High cloud cover and high precipitation
pos(will_rain(20021224)). % High cloud cover only
pos(will_rain(20030101)).


neg(will_rain(20000102)). % Neither high cloud cover nor precipitation
neg(will_rain(20000105)). % High cloud cover only
neg(will_rain(20021225)). % Low cloud cover and precipitation
neg(will_rain(20030315)). % Neither high cloud cover nor precipitation
neg(will_rain(20030102)).
neg(will_rain(20030103)).