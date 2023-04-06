`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2022 22:00:34
// Design Name: Automated Car Wahing System
// Module Name: car_wash
// Author Name: Soham Sen
// Project Name: 
// Target Devices: 
// Tool Versions: Vivado 2022.1
// Description: 4 modes
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module car_wash(
    input clk,
    input btn_start,
    input rst,
    input vip_mode,
    input extra_foam_mode,
    input standard_mode,
    input low_cost_mode,
    input lunar_wash_mode,
    input t1,
    input t2,
    input t3,
    input t4,
    input t5,
    input t6,
    input t7,
    input t8,
    output reg foam,
    output reg foam_2,
    output reg water,
    output reg water_2,
    output reg wax,
    output reg dry,
    output reg wheel_wash,
    output reg undercarriage_wash,
    output reg clear_coat_shield,
    output reg finish
    );
    
    parameter WATER=4'b0000;
    parameter WATER_2=4'b0001;
    parameter FOAM=4'b0010;
    parameter FOAM_2=4'b0011;
    parameter WAX=4'b0100;
    parameter DRY=4'b0101;
    parameter WHEEL_WASH=4'b0110;
    parameter UNDERCARRIAGE_WASH=4'b0111;
    parameter CLEAR_COAT_SHIELD=4'b1000;
    parameter FINISH=4'b1001;
     
    reg [3:0] cst,nst;
    
    
    always @(btn_start or vip_mode or lunar_wash_mode or extra_foam_mode or standard_mode or low_cost_mode or t1 or t2 or t3 or t4 or t5 or t6 or t7 or t8)
    begin
        if(btn_start==1)
        begin
            //VIP MODE
            if(vip_mode==1)
            begin
            case(cst)
            WATER:
                  begin
                      nst=FOAM;
                      water=1;
                      water_2=0;
                      foam=0;
                      foam_2=0;
                      wax=0;
                      dry=0;
                      finish=0;
                      undercarriage_wash=0;
                      wheel_wash=0;
                      clear_coat_shield=0;
                  end
             FOAM:if(t1==1)
                begin
                    nst=WATER_2;
                    water=0;
                    water_2=0;
                    foam=1;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             WATER_2:if(t2==1)
                begin
                    nst=WAX;
                    water=0;
                    water_2=1;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             WAX:if(t3==1)
                begin
                    nst=DRY;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=1;
                    dry=0;
                    finish=0;
                  end
             DRY:if(t4==1)
                begin
                    nst=FINISH;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=1;
                    finish=0;
                  end
             FINISH:if(t5==1)
                begin
                    nst=FOAM;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=1;
                  end
             default:begin
                    nst=WATER;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             endcase
             end
             //LUNAR WASH MODE
            else if(lunar_wash_mode==1)
            begin
            case(cst)
            WATER:
                  begin
                      nst=UNDERCARRIAGE_WASH;
                      water=1;
                      water_2=0;
                      undercarriage_wash=0;
                      wheel_wash=0;
                      clear_coat_shield=0;
                      foam=0;
                      foam_2=0;
                      wax=0;
                      dry=0;
                      finish=0;
                  end
             UNDERCARRIAGE_WASH:if(t1==1)
                begin
                    nst=FOAM;
                    water=0;
                    water_2=0;
                    foam=0;
                    undercarriage_wash=1;
                    wheel_wash=0;
                    clear_coat_shield=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             FOAM:if(t2==1)
                begin
                    nst=WHEEL_WASH;
                    water=0;
                    water_2=0;
                    foam=1;
                    undercarriage_wash=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
            WHEEL_WASH:if(t3==1)
                begin
                    nst=WATER_2;
                    water=0;
                    water_2=0;
                    foam=0;
                    wheel_wash=1;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             WATER_2:if(t4==1)
                begin
                    nst=WAX;
                    water=0;
                    water_2=1;
                    foam=0;
                    wheel_wash=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             WAX:if(t5==1)
                begin
                    nst=DRY;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=1;
                    dry=0;
                    finish=0;
                  end
             DRY:if(t6==1)
                begin
                    nst=CLEAR_COAT_SHIELD;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=1;
                    finish=0;
                  end
            CLEAR_COAT_SHIELD:if(t7==1)
                begin
                    nst=FINISH;
                    water=0;
                    water_2=0;
                    foam=0;
                    clear_coat_shield=1;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             FINISH:if(t8==1)
                begin
                    nst=WATER;
                    clear_coat_shield=0;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=1;
                  end
             default:begin
                    nst=FOAM;
                    water=0;
                    water_2=0;
                    foam=0;
                    foam_2=0;
                    wax=0;
                    dry=0;
                    finish=0;
                  end
             endcase
             end
             //EXTRA FOAM MODE
             else if(extra_foam_mode==1)
                 begin
                    case(cst)
                    FOAM:begin
                            nst=WATER;
                            water=0;
                            water_2=0;
                            undercarriage_wash=0;
                            wheel_wash=0;
                            clear_coat_shield=0;
                            foam=1;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                          end
                    WATER:if(t1==1)
                        begin
                            nst=FOAM_2;
                            water=1;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    FOAM_2:if(t2==1)
                        begin
                            nst=WATER_2;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=1;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    WATER_2:if(t3==1)
                        begin
                            nst=FINISH;
                            water=0;
                            water_2=1;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    FINISH:if(t4==1)
                        begin
                            nst=FOAM;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=1;
                        end
                    default:begin
                            nst=FOAM;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    endcase
                 end
                 //STANDARD MODE
                 else if(standard_mode==1)
                 begin
                    case(cst)
                    FOAM:begin
                            nst=WATER;
                            water=0;
                            undercarriage_wash=0;
                            wheel_wash=0;
                            clear_coat_shield=0;
                            water_2=0;
                            foam=1;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                          end
                    WATER:if(t1==1)
                        begin
                            nst=FINISH;
                            water=1;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    FINISH:if(t2==1)
                        begin
                            nst=WATER;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=1;
                        end
                    default:begin
                            nst=FOAM;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    endcase
                 end
                 //LOW COST MODE
                 else if(low_cost_mode==1)
                 begin
                    case(cst)
                    WATER:begin
                            nst=FINISH;
                            water=1;
                            undercarriage_wash=0;
                            wheel_wash=0;
                            clear_coat_shield=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                          end
                    FINISH:if(t1==1)
                        begin
                            nst=WATER;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=1;
                          end
                    default:begin
                            nst=WATER;
                            water=0;
                            water_2=0;
                            foam=0;
                            foam_2=0;
                            wax=0;
                            dry=0;
                            finish=0;
                        end
                    endcase
                 end
         end       
         else
         begin
            nst=cst;
         end
        end
    
    always @(clk or rst)
	begin
		if(rst)
		begin
			cst=4'b000;
		end
		else
		begin
			cst=nst;
		end
	end
endmodule
