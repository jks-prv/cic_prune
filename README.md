A C version of Rick Lyon's Matlab implementation of Hogenauer's CIC filter
register pruning algorithm.

A Verilog file is generated containing unrolled calls to the integrator and
comb sections at the pruned bit widths.
Assumes you have a Verilog wrapper that looks like this:
 
		wire signed [IN_WIDTH-1:0] in = ...;
		wire signed [OUT_WIDTH-1:0] out;
		`include "cic_test.vh"

And the modules "cic_integrator" and "cic_comb" called by the generated code
that implement the actual CIC filter (examples included in package). Variables
"in" and "out" connect to the generated code.

See Rick's original article at: http://www.dsprelated.com/showcode/269.php

More info at: http://jks.com/cic/cic.html
