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


memory init -instance top.uut.ConvA1.DP_A1.convA1_IFM1.IFM_Memory  -content_file  extraction/input/image_4977_float.txt -format verilogBin
memory init -instance top.uut.ConvA1.DP_A1.convA1_unit_1.WM.Memory -content_file extraction/memory/memory_float/layer_1_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvA1.DP_A1.bm.Memory	-content_file extraction/memory/memory_float/layer_1_mem_bias.txt -format verilogBin


memory init -instance top.uut.ConvB.DP_B.convB_unit_1.WM.Memory  -content_file extraction/memory/memory_float/layer_2_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.convB_unit_2.WM.Memory  -content_file extraction/memory/memory_float/layer_2_mem_1.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.convB_unit_3.WM.Memory  -content_file extraction/memory/memory_float/layer_2_mem_2.txt -format verilogBin

memory init -instance top.uut.ConvB.DP_B.bm1.Memory  -content_file extraction/memory/memory_float/layer_2_mem_bias_0.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.bm2.Memory  -content_file extraction/memory/memory_float/layer_2_mem_bias_1.txt -format verilogBin
memory init -instance top.uut.ConvB.DP_B.bm3.Memory  -content_file extraction/memory/memory_float/layer_2_mem_bias_2.txt -format verilogBin

memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_1.WM.Memory  -content_file extraction/memory/memory_float/layer_3_mem_0.txt -format verilogBin
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_2.WM.Memory  -content_file extraction/memory/memory_float/layer_3_mem_1.txt -format verilogBin
memory init -instance top.uut.ConvA2.DP_A2.convA2_unit_3.WM.Memory  -content_file extraction/memory/memory_float/layer_3_mem_2.txt -format verilogBin

memory init -instance top.uut.ConvA2.DP_A2.bm.Memory -content_file extraction/memory/memory_float/layer_3_mem_bias.txt -format verilogBin

memory init -instance top.uut.FC1.DP.W1.Memory  -content_file extraction/memory/memory_float/layer_4_mem_0.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W2.Memory  -content_file extraction/memory/memory_float/layer_4_mem_1.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W3.Memory  -content_file extraction/memory/memory_float/layer_4_mem_2.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W4.Memory  -content_file extraction/memory/memory_float/layer_4_mem_3.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W5.Memory  -content_file extraction/memory/memory_float/layer_4_mem_4.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W6.Memory  -content_file extraction/memory/memory_float/layer_4_mem_5.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W7.Memory  -content_file extraction/memory/memory_float/layer_4_mem_6.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W8.Memory  -content_file extraction/memory/memory_float/layer_4_mem_7.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W9.Memory  -content_file extraction/memory/memory_float/layer_4_mem_8.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W10.Memory  -content_file extraction/memory/memory_float/layer_4_mem_9.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W11.Memory  -content_file extraction/memory/memory_float/layer_4_mem_10.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W12.Memory  -content_file extraction/memory/memory_float/layer_4_mem_11.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W13.Memory  -content_file extraction/memory/memory_float/layer_4_mem_12.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W14.Memory  -content_file extraction/memory/memory_float/layer_4_mem_13.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W15.Memory  -content_file extraction/memory/memory_float/layer_4_mem_14.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W16.Memory  -content_file extraction/memory/memory_float/layer_4_mem_15.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W17.Memory  -content_file extraction/memory/memory_float/layer_4_mem_16.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W18.Memory  -content_file extraction/memory/memory_float/layer_4_mem_17.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W19.Memory  -content_file extraction/memory/memory_float/layer_4_mem_18.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W20.Memory  -content_file extraction/memory/memory_float/layer_4_mem_19.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W21.Memory  -content_file extraction/memory/memory_float/layer_4_mem_20.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W22.Memory  -content_file extraction/memory/memory_float/layer_4_mem_21.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W23.Memory  -content_file extraction/memory/memory_float/layer_4_mem_22.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W24.Memory  -content_file extraction/memory/memory_float/layer_4_mem_23.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W25.Memory  -content_file extraction/memory/memory_float/layer_4_mem_24.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W26.Memory  -content_file extraction/memory/memory_float/layer_4_mem_25.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W27.Memory  -content_file extraction/memory/memory_float/layer_4_mem_26.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W28.Memory  -content_file extraction/memory/memory_float/layer_4_mem_27.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W29.Memory  -content_file extraction/memory/memory_float/layer_4_mem_28.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W30.Memory  -content_file extraction/memory/memory_float/layer_4_mem_29.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W31.Memory  -content_file extraction/memory/memory_float/layer_4_mem_30.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W32.Memory  -content_file extraction/memory/memory_float/layer_4_mem_31.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W33.Memory  -content_file extraction/memory/memory_float/layer_4_mem_32.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W34.Memory  -content_file extraction/memory/memory_float/layer_4_mem_33.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W35.Memory  -content_file extraction/memory/memory_float/layer_4_mem_34.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W36.Memory  -content_file extraction/memory/memory_float/layer_4_mem_35.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W37.Memory  -content_file extraction/memory/memory_float/layer_4_mem_36.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W38.Memory  -content_file extraction/memory/memory_float/layer_4_mem_37.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W39.Memory  -content_file extraction/memory/memory_float/layer_4_mem_38.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W40.Memory  -content_file extraction/memory/memory_float/layer_4_mem_39.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W41.Memory  -content_file extraction/memory/memory_float/layer_4_mem_40.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W42.Memory  -content_file extraction/memory/memory_float/layer_4_mem_41.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W43.Memory  -content_file extraction/memory/memory_float/layer_4_mem_42.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W44.Memory  -content_file extraction/memory/memory_float/layer_4_mem_43.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W45.Memory  -content_file extraction/memory/memory_float/layer_4_mem_44.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W46.Memory  -content_file extraction/memory/memory_float/layer_4_mem_45.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W47.Memory  -content_file extraction/memory/memory_float/layer_4_mem_46.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W48.Memory  -content_file extraction/memory/memory_float/layer_4_mem_47.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W49.Memory  -content_file extraction/memory/memory_float/layer_4_mem_48.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W50.Memory  -content_file extraction/memory/memory_float/layer_4_mem_49.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W51.Memory  -content_file extraction/memory/memory_float/layer_4_mem_50.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W52.Memory  -content_file extraction/memory/memory_float/layer_4_mem_51.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W53.Memory  -content_file extraction/memory/memory_float/layer_4_mem_52.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W54.Memory  -content_file extraction/memory/memory_float/layer_4_mem_53.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W55.Memory  -content_file extraction/memory/memory_float/layer_4_mem_54.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W56.Memory  -content_file extraction/memory/memory_float/layer_4_mem_55.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W57.Memory  -content_file extraction/memory/memory_float/layer_4_mem_56.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W58.Memory  -content_file extraction/memory/memory_float/layer_4_mem_57.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W59.Memory  -content_file extraction/memory/memory_float/layer_4_mem_58.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W60.Memory  -content_file extraction/memory/memory_float/layer_4_mem_59.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W61.Memory  -content_file extraction/memory/memory_float/layer_4_mem_60.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W62.Memory  -content_file extraction/memory/memory_float/layer_4_mem_61.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W63.Memory  -content_file extraction/memory/memory_float/layer_4_mem_62.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W64.Memory  -content_file extraction/memory/memory_float/layer_4_mem_63.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W65.Memory  -content_file extraction/memory/memory_float/layer_4_mem_64.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W66.Memory  -content_file extraction/memory/memory_float/layer_4_mem_65.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W67.Memory  -content_file extraction/memory/memory_float/layer_4_mem_66.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W68.Memory  -content_file extraction/memory/memory_float/layer_4_mem_67.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W69.Memory  -content_file extraction/memory/memory_float/layer_4_mem_68.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W70.Memory  -content_file extraction/memory/memory_float/layer_4_mem_69.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W71.Memory  -content_file extraction/memory/memory_float/layer_4_mem_70.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W72.Memory  -content_file extraction/memory/memory_float/layer_4_mem_71.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W73.Memory  -content_file extraction/memory/memory_float/layer_4_mem_72.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W74.Memory  -content_file extraction/memory/memory_float/layer_4_mem_73.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W75.Memory  -content_file extraction/memory/memory_float/layer_4_mem_74.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W76.Memory  -content_file extraction/memory/memory_float/layer_4_mem_75.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W77.Memory  -content_file extraction/memory/memory_float/layer_4_mem_76.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W78.Memory  -content_file extraction/memory/memory_float/layer_4_mem_77.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W79.Memory  -content_file extraction/memory/memory_float/layer_4_mem_78.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W80.Memory  -content_file extraction/memory/memory_float/layer_4_mem_79.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W81.Memory  -content_file extraction/memory/memory_float/layer_4_mem_80.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W82.Memory  -content_file extraction/memory/memory_float/layer_4_mem_81.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W83.Memory  -content_file extraction/memory/memory_float/layer_4_mem_82.txt -format verilogBin
memory init -instance top.uut.FC1.DP.W84.Memory  -content_file extraction/memory/memory_float/layer_4_mem_83.txt -format verilogBin

memory init -instance top.uut.FC2.DP.W1.Memory  -content_file extraction/memory/memory_float/layer_5_mem_0.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W2.Memory  -content_file extraction/memory/memory_float/layer_5_mem_1.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W3.Memory  -content_file extraction/memory/memory_float/layer_5_mem_2.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W4.Memory  -content_file extraction/memory/memory_float/layer_5_mem_3.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W5.Memory  -content_file extraction/memory/memory_float/layer_5_mem_4.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W6.Memory  -content_file extraction/memory/memory_float/layer_5_mem_5.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W7.Memory  -content_file extraction/memory/memory_float/layer_5_mem_6.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W8.Memory  -content_file extraction/memory/memory_float/layer_5_mem_7.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W9.Memory  -content_file extraction/memory/memory_float/layer_5_mem_8.txt -format verilogBin
memory init -instance top.uut.FC2.DP.W10.Memory  -content_file extraction/memory/memory_float/layer_5_mem_9.txt -format verilogBin

reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_1} 32'00111100101110011100100001111010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_2} 32'00111101011100110100001110010101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_3} 32'00111101110111100100010101001111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_4} 32'00111101001101110000100001011101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_5} 32'10111100110111111111111001100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_6} 32'00111101001110100010111111011001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_7} 32'00111100001110011110000100010110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_8} 32'00111101101110100100100000000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_9} 32'10111011100010111110110001110000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_10} 32'00111101101001101100001110010110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_11} 32'00111101001111001110111001101001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_12} 32'00111100101001110011111010100011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_13} 32'10111100011011100011100010010110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_14} 32'00111100000110010000001001101010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_15} 32'10111011101000101010001010111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_16} 32'10111101010001011001000001101000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_17} 32'00111101101100110100000000010111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_18} 32'10111100000111000101110001100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_19} 32'00111101011100101010100000111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_20} 32'00111101001011001100011100001011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_21} 32'10111011110111101011001000001111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_22} 32'00111101100011110101000001110011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_23} 32'00111101100000101110001001011110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_24} 32'00111101101110100100000010101111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_25} 32'00111101101000110000001010011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_26} 32'10111101010011001110010101001000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_27} 32'00111101101001011100011101110010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_28} 32'00111100101100000111101101010101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_29} 32'10111100000110010010100100001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_30} 32'00111101010111111011001011100110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_31} 32'00111100010100001001111010101101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_32} 32'00111101101100011010111010110011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_33} 32'00111100000011110100101101100001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_34} 32'00111100100111110001111101010110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_35} 32'10111101100110100110101000001010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_36} 32'10111011010011110001100100100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_37} 32'10111011110100101001100010000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_38} 32'00111100010000110100110000010001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_39} 32'10111100001000110001100110000011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_40} 32'10111011100001101000010000111000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_41} 32'10111100101011011001001011011011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_42} 32'00111100101010010000110010111100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_43} 32'10111010100100111010110000000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_44} 32'00111101101111000001110011100101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_45} 32'00111101010110001110011010111101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_46} 32'10111100100101010001011001010001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_47} 32'10111011000111100111100010011010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_48} 32'00111100110100110100100101101010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_49} 32'10111100100001110011001000000010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_50} 32'00111100100100010000100001011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_51} 32'00111101101111010010011111010100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_52} 32'00111100100110011111110101100110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_53} 32'10111100011100001110001010101010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_54} 32'10111100101100110011001100101011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_55} 32'00111100101010111011100000000111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_56} 32'10111100000000110000010110111010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_57} 32'00111101000001110111101001100000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_58} 32'00111101011010000001111110011111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_59} 32'10111100110000010101101011100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_60} 32'00111100101011101010100101100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_61} 32'00111100111111100010100010000101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_62} 32'00111011110000000001000101111011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_63} 32'00111101001100111000010001110011;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_64} 32'00111100010100101011011110001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_65} 32'10111100010110000011011110100111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_66} 32'10111001000011011011101001110111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_67} 32'00111100001011101100011110100110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_68} 32'10111011100000001101111000000001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_69} 32'10111100110000111000111110111001;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_70} 32'00111101001111001000101001110101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_71} 32'10111101000101100011111111011100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_72} 32'00111000011111001111010011001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_73} 32'10111011010000101110010111010111;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_74} 32'10111010001001100110001001010101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_75} 32'10111100000111001111110010001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_76} 32'00111101000000111010110111000000;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_77} 32'00111100001011101000010001000101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_78} 32'00111101011100101111000010100110;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_79} 32'10111100010001111111110111001101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_80} 32'10111011101011100010000000101101;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_81} 32'10111100110000010100100110010010;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_82} 32'10111100001100110110101011011100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_83} 32'00111100011010111101111101001100;
reg force {top.uut.FC1.DP.FIFO1.fifo_data_out_84} 32'10111100100011010111010110100110;





reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_1} 32'10111011111101110101111010010111;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_2} 32'00111100101110011001001111000000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_3} 32'10111010100000101010010110101011;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_4} 32'10111100111000101111110011010000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_5} 32'00111100110000011001110111100001;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_6} 32'00111011101010000110110110000000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_7} 32'10111100011000110110100011101000;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_8} 32'10111101100011000001111100010010;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_9} 32'10111101101110100011011101011011;
reg force {top.uut.FC2.DP.FIFO1.fifo_data_out_10} 32'10111100101101000111110100100101;




reg  setvalue {top.uut.initialization_done} 1;
run 10 ns;

reg  setvalue {top.uut.initialization_done} 0;
run 10 ns;

run 500 us;
quit -f

