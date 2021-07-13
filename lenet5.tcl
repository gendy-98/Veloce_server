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


memory init -instance top.uut.ConvA1.DP_A1.convA1_IFM1.IFM_Memory  -content_file  files_vel/input/image_4977_float.txt
memory init -instance top.uut.ConvA1.DP_A1.convA1_unit_1.WM.Memory -content_file files_vel/memory/memory_float/layer_1_mem_0.txt
memory init -instance top.uut.ConvA1.DP_A1.bm.Memory	-content_file files_vel/memory/memory_float/layer_1_mem_bias.txt


memory init -instance top.uut.ConvB.DP_B.convB_unit_1.WM.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_0.txt
memory init -instance top.uut.ConvB.DP_B.convB_unit_2.WM.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_1.txt
memory init -instance top.uut.ConvB.DP_B.convB_unit_3.WM.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_2.txt

memory init -instance top.uut.ConvB.DP_B.bm1.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_bias_0.txt
memory init -instance top.uut.ConvB.DP_B.bm2.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_bias_1.txt
memory init -instance top.uut.ConvB.DP_B.bm3.Memory  -content_file files_vel/memory/memory_float/layer_2_mem_bias_2.txt

memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_1.WM.Memory  -content_file files_vel/memory/memory_float/layer_3_mem_0.txt
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_2.WM.Memory  -content_file files_vel/memory/memory_float/layer_3_mem_1.txt
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_3.WM.Memory  -content_file files_vel/memory/memory_float/layer_3_mem_2.txt

memory init -instance top.uut.ConvA2.DP_A2.bm.Memory -content_file files_vel/memory/memory_float/layer_3_mem_bias.txt

memory init -instance top.uut.FC1.DP.W1.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_0.txt
memory init -instance top.uut.FC1.DP.W2.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_1.txt
memory init -instance top.uut.FC1.DP.W3.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_2.txt
memory init -instance top.uut.FC1.DP.W4.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_3.txt
memory init -instance top.uut.FC1.DP.W5.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_4.txt
memory init -instance top.uut.FC1.DP.W6.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_5.txt
memory init -instance top.uut.FC1.DP.W7.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_6.txt
memory init -instance top.uut.FC1.DP.W8.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_7.txt
memory init -instance top.uut.FC1.DP.W9.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_8.txt
memory init -instance top.uut.FC1.DP.W10.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_9.txt
memory init -instance top.uut.FC1.DP.W11.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_10.txt
memory init -instance top.uut.FC1.DP.W12.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_11.txt
memory init -instance top.uut.FC1.DP.W13.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_12.txt
memory init -instance top.uut.FC1.DP.W14.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_13.txt
memory init -instance top.uut.FC1.DP.W15.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_14.txt
memory init -instance top.uut.FC1.DP.W16.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_15.txt
memory init -instance top.uut.FC1.DP.W17.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_16.txt
memory init -instance top.uut.FC1.DP.W18.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_17.txt
memory init -instance top.uut.FC1.DP.W19.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_18.txt
memory init -instance top.uut.FC1.DP.W20.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_19.txt
memory init -instance top.uut.FC1.DP.W21.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_20.txt
memory init -instance top.uut.FC1.DP.W22.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_21.txt
memory init -instance top.uut.FC1.DP.W23.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_22.txt
memory init -instance top.uut.FC1.DP.W24.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_23.txt
memory init -instance top.uut.FC1.DP.W25.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_24.txt
memory init -instance top.uut.FC1.DP.W26.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_25.txt
memory init -instance top.uut.FC1.DP.W27.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_26.txt
memory init -instance top.uut.FC1.DP.W28.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_27.txt
memory init -instance top.uut.FC1.DP.W29.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_28.txt
memory init -instance top.uut.FC1.DP.W30.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_29.txt
memory init -instance top.uut.FC1.DP.W31.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_30.txt
memory init -instance top.uut.FC1.DP.W32.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_31.txt
memory init -instance top.uut.FC1.DP.W33.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_32.txt
memory init -instance top.uut.FC1.DP.W34.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_33.txt
memory init -instance top.uut.FC1.DP.W35.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_34.txt
memory init -instance top.uut.FC1.DP.W36.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_35.txt
memory init -instance top.uut.FC1.DP.W37.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_36.txt
memory init -instance top.uut.FC1.DP.W38.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_37.txt
memory init -instance top.uut.FC1.DP.W39.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_38.txt
memory init -instance top.uut.FC1.DP.W40.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_39.txt
memory init -instance top.uut.FC1.DP.W41.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_40.txt
memory init -instance top.uut.FC1.DP.W42.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_41.txt
memory init -instance top.uut.FC1.DP.W43.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_42.txt
memory init -instance top.uut.FC1.DP.W44.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_43.txt
memory init -instance top.uut.FC1.DP.W45.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_44.txt
memory init -instance top.uut.FC1.DP.W46.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_45.txt
memory init -instance top.uut.FC1.DP.W47.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_46.txt
memory init -instance top.uut.FC1.DP.W48.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_47.txt
memory init -instance top.uut.FC1.DP.W49.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_48.txt
memory init -instance top.uut.FC1.DP.W50.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_49.txt
memory init -instance top.uut.FC1.DP.W51.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_50.txt
memory init -instance top.uut.FC1.DP.W52.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_51.txt
memory init -instance top.uut.FC1.DP.W53.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_52.txt
memory init -instance top.uut.FC1.DP.W54.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_53.txt
memory init -instance top.uut.FC1.DP.W55.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_54.txt
memory init -instance top.uut.FC1.DP.W56.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_55.txt
memory init -instance top.uut.FC1.DP.W57.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_56.txt
memory init -instance top.uut.FC1.DP.W58.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_57.txt
memory init -instance top.uut.FC1.DP.W59.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_58.txt
memory init -instance top.uut.FC1.DP.W60.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_59.txt
memory init -instance top.uut.FC1.DP.W61.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_60.txt
memory init -instance top.uut.FC1.DP.W62.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_61.txt
memory init -instance top.uut.FC1.DP.W63.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_62.txt
memory init -instance top.uut.FC1.DP.W64.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_63.txt
memory init -instance top.uut.FC1.DP.W65.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_64.txt
memory init -instance top.uut.FC1.DP.W66.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_65.txt
memory init -instance top.uut.FC1.DP.W67.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_66.txt
memory init -instance top.uut.FC1.DP.W68.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_67.txt
memory init -instance top.uut.FC1.DP.W69.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_68.txt
memory init -instance top.uut.FC1.DP.W70.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_69.txt
memory init -instance top.uut.FC1.DP.W71.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_70.txt
memory init -instance top.uut.FC1.DP.W72.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_71.txt
memory init -instance top.uut.FC1.DP.W73.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_72.txt
memory init -instance top.uut.FC1.DP.W74.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_73.txt
memory init -instance top.uut.FC1.DP.W75.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_74.txt
memory init -instance top.uut.FC1.DP.W76.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_75.txt
memory init -instance top.uut.FC1.DP.W77.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_76.txt
memory init -instance top.uut.FC1.DP.W78.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_77.txt
memory init -instance top.uut.FC1.DP.W79.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_78.txt
memory init -instance top.uut.FC1.DP.W80.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_79.txt
memory init -instance top.uut.FC1.DP.W81.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_80.txt
memory init -instance top.uut.FC1.DP.W82.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_81.txt
memory init -instance top.uut.FC1.DP.W83.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_82.txt
memory init -instance top.uut.FC1.DP.W84.Memory  -content_file files_vel/memory/memory_float/layer_4_mem_83.txt

memory init -instance top.uut.FC2.DP.W1.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_0.txt
memory init -instance top.uut.FC2.DP.W2.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_1.txt
memory init -instance top.uut.FC2.DP.W3.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_2.txt
memory init -instance top.uut.FC2.DP.W4.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_3.txt
memory init -instance top.uut.FC2.DP.W5.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_4.txt
memory init -instance top.uut.FC2.DP.W6.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_5.txt
memory init -instance top.uut.FC2.DP.W7.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_6.txt
memory init -instance top.uut.FC2.DP.W8.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_7.txt
memory init -instance top.uut.FC2.DP.W9.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_8.txt
memory init -instance top.uut.FC2.DP.W10.Memory  -content_file files_vel/memory/memory_float/layer_5_mem_9.txt

reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_1} 32'10111100001100010100100110000101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_2} 32'00111101011101110111100111101011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_3} 32'10111011111110101011110001100010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_4} 32'00111100001100101100101111110100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_5} 32'10111011111110000000011000100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_6} 32'00111101000101000010110110011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_7} 32'10111011100001110001011100110110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_8} 32'00111001010001010110001000010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_9} 32'00111100010100000001000000011101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_10} 32'10111100010010000100100011001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_11} 32'00111011010010101001000010011000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_12} 32'00111101000011000000110111101101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_13} 32'10111010101100101010101111000111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_14} 32'10111011101110101001001110000111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_15} 32'00111011111100010000111010101001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_16} 32'10111100010011010100110110110100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_17} 32'00111100000100100001100011011100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_18} 32'10111100010111000001110100110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_19} 32'00111011110010001110111011011101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_20} 32'10111001110100111011111001110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_21} 32'00111101011110010011000010111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_22} 32'00111101000011110010001001010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_23} 32'00111100101001100011000110011010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_24} 32'10111011100011000110011011100100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_25} 32'10111100100001111001101100101110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_26} 32'00111100110101001010100111011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_27} 32'00111101000000110001110000111000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_28} 32'00111001011101000110111001110101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_29} 32'10111101010100001010111000011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_30} 32'10111010110110001101001111000101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_31} 32'00111100100001011100110000000110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_32} 32'00111100110010011100001110011001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_33} 32'10111100110101011110100101110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_34} 32'00111101000000100011010011110011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_35} 32'00111011011000101001101010111100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_36} 32'10111100001100101101000011101111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_37} 32'00111101000110110000010100011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_38} 32'10111100010110110001100101110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_39} 32'00111100110111100100011100100110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_40} 32'00111101010100001101110101100001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_41} 32'10111100110010101001111000111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_42} 32'00111011001101101011110000010001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_43} 32'10111100110011100110111100011010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_44} 32'00111101100001110111001001011000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_45} 32'00111001110100000011111010110110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_46} 32'00111100110111001111010110001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_47} 32'10111011110010101101010111111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_48} 32'00111011000001101010111010001110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_49} 32'10111100011011000001111011011110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_50} 32'00111011110010001110010110000001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_51} 32'00111101000111110001100010111000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_52} 32'10111100010101100110101110001001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_53} 32'00111010100010100100001010101001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_54} 32'00111100111011101011010000110101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_55} 32'00111101011100100100100110010001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_56} 32'00111011100100000000011101111100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_57} 32'00111011110110000100111000110001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_58} 32'00111100000111101011101110100011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_59} 32'10111100000010100011001010110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_60} 32'00111100111000111111101110100000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_61} 32'00111101000010000001100011111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_62} 32'00111101100011000010110000001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_63} 32'00111000010101010001100010100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_64} 32'10111011110011010111101110111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_65} 32'10111011001011100001011011011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_66} 32'00111101001011010101001101110100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_67} 32'10111100100111010100010000000100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_68} 32'00111011001011000011011000000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_69} 32'00111101001101010100110111011100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_70} 32'00111011111110100110100000110011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_71} 32'10111010110111011011111100110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_72} 32'10111100101101101010101000001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_73} 32'00111100100001011101101101010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_74} 32'00111101000011000101000101011010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_75} 32'00111100000010000010100010001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_76} 32'00111100101011111110101100101100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_77} 32'10111011101101101110001101111011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_78} 32'00111011100010110011110111000111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_79} 32'00111100011001101110011010011010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_80} 32'10111011000101010001010011001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_81} 32'00111101000011100101101111011000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_82} 32'10111001011000101101001100110101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_83} 32'00111100001101001010100100011101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_84} 32'00111101000010101110001011000010;




reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_1} 32'10111100100011001000110110101011;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_2} 32'00111101001111101110110110101001;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_3} 32'00111100011000011001111011011000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_4} 32'10111100110010001100111001011000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_5} 32'00111011101100111000010000111101;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_6} 32'00111101010011100101101000000000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_7} 32'10111100100011110001010100010001;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_8} 32'00111011110000101111110011011110;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_9} 32'10111101010110011011100001000111;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_10} 32'10111100001000100011100011111000;




reg  setvalue {top.uut.initialization_done) 1;
run 10 ns;

reg  setvalue {top.uut.initialization_done) 0;
run 10 ns;

run 500 us;
quit -f

