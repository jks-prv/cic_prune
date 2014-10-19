// generated file

// CIC: INTEG_COMB N=5 R=7936 M=1 Bin=22 Bout=24
// growth 65 = ceil(N=5 * log2(R=7936))
// Bin 22 + growth 65 = acc_max 87

wire signed [86:0] integrator0_data;
wire signed [86:0] integrator1_data;
wire signed [86:0] integrator2_data;
wire signed [86:0] integrator3_data;
wire signed [86:0] integrator4_data;
wire signed [35:0] integrator5_data;
wire signed [35:0] comb0_data;
wire signed [29:0] comb1_data;
wire signed [28:0] comb2_data;
wire signed [27:0] comb3_data;
wire signed [26:0] comb4_data;
wire signed [26:0] comb5_data;

// important that "in" be declared signed by wrapper code
// so this assignment will sign-extend:
assign integrator0_data = in;

cic_integrator #(.WIDTH(87)) cic_integrator1_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator0_data[86 -:87]),	// trunc 0 bits
	.out_data(integrator1_data)
);

cic_integrator #(.WIDTH(87)) cic_integrator2_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator1_data[86 -:87]),	// trunc 0 bits
	.out_data(integrator2_data)
);

cic_integrator #(.WIDTH(87)) cic_integrator3_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator2_data[86 -:87]),	// trunc 0 bits
	.out_data(integrator3_data)
);

cic_integrator #(.WIDTH(87)) cic_integrator4_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator3_data[86 -:87]),	// trunc 0 bits
	.out_data(integrator4_data)
);

cic_integrator #(.WIDTH(36)) cic_integrator5_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator4_data[86 -:36]),	// trunc 51 bits
	.out_data(integrator5_data)
);

assign comb0_data = integrator5_data;

cic_comb #(.WIDTH(30)) cic_comb1_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb0_data[35 -:30]),	// trunc 6 bits
	.out_data(comb1_data)
);

cic_comb #(.WIDTH(29)) cic_comb2_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb1_data[29 -:29]),	// trunc 1 bits
	.out_data(comb2_data)
);

cic_comb #(.WIDTH(28)) cic_comb3_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb2_data[28 -:28]),	// trunc 1 bits
	.out_data(comb3_data)
);

cic_comb #(.WIDTH(27)) cic_comb4_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb3_data[27 -:27]),	// trunc 1 bits
	.out_data(comb4_data)
);

cic_comb #(.WIDTH(27)) cic_comb5_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb4_data[26 -:27]),	// trunc 0 bits
	.out_data(comb5_data)
);

assign out = comb5_data[26 -:24];	// trunc 3 bits
