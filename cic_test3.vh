// generated file

// CIC: NO_PRUNE N=5 R=16 M=1 Bin=24 Bout=16
// Bin 24 + growth 20 = acc_max 44

wire signed [43:0] integrator0_data;
wire signed [43:0] integrator1_data;
wire signed [43:0] integrator2_data;
wire signed [43:0] integrator3_data;
wire signed [43:0] integrator4_data;
wire signed [43:0] integrator5_data;
wire signed [43:0] comb0_data;
wire signed [43:0] comb1_data;
wire signed [43:0] comb2_data;
wire signed [43:0] comb3_data;
wire signed [43:0] comb4_data;
wire signed [43:0] comb5_data;

// important that "in" be declared signed by wrapper code
// so this assignment will sign-extend:
assign integrator0_data = in;

cic_integrator #(.WIDTH(44)) cic_integrator1_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator0_data[43 -:44]),	// trunc 0 bits
	.out_data(integrator1_data)
);

cic_integrator #(.WIDTH(44)) cic_integrator2_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator1_data[43 -:44]),	// trunc 0 bits
	.out_data(integrator2_data)
);

cic_integrator #(.WIDTH(44)) cic_integrator3_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator2_data[43 -:44]),	// trunc 0 bits
	.out_data(integrator3_data)
);

cic_integrator #(.WIDTH(44)) cic_integrator4_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator3_data[43 -:44]),	// trunc 0 bits
	.out_data(integrator4_data)
);

cic_integrator #(.WIDTH(44)) cic_integrator5_inst(
	.clock(clock),
	.strobe(in_strobe),
	.in_data(integrator4_data[43 -:44]),	// trunc 0 bits
	.out_data(integrator5_data)
);

assign comb0_data = integrator5_data;

cic_comb #(.WIDTH(44)) cic_comb1_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb0_data[43 -:44]),	// trunc 0 bits
	.out_data(comb1_data)
);

cic_comb #(.WIDTH(44)) cic_comb2_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb1_data[43 -:44]),	// trunc 0 bits
	.out_data(comb2_data)
);

cic_comb #(.WIDTH(44)) cic_comb3_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb2_data[43 -:44]),	// trunc 0 bits
	.out_data(comb3_data)
);

cic_comb #(.WIDTH(44)) cic_comb4_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb3_data[43 -:44]),	// trunc 0 bits
	.out_data(comb4_data)
);

cic_comb #(.WIDTH(44)) cic_comb5_inst(
	.clock(clock),
	.strobe(out_strobe),
	.in_data(comb4_data[43 -:44]),	// trunc 0 bits
	.out_data(comb5_data)
);

assign out = comb5_data[43 -:16];	// trunc 28 bits
