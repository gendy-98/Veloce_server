onerror exit

###START OF SCRIPT###
set Emulator $::env(Emulator)
puts "Emulator is $Emulator"

hwtrace on

xwave on
xwave select_all_groups

reg setvalue {top.uut.reset} 1;
run 10 ns;

reg setvalue {top.uut.reset} 0;
run 10 ns;


memory init -instance top.uut.ConvA1.DP_A1.convA1_IFM1.IFM_Memory  -content_file  extraction/input/image_4977_fixed.txt -format verilogBin
memory init -instance top.uut.ConvA1.DP_A1.convA1_unit_1.WM.Memory -content_file extraction/memory/memory_fixed/layer_1_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvA1.DP_A1.bm.Memory	-content_file extraction/memory/memory_fixed/layer_1_mem_bias.txt -format verilogBin


memory init -instance top.uut.ConvB.DP_B.convB_unit_1.WM.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.convB_unit_2.WM.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_1.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.convB_unit_3.WM.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_2.txt -format verilogBin

memory init -instance top.uut.ConvB.DP_B.bm1.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_bias_0.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.bm2.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_bias_1.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.bm3.Memory  -content_file extraction/memory/memory_fixed/layer_2_mem_bias_2.txt -format verilogBin

memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_1.WM.Memory  -content_file extraction/memory/memory_fixed/layer_3_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_2.WM.Memory  -content_file extraction/memory/memory_fixed/layer_3_mem_1.txt -format verilogBin
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_3.WM.Memory  -content_file extraction/memory/memory_fixed/layer_3_mem_2.txt -format verilogBin

memory init -instance top.uut.ConvA2.DP_A2.bm.Memory -content_file extraction/memory/memory_fixed/layer_3_mem_bias.txt -format verilogBin

memory init -instance top.uut.FC1.DP.W1.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_0.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W2.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_1.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W3.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_2.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W4.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_3.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W5.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_4.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W6.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_5.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W7.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_6.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W8.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_7.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W9.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_8.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W10.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_9.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W11.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_10.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W12.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_11.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W13.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_12.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W14.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_13.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W15.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_14.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W16.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_15.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W17.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_16.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W18.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_17.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W19.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_18.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W20.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_19.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W21.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_20.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W22.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_21.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W23.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_22.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W24.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_23.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W25.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_24.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W26.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_25.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W27.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_26.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W28.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_27.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W29.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_28.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W30.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_29.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W31.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_30.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W32.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_31.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W33.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_32.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W34.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_33.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W35.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_34.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W36.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_35.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W37.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_36.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W38.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_37.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W39.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_38.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W40.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_39.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W41.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_40.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W42.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_41.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W43.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_42.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W44.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_43.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W45.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_44.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W46.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_45.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W47.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_46.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W48.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_47.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W49.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_48.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W50.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_49.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W51.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_50.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W52.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_51.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W53.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_52.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W54.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_53.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W55.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_54.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W56.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_55.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W57.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_56.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W58.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_57.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W59.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_58.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W60.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_59.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W61.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_60.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W62.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_61.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W63.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_62.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W64.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_63.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W65.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_64.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W66.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_65.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W67.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_66.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W68.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_67.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W69.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_68.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W70.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_69.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W71.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_70.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W72.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_71.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W73.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_72.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W74.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_73.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W75.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_74.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W76.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_75.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W77.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_76.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W78.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_77.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W79.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_78.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W80.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_79.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W81.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_80.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W82.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_81.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W83.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_82.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W84.Memory  -content_file extraction/memory/memory_fixed/layer_4_mem_83.txt -format verilogBin

memory init -instance top.uut.FC2.DP.W1.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_0.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W2.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_1.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W3.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_2.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W4.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_3.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W5.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_4.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W6.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_5.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W7.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_6.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W8.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_7.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W9.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_8.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W10.Memory  -content_file extraction/memory/memory_fixed/layer_5_mem_9.txt -format verilogBin

reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_1} 32'b11111111111111010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_2} 32'b00000000000011110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_3} 32'b11111111111111100001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_4} 32'b00000000000000101100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_5} 32'b11111111111111100001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_6} 32'b00000000000010010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_7} 32'b11111111111111110000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_8} 32'b00000000000000000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_9} 32'b00000000000000110100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_10} 32'b11111111111111001110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_11} 32'b00000000000000001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_12} 32'b00000000000010001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_13} 32'b11111111111111111011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_14} 32'b11111111111111101001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_15} 32'b00000000000000011110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_16} 32'b11111111111111001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_17} 32'b00000000000000100100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_18} 32'b11111111111111001001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_19} 32'b00000000000000011001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_20} 32'b11111111111111111111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_21} 32'b00000000000011111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_22} 32'b00000000000010001111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_23} 32'b00000000000001010011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_24} 32'b11111111111111101111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_25} 32'b11111111111110111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_26} 32'b00000000000001101010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_27} 32'b00000000000010000011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_28} 32'b00000000000000000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_29} 32'b11111111111100110000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_30} 32'b11111111111111111010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_31} 32'b00000000000001000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_32} 32'b00000000000001100100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_33} 32'b11111111111110010110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_34} 32'b00000000000010000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_35} 32'b00000000000000001110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_36} 32'b11111111111111010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_37} 32'b00000000000010011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_38} 32'b11111111111111001010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_39} 32'b00000000000001101111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_40} 32'b00000000000011010000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_41} 32'b11111111111110011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_42} 32'b00000000000000001011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_43} 32'b11111111111110011001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_44} 32'b00000000000100001110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_45} 32'b00000000000000000001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_46} 32'b00000000000001101110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_47} 32'b11111111111111100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_48} 32'b00000000000000001000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_49} 32'b11111111111111000101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_50} 32'b00000000000000011001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_51} 32'b00000000000010011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_52} 32'b11111111111111001011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_53} 32'b00000000000000000100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_54} 32'b00000000000001110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_55} 32'b00000000000011110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_56} 32'b00000000000000010010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_57} 32'b00000000000000011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_58} 32'b00000000000000100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_59} 32'b11111111111111011110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_60} 32'b00000000000001110001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_61} 32'b00000000000010001000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_62} 32'b00000000000100011000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_63} 32'b00000000000000000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_64} 32'b11111111111111100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_65} 32'b11111111111111110110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_66} 32'b00000000000010101101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_67} 32'b11111111111110110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_68} 32'b00000000000000001010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_69} 32'b00000000000010110101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_70} 32'b00000000000000011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_71} 32'b11111111111111111010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_72} 32'b11111111111110100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_73} 32'b00000000000001000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_74} 32'b00000000000010001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_75} 32'b00000000000000100010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_76} 32'b00000000000001010111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_77} 32'b11111111111111101010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_78} 32'b00000000000000010001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_79} 32'b00000000000000111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_80} 32'b11111111111111110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_81} 32'b00000000000010001110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_82} 32'b00000000000000000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_83} 32'b00000000000000101101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_84} 32'b00000000000010001010;



reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_1} 32'b11111111111110111010;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_2} 32'b00000000000010111110;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_3} 32'b00000000000000111000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_4} 32'b11111111111110011100;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_5} 32'b00000000000000010110;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_6} 32'b00000000000011001110;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_7} 32'b11111111111110111001;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_8} 32'b00000000000000011000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_9} 32'b11111111111100100111;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_10} 32'b11111111111111011000;



reg  setvalue {top.uut.initialization_done} 1;
run 10 ns;

reg  setvalue {top.uut.initialization_done} 0;
run 10 ns;

run 500 us;
quit -f

