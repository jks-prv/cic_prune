// generated file

// CIC: INTEG_COMB N=3 R=8 M=1 Bin=12 Bout=12
// growth 9 = ceil(N=3 * log2(R=8))
// Bin 12 + growth 9 = acc_max 21

wire signed [20:0] integrator0_data;
wire signed [20:0] integrator1_data;
wire signed [17:0] integrator2_data;
wire signed [16:0] integrator3_data;
wire signed [16:0] comb0_data;
wire signed [15:0] comb1_data;
wire signed [14:0] comb2_data;
wire signed [13:0] comb3_data;

// important that "in" be declared signed by wrapper code
// so this assignment will sign-extend:
assign integrator0_data = in;

cic_integrator #(.WIDTH(21)) cic_integrator1_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator0_data[20 -:21]),	// trunc 0 bits
	.out_data(integrator1_data)
);

cic_integrator #(.WIDTH(18)) cic_integrator2_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator1_data[20 -:18]),	// trunc 3 bits
	.out_data(integrator2_data)
);

cic_integrator #(.WIDTH(17)) cic_integrator3_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator2_data[17 -:17]),	// trunc 1 bits
	.out_data(integrator3_data)
);

assign comb0_data = integrator3_data;

cic_comb #(.WIDTH(16)) cic_comb1_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb0_data[16 -:16]),	// trunc 1 bits
	.out_data(comb1_data)
);

cic_comb #(.WIDTH(15)) cic_comb2_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb1_data[15 -:15]),	// trunc 1 bits
	.out_data(comb2_data)
);

cic_comb #(.WIDTH(14)) cic_comb3_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb2_data[14 -:14]),	// trunc 1 bits
	.out_data(comb3_data)
);

assign out = comb3_data[13 -:12];	// trunc 2 bits
