// ============================================================================
//   Ver  :| Author					:| Mod. Date :| Changes Made:
//   V1.1 :| Alexandra Du			:| 06/01/2016:| Added Verilog file
// ============================================================================


//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================
//
//  *****************************************************************************
//  ******************Modified slightly by Frank Higgins - 8/19/2020*************
//  ***********************Temple ECE Department*********************************
//
//  8/19/2020
//  Renamed the top module
//  Edited (removed) from the `define list below
//  Reorded the i/o list so that the clocks are at the bottom,
//    thus no syntax error if the last argument is left out
//    via a `define statement
//
//  8/20/2020
//  Copied to a SystemVerilog file.
//  Moved switches down to the bottom of the list
//
//  *****************************************************************************

// Insert macros here ...

module DE10_LITE_Temple_Top(

	//////////// SDRAM: 3.3-V LVTTL //////////
`ifdef ENABLE_SDRAM
	output		    [12:0]		dram_addr,
	output		     [1:0]		dram_ba,
	output		          		dram_cas_n,
	output		          		dram_cke,
	output		          		dram_clk,
	output		          		dram_cs_n,
	inout 		    [15:0]		dram_dq,
	output		          		dram_ldqm,
	output		          		dram_ras_n,
	output		          		dram_udqm,
	output		          		dram_we_n,
`endif

	//////////// SEG7: 3.3-V LVTTL //////////
`ifdef ENABLE_HEX0
	output		     [7:0]		hex0,
`endif
`ifdef ENABLE_HEX1
	output		     [7:0]		hex1,
`endif
`ifdef ENABLE_HEX2
	output		     [7:0]		hex2,
`endif
`ifdef ENABLE_HEX3
	output		     [7:0]		hex3,
`endif
`ifdef ENABLE_HEX4
	output		     [7:0]		hex4,
`endif
`ifdef ENABLE_HEX5
	output		     [7:0]		hex5,
`endif

	//////////// KEY: 3.3 V SCHMITT TRIGGER //////////
`ifdef ENABLE_KEY
	input 		     [1:0]		key,
`endif

	//////////// LED: 3.3-V LVTTL //////////
`ifdef ENABLE_LED
	output		     [9:0]		ledr,
`endif

	//////////// VGA: 3.3-V LVTTL //////////
`ifdef ENABLE_VGA
	output		     [3:0]		vga_b,
	output		     [3:0]		vga_g,
	output		          		vga_hs,
	output		     [3:0]		vga_r,
	output		          		vga_vs,
`endif

	//////////// Accelerometer: 3.3-V LVTTL //////////
`ifdef ENABLE_ACCELEROMETER
	output		          		gsensor_cs_n,
	input 		     [2:1]		gsensor_int,
	output		          		gsensor_sclk,
	inout 		          		gsensor_sdi,
	inout 		          		gsensor_sdo,
`endif

	//////////// Arduino: 3.3-V LVTTL //////////
`ifdef ENABLE_ARDUINO
	inout 		    [15:0]		arduino_io,
	inout 		          		arduino_reset_n,
`endif

	//////////// GPIO, GPIO connect to GPIO Default: 3.3-V LVTTL //////////
`ifdef ENABLE_GPIO
	inout 		    [35:0]		gpio,
`endif

	//////////// ADC CLOCK: 3.3-V LVTTL //////////
`ifdef ENABLE_ADC_CLOCK
	input 		          		adc_clk_10,
`endif
	//////////// CLOCK 1: 3.3-V LVTTL //////////
`ifdef ENABLE_CLOCK1
	input 		          		max10_clk1_50,
`endif
	//////////// CLOCK 2: 3.3-V LVTTL //////////
`ifdef ENABLE_CLOCK2
	input 		          		max10_clk2_50,
`endif

	//////////// SW: 3.3-V LVTTL //////////
`ifdef ENABLE_SW
//	input 		     [9:0]		sw
	input 		     [6:0]		sw
`endif
);

	// add the Lab 3A design here

	// add the Lab 3 design code here
	logic [3:0] an;	
	logic [6:0] cathode;

	// tie unused LED's low
	assign ledr[9:0] = 10'b0;

	// instantiate top level design here
	

	// and instantiate the muxed display module
	muxed_display u_md (.hex3, .hex2, .hex1, .hex0, 
		.an, .cathode);

endmodule
