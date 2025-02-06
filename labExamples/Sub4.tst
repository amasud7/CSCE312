load Sub4.hdl,
output-file Sub4.out,
compare-to Sub4.cmp,
output-list a%B1.4.1 b%B1.4.1 out%B1.4.1 overflow%B3.1.6;

set a %B0001,
set b %B0001,
eval,
output;

set a %B0010,
set b %B0001,
eval,
output;

set a %B0001,
set b %B0010,
eval,
output;

set a %B1011,
set b %B0010,
eval,
output;

set a %B1000,
set b %B0001,
eval,
output;