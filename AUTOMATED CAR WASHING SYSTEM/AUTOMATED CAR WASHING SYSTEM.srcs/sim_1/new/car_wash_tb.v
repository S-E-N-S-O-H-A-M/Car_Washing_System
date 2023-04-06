`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 22:01:34
// Design Name: 
// Module Name: car_wash_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module car_wash_tb;

    //Initializing Inouts
    reg clk;
    reg btn_start;
    reg rst;
    reg vip_mode;
    reg extra_foam_mode;
    reg standard_mode;
    reg low_cost_mode;
    reg lunar_wash_mode;
    reg t1;
    reg t2;
    reg t3;
    reg t4;
    reg t5;
    reg t6;
    reg t7;
    reg t8;
    
    //Initializing Ouputs
    wire foam;
    wire foam_2;
    wire water;
    wire water_2;
    wire wax;
    wire dry;
    wire finish;
    wire wheel_wash;
    wire clear_coat_shield;
    wire undercarriage_wash;
    
    car_wash dut(.clk(clk),
                 .btn_start(btn_start),
                 .rst(rst),
                 .vip_mode(vip_mode),
                 .extra_foam_mode(extra_foam_mode),
                 .standard_mode(standard_mode),
                 .low_cost_mode(low_cost_mode),
                 .lunar_wash_mode(lunar_wash_mode),
                 .t1(t1),
                 .t2(t2),
                 .t3(t3),
                 .t4(t4),
                 .t5(t5),
                 .t6(t6),
                 .t7(t7),
                 .t8(t8),
                 .foam(foam),
                 .foam_2(foam_2),
                 .water(water),
                 .water_2(water_2),
                 .wax(wax),
                 .dry(dry),
                 .clear_coat_shield(clear_coat_shield),
                 .undercarriage_wash(undercarriage_wash),
                 .wheel_wash(wheel_wash),
                 .finish(finish)
     );
     
     always #10 clk=~clk;     
     initial begin
     
     clk=0;
     rst=1;
     
     #20;rst=0;t1=0;t2=0;t3=0;t4=0;t5=0;t6=0;t7=0;t8=0;
//     btn_start=1;vip_mode=0;lunar_wash_mode=1;extra_foam_mode=0;standard_mode=0;low_cost_mode=0;
     
//     #10;t1=1;
//     #10;t1=0;t2=1;
//     #10;t2=0;t3=1;
//     #10;t3=0;t4=1;
//     #10;t4=0;t5=1;
//     #10;t5=0;t6=1;
//     #10;t6=0;t7=1;
//     #10;t7=0;t8=1;
     
//     #10;t8=0;
     
//   rst=1;
     
//   #10;rst=0;
//     btn_start=1;vip_mode=0;lunar_wash_mode=0;jet_wash_mode=1;extra_foam_mode=0;standard_mode=0;low_cost_mode=0;
     
//     #10;t1=1;
//     #10;t1=0;t2=1;
//     #10;t2=0;t3=1;
//     #10;t3=0;t4=1;
//     #10;t4=0;t5=1;
//     #10;t5=0;t6=1;
//     #10;t6=0;t7=1;
     
//     #10;t7=0;
//   rst=1;
     
//   #10;rst=0;
    
//lunar_wash_mode=0;vip_mode=1;extra_foam_mode=0;standard_mode=0;low_cost_mode=0;
     
//     #10;t1=1;
//     #10;t1=0;t2=1;
//     #10;t2=0;t3=1;
//     #10;t3=0;t4=1;
//     #10;t4=0;t5=1;
     
//     #10;t5=0;
//   rst=1;
     
//   #10;rst=0;
      btn_start=1;
//      vip_mode=0;extra_foam_mode=1;standard_mode=0;low_cost_mode=0;
     
     
//     #10;t1=1;
//     #10;t1=0;t2=1;
//     #10;t2=0;t3=1;
//     #10;t3=0;t4=1;
//     #10;
//     #10;t4=0;
     //rst=1;
     
     //#10;rst=0;
//     vip_mode=0;extra_foam_mode=0;lunar_wash_mode=0;standard_mode=1;low_cost_mode=0;;
     
//     #10;t1=1;
//     #10;t1=0;t2=1;
     
//     #10;t2=0;
     //standard_mode=0;
//     rst=1;
    
//     #10;rst=0;
     vip_mode=0;extra_foam_mode=0;standard_mode=0;low_cost_mode=1;lunar_wash_mode=0;
     
     #10;t1=1;
     #10;
//     #10;t1=0;
     //rst=1;
     
     //#10;
     $finish();
     
     end     
endmodule
