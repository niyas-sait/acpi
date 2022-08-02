/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of pcct.dat, Tue Aug  2 11:54:14 2022
 *
 * ACPI Data Table [PCCT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PCCT"    [Platform Communications Channel Table]
[004h 0004   4]                 Table Length : 00000576
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : 48
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   4]        Flags (decoded below) : 00000001
                                    Platform : 1
[028h 0040   8]                     Reserved : 0000000000000000

[030h 0048   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[031h 0049   1]                       Length : 5A

[032h 0050   4]           Platform Interrupt : 00000038
[036h 0054   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[037h 0055   1]                     Reserved : 00
[038h 0056   8]                 Base Address : 00000807F8480000
[040h 0064   8]               Address Length : 0000000000004000

[048h 0072  12]            Doorbell Register : [Generic Address Structure]
[048h 0072   1]                     Space ID : 00 [SystemMemory]
[049h 0073   1]                    Bit Width : 20
[04Ah 0074   1]                   Bit Offset : 00
[04Bh 0075   1]         Encoded Access Width : 03 [DWord Access:32]
[04Ch 0076   8]                      Address : 0000100001540010

[054h 0084   8]                Preserve Mask : 0000000000000000
[05Ch 0092   8]                   Write Mask : 0000000053000040
[064h 0100   4]              Command Latency : 000003E8
[068h 0104   4]          Maximum Access Rate : 00000000
[06Ch 0108   2]      Minimum Turnaround Time : 0000
[06Eh 0110  12]        Platform ACK Register : [Generic Address Structure]
[06Eh 0110   1]                     Space ID : 00 [SystemMemory]
[06Fh 0111   1]                    Bit Width : 20
[070h 0112   1]                   Bit Offset : 00
[071h 0113   1]         Encoded Access Width : 03 [DWord Access:32]
[072h 0114   8]                      Address : 0000100001540020

[07Ah 0122   8]            ACK Preserve Mask : 0000000000000000
[082h 0130   8]               ACK Write Mask : 0000000000010001

[08Ah 0138   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[08Bh 0139   1]                       Length : 5A

[08Ch 0140   4]           Platform Interrupt : 00000039
[090h 0144   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[091h 0145   1]                     Reserved : 00
[092h 0146   8]                 Base Address : 00000807F8484000
[09Ah 0154   8]               Address Length : 0000000000004000

[0A2h 0162  12]            Doorbell Register : [Generic Address Structure]
[0A2h 0162   1]                     Space ID : 00 [SystemMemory]
[0A3h 0163   1]                    Bit Width : 20
[0A4h 0164   1]                   Bit Offset : 00
[0A5h 0165   1]         Encoded Access Width : 03 [DWord Access:32]
[0A6h 0166   8]                      Address : 0000100001541010

[0AEh 0174   8]                Preserve Mask : 0000000000000000
[0B6h 0182   8]                   Write Mask : 0000000053000040
[0BEh 0190   4]              Command Latency : 000003E8
[0C2h 0194   4]          Maximum Access Rate : 00000000
[0C6h 0198   2]      Minimum Turnaround Time : 0000
[0C8h 0200  12]        Platform ACK Register : [Generic Address Structure]
[0C8h 0200   1]                     Space ID : 00 [SystemMemory]
[0C9h 0201   1]                    Bit Width : 20
[0CAh 0202   1]                   Bit Offset : 00
[0CBh 0203   1]         Encoded Access Width : 03 [DWord Access:32]
[0CCh 0204   8]                      Address : 0000100001541020

[0D4h 0212   8]            ACK Preserve Mask : 0000000000000000
[0DCh 0220   8]               ACK Write Mask : 0000000000010001

[0E4h 0228   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[0E5h 0229   1]                       Length : 5A

[0E6h 0230   4]           Platform Interrupt : 0000003A
[0EAh 0234   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[0EBh 0235   1]                     Reserved : 00
[0ECh 0236   8]                 Base Address : 00000807F8488000
[0F4h 0244   8]               Address Length : 0000000000004000

[0FCh 0252  12]            Doorbell Register : [Generic Address Structure]
[0FCh 0252   1]                     Space ID : 00 [SystemMemory]
[0FDh 0253   1]                    Bit Width : 20
[0FEh 0254   1]                   Bit Offset : 00
[0FFh 0255   1]         Encoded Access Width : 03 [DWord Access:32]
[100h 0256   8]                      Address : 0000100001542010

[108h 0264   8]                Preserve Mask : 0000000000000000
[110h 0272   8]                   Write Mask : 0000000053800140
[118h 0280   4]              Command Latency : 00000064
[11Ch 0284   4]          Maximum Access Rate : 00000000
[120h 0288   2]      Minimum Turnaround Time : 006E
[122h 0290  12]        Platform ACK Register : [Generic Address Structure]
[122h 0290   1]                     Space ID : 00 [SystemMemory]
[123h 0291   1]                    Bit Width : 20
[124h 0292   1]                   Bit Offset : 00
[125h 0293   1]         Encoded Access Width : 03 [DWord Access:32]
[126h 0294   8]                      Address : 0000100001542020

[12Eh 0302   8]            ACK Preserve Mask : 0000000000000000
[136h 0310   8]               ACK Write Mask : 0000000000010001

[13Eh 0318   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[13Fh 0319   1]                       Length : 5A

[140h 0320   4]           Platform Interrupt : 0000003B
[144h 0324   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[145h 0325   1]                     Reserved : 00
[146h 0326   8]                 Base Address : 00000807F848C000
[14Eh 0334   8]               Address Length : 0000000000004000

[156h 0342  12]            Doorbell Register : [Generic Address Structure]
[156h 0342   1]                     Space ID : 00 [SystemMemory]
[157h 0343   1]                    Bit Width : 20
[158h 0344   1]                   Bit Offset : 00
[159h 0345   1]         Encoded Access Width : 03 [DWord Access:32]
[15Ah 0346   8]                      Address : 0000100001543010

[162h 0354   8]                Preserve Mask : 0000000000000000
[16Ah 0362   8]                   Write Mask : 0000000053000040
[172h 0370   4]              Command Latency : 000003E8
[176h 0374   4]          Maximum Access Rate : 00000000
[17Ah 0378   2]      Minimum Turnaround Time : 0000
[17Ch 0380  12]        Platform ACK Register : [Generic Address Structure]
[17Ch 0380   1]                     Space ID : 00 [SystemMemory]
[17Dh 0381   1]                    Bit Width : 20
[17Eh 0382   1]                   Bit Offset : 00
[17Fh 0383   1]         Encoded Access Width : 03 [DWord Access:32]
[180h 0384   8]                      Address : 0000100001543020

[188h 0392   8]            ACK Preserve Mask : 0000000000000000
[190h 0400   8]               ACK Write Mask : 0000000000010001

[198h 0408   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[199h 0409   1]                       Length : 5A

[19Ah 0410   4]           Platform Interrupt : 0000003C
[19Eh 0414   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[19Fh 0415   1]                     Reserved : 00
[1A0h 0416   8]                 Base Address : 00000807F8490000
[1A8h 0424   8]               Address Length : 0000000000004000

[1B0h 0432  12]            Doorbell Register : [Generic Address Structure]
[1B0h 0432   1]                     Space ID : 00 [SystemMemory]
[1B1h 0433   1]                    Bit Width : 20
[1B2h 0434   1]                   Bit Offset : 00
[1B3h 0435   1]         Encoded Access Width : 03 [DWord Access:32]
[1B4h 0436   8]                      Address : 0000100001544010

[1BCh 0444   8]                Preserve Mask : 0000000000000000
[1C4h 0452   8]                   Write Mask : 0000000053000040
[1CCh 0460   4]              Command Latency : 000003E8
[1D0h 0464   4]          Maximum Access Rate : 00000000
[1D4h 0468   2]      Minimum Turnaround Time : 0000
[1D6h 0470  12]        Platform ACK Register : [Generic Address Structure]
[1D6h 0470   1]                     Space ID : 00 [SystemMemory]
[1D7h 0471   1]                    Bit Width : 20
[1D8h 0472   1]                   Bit Offset : 00
[1D9h 0473   1]         Encoded Access Width : 03 [DWord Access:32]
[1DAh 0474   8]                      Address : 0000100001544020

[1E2h 0482   8]            ACK Preserve Mask : 0000000000000000
[1EAh 0490   8]               ACK Write Mask : 0000000000010001

[1F2h 0498   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[1F3h 0499   1]                       Length : 5A

[1F4h 0500   4]           Platform Interrupt : 0000003D
[1F8h 0504   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[1F9h 0505   1]                     Reserved : 00
[1FAh 0506   8]                 Base Address : 00000807F8494000
[202h 0514   8]               Address Length : 0000000000004000

[20Ah 0522  12]            Doorbell Register : [Generic Address Structure]
[20Ah 0522   1]                     Space ID : 00 [SystemMemory]
[20Bh 0523   1]                    Bit Width : 20
[20Ch 0524   1]                   Bit Offset : 00
[20Dh 0525   1]         Encoded Access Width : 03 [DWord Access:32]
[20Eh 0526   8]                      Address : 0000100001545010

[216h 0534   8]                Preserve Mask : 0000000000000000
[21Eh 0542   8]                   Write Mask : 0000000053000040
[226h 0550   4]              Command Latency : 000003E8
[22Ah 0554   4]          Maximum Access Rate : 00000000
[22Eh 0558   2]      Minimum Turnaround Time : 0000
[230h 0560  12]        Platform ACK Register : [Generic Address Structure]
[230h 0560   1]                     Space ID : 00 [SystemMemory]
[231h 0561   1]                    Bit Width : 20
[232h 0562   1]                   Bit Offset : 00
[233h 0563   1]         Encoded Access Width : 03 [DWord Access:32]
[234h 0564   8]                      Address : 0000100001545020

[23Ch 0572   8]            ACK Preserve Mask : 0000000000000000
[244h 0580   8]               ACK Write Mask : 0000000000010001

[24Ch 0588   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[24Dh 0589   1]                       Length : 5A

[24Eh 0590   4]           Platform Interrupt : 0000003E
[252h 0594   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[253h 0595   1]                     Reserved : 00
[254h 0596   8]                 Base Address : 00000807F8498000
[25Ch 0604   8]               Address Length : 0000000000004000

[264h 0612  12]            Doorbell Register : [Generic Address Structure]
[264h 0612   1]                     Space ID : 00 [SystemMemory]
[265h 0613   1]                    Bit Width : 20
[266h 0614   1]                   Bit Offset : 00
[267h 0615   1]         Encoded Access Width : 03 [DWord Access:32]
[268h 0616   8]                      Address : 0000100001546010

[270h 0624   8]                Preserve Mask : 0000000000000000
[278h 0632   8]                   Write Mask : 0000000053000040
[280h 0640   4]              Command Latency : 000003E8
[284h 0644   4]          Maximum Access Rate : 00000000
[288h 0648   2]      Minimum Turnaround Time : 0000
[28Ah 0650  12]        Platform ACK Register : [Generic Address Structure]
[28Ah 0650   1]                     Space ID : 00 [SystemMemory]
[28Bh 0651   1]                    Bit Width : 20
[28Ch 0652   1]                   Bit Offset : 00
[28Dh 0653   1]         Encoded Access Width : 03 [DWord Access:32]
[28Eh 0654   8]                      Address : 0000100001546020

[296h 0662   8]            ACK Preserve Mask : 0000000000000000
[29Eh 0670   8]               ACK Write Mask : 0000000000010001

[2A6h 0678   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[2A7h 0679   1]                       Length : 5A

[2A8h 0680   4]           Platform Interrupt : 0000003F
[2ACh 0684   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[2ADh 0685   1]                     Reserved : 00
[2AEh 0686   8]                 Base Address : 00000807F849C000
[2B6h 0694   8]               Address Length : 0000000000004000

[2BEh 0702  12]            Doorbell Register : [Generic Address Structure]
[2BEh 0702   1]                     Space ID : 00 [SystemMemory]
[2BFh 0703   1]                    Bit Width : 20
[2C0h 0704   1]                   Bit Offset : 00
[2C1h 0705   1]         Encoded Access Width : 03 [DWord Access:32]
[2C2h 0706   8]                      Address : 0000100001547010

[2CAh 0714   8]                Preserve Mask : 0000000000000000
[2D2h 0722   8]                   Write Mask : 0000000053000040
[2DAh 0730   4]              Command Latency : 000003E8
[2DEh 0734   4]          Maximum Access Rate : 00000000
[2E2h 0738   2]      Minimum Turnaround Time : 0000
[2E4h 0740  12]        Platform ACK Register : [Generic Address Structure]
[2E4h 0740   1]                     Space ID : 00 [SystemMemory]
[2E5h 0741   1]                    Bit Width : 20
[2E6h 0742   1]                   Bit Offset : 00
[2E7h 0743   1]         Encoded Access Width : 03 [DWord Access:32]
[2E8h 0744   8]                      Address : 0000100001547020

[2F0h 0752   8]            ACK Preserve Mask : 0000000000000000
[2F8h 0760   8]               ACK Write Mask : 0000000000010001

[300h 0768   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[301h 0769   1]                       Length : 5A

[302h 0770   4]           Platform Interrupt : 00000028
[306h 0774   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[307h 0775   1]                     Reserved : 00
[308h 0776   8]                 Base Address : 00000807F84A0000
[310h 0784   8]               Address Length : 0000000000004000

[318h 0792  12]            Doorbell Register : [Generic Address Structure]
[318h 0792   1]                     Space ID : 00 [SystemMemory]
[319h 0793   1]                    Bit Width : 20
[31Ah 0794   1]                   Bit Offset : 00
[31Bh 0795   1]         Encoded Access Width : 03 [DWord Access:32]
[31Ch 0796   8]                      Address : 0000100000540010

[324h 0804   8]                Preserve Mask : 0000000000000000
[32Ch 0812   8]                   Write Mask : 0000000053000040
[334h 0820   4]              Command Latency : 000003E8
[338h 0824   4]          Maximum Access Rate : 00000000
[33Ch 0828   2]      Minimum Turnaround Time : 0000
[33Eh 0830  12]        Platform ACK Register : [Generic Address Structure]
[33Eh 0830   1]                     Space ID : 00 [SystemMemory]
[33Fh 0831   1]                    Bit Width : 20
[340h 0832   1]                   Bit Offset : 00
[341h 0833   1]         Encoded Access Width : 03 [DWord Access:32]
[342h 0834   8]                      Address : 0000100000540020

[34Ah 0842   8]            ACK Preserve Mask : 0000000000000000
[352h 0850   8]               ACK Write Mask : 0000000000010001

[35Ah 0858   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[35Bh 0859   1]                       Length : 5A

[35Ch 0860   4]           Platform Interrupt : 00000029
[360h 0864   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[361h 0865   1]                     Reserved : 00
[362h 0866   8]                 Base Address : 00000807F84A4000
[36Ah 0874   8]               Address Length : 0000000000004000

[372h 0882  12]            Doorbell Register : [Generic Address Structure]
[372h 0882   1]                     Space ID : 00 [SystemMemory]
[373h 0883   1]                    Bit Width : 20
[374h 0884   1]                   Bit Offset : 00
[375h 0885   1]         Encoded Access Width : 03 [DWord Access:32]
[376h 0886   8]                      Address : 0000100000541010

[37Eh 0894   8]                Preserve Mask : 0000000000000000
[386h 0902   8]                   Write Mask : 0000000053000040
[38Eh 0910   4]              Command Latency : 000003E8
[392h 0914   4]          Maximum Access Rate : 00000000
[396h 0918   2]      Minimum Turnaround Time : 0000
[398h 0920  12]        Platform ACK Register : [Generic Address Structure]
[398h 0920   1]                     Space ID : 00 [SystemMemory]
[399h 0921   1]                    Bit Width : 20
[39Ah 0922   1]                   Bit Offset : 00
[39Bh 0923   1]         Encoded Access Width : 03 [DWord Access:32]
[39Ch 0924   8]                      Address : 0000100000541020

[3A4h 0932   8]            ACK Preserve Mask : 0000000000000000
[3ACh 0940   8]               ACK Write Mask : 0000000000010001

[3B4h 0948   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[3B5h 0949   1]                       Length : 5A

[3B6h 0950   4]           Platform Interrupt : 0000002A
[3BAh 0954   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[3BBh 0955   1]                     Reserved : 00
[3BCh 0956   8]                 Base Address : 00000807F84A8000
[3C4h 0964   8]               Address Length : 0000000000004000

[3CCh 0972  12]            Doorbell Register : [Generic Address Structure]
[3CCh 0972   1]                     Space ID : 00 [SystemMemory]
[3CDh 0973   1]                    Bit Width : 20
[3CEh 0974   1]                   Bit Offset : 00
[3CFh 0975   1]         Encoded Access Width : 03 [DWord Access:32]
[3D0h 0976   8]                      Address : 0000100000542010

[3D8h 0984   8]                Preserve Mask : 0000000000000000
[3E0h 0992   8]                   Write Mask : 0000000053000040
[3E8h 1000   4]              Command Latency : 000003E8
[3ECh 1004   4]          Maximum Access Rate : 00000000
[3F0h 1008   2]      Minimum Turnaround Time : 0000
[3F2h 1010  12]        Platform ACK Register : [Generic Address Structure]
[3F2h 1010   1]                     Space ID : 00 [SystemMemory]
[3F3h 1011   1]                    Bit Width : 20
[3F4h 1012   1]                   Bit Offset : 00
[3F5h 1013   1]         Encoded Access Width : 03 [DWord Access:32]
[3F6h 1014   8]                      Address : 0000100000542020

[3FEh 1022   8]            ACK Preserve Mask : 0000000000000000
[406h 1030   8]               ACK Write Mask : 0000000000010001

[40Eh 1038   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[40Fh 1039   1]                       Length : 5A

[410h 1040   4]           Platform Interrupt : 0000002B
[414h 1044   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[415h 1045   1]                     Reserved : 00
[416h 1046   8]                 Base Address : 00000807F84AC000
[41Eh 1054   8]               Address Length : 0000000000004000

[426h 1062  12]            Doorbell Register : [Generic Address Structure]
[426h 1062   1]                     Space ID : 00 [SystemMemory]
[427h 1063   1]                    Bit Width : 20
[428h 1064   1]                   Bit Offset : 00
[429h 1065   1]         Encoded Access Width : 03 [DWord Access:32]
[42Ah 1066   8]                      Address : 0000100000543010

[432h 1074   8]                Preserve Mask : 0000000000000000
[43Ah 1082   8]                   Write Mask : 0000000053000040
[442h 1090   4]              Command Latency : 000003E8
[446h 1094   4]          Maximum Access Rate : 00000000
[44Ah 1098   2]      Minimum Turnaround Time : 0000
[44Ch 1100  12]        Platform ACK Register : [Generic Address Structure]
[44Ch 1100   1]                     Space ID : 00 [SystemMemory]
[44Dh 1101   1]                    Bit Width : 20
[44Eh 1102   1]                   Bit Offset : 00
[44Fh 1103   1]         Encoded Access Width : 03 [DWord Access:32]
[450h 1104   8]                      Address : 0000100000543020

[458h 1112   8]            ACK Preserve Mask : 0000000000000000
[460h 1120   8]               ACK Write Mask : 0000000000010001

[468h 1128   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[469h 1129   1]                       Length : 5A

[46Ah 1130   4]           Platform Interrupt : 0000002D
[46Eh 1134   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[46Fh 1135   1]                     Reserved : 00
[470h 1136   8]                 Base Address : 00000807F84B0000
[478h 1144   8]               Address Length : 0000000000004000

[480h 1152  12]            Doorbell Register : [Generic Address Structure]
[480h 1152   1]                     Space ID : 00 [SystemMemory]
[481h 1153   1]                    Bit Width : 20
[482h 1154   1]                   Bit Offset : 00
[483h 1155   1]         Encoded Access Width : 03 [DWord Access:32]
[484h 1156   8]                      Address : 0000100000545010

[48Ch 1164   8]                Preserve Mask : 0000000000000000
[494h 1172   8]                   Write Mask : 0000000053000040
[49Ch 1180   4]              Command Latency : 000003E8
[4A0h 1184   4]          Maximum Access Rate : 00000000
[4A4h 1188   2]      Minimum Turnaround Time : 0000
[4A6h 1190  12]        Platform ACK Register : [Generic Address Structure]
[4A6h 1190   1]                     Space ID : 00 [SystemMemory]
[4A7h 1191   1]                    Bit Width : 20
[4A8h 1192   1]                   Bit Offset : 00
[4A9h 1193   1]         Encoded Access Width : 03 [DWord Access:32]
[4AAh 1194   8]                      Address : 0000100000545020

[4B2h 1202   8]            ACK Preserve Mask : 0000000000000000
[4BAh 1210   8]               ACK Write Mask : 0000000000010001

[4C2h 1218   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[4C3h 1219   1]                       Length : 5A

[4C4h 1220   4]           Platform Interrupt : 0000002E
[4C8h 1224   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[4C9h 1225   1]                     Reserved : 00
[4CAh 1226   8]                 Base Address : 00000807F84B4000
[4D2h 1234   8]               Address Length : 0000000000004000

[4DAh 1242  12]            Doorbell Register : [Generic Address Structure]
[4DAh 1242   1]                     Space ID : 00 [SystemMemory]
[4DBh 1243   1]                    Bit Width : 20
[4DCh 1244   1]                   Bit Offset : 00
[4DDh 1245   1]         Encoded Access Width : 03 [DWord Access:32]
[4DEh 1246   8]                      Address : 0000100000546010

[4E6h 1254   8]                Preserve Mask : 0000000000000000
[4EEh 1262   8]                   Write Mask : 0000000053000040
[4F6h 1270   4]              Command Latency : 000003E8
[4FAh 1274   4]          Maximum Access Rate : 00000000
[4FEh 1278   2]      Minimum Turnaround Time : 0000
[500h 1280  12]        Platform ACK Register : [Generic Address Structure]
[500h 1280   1]                     Space ID : 00 [SystemMemory]
[501h 1281   1]                    Bit Width : 20
[502h 1282   1]                   Bit Offset : 00
[503h 1283   1]         Encoded Access Width : 03 [DWord Access:32]
[504h 1284   8]                      Address : 0000100000546020

[50Ch 1292   8]            ACK Preserve Mask : 0000000000000000
[514h 1300   8]               ACK Write Mask : 0000000000010001

[51Ch 1308   1]                Subtable Type : 02 [HW-Reduced Comm Subspace Type2]
[51Dh 1309   1]                       Length : 5A

[51Eh 1310   4]           Platform Interrupt : 0000002F
[522h 1314   1]        Flags (Decoded Below) : 00
                                    Polarity : 0
                                        Mode : 0
[523h 1315   1]                     Reserved : 00
[524h 1316   8]                 Base Address : 00000807F84B8000
[52Ch 1324   8]               Address Length : 0000000000004000

[534h 1332  12]            Doorbell Register : [Generic Address Structure]
[534h 1332   1]                     Space ID : 00 [SystemMemory]
[535h 1333   1]                    Bit Width : 20
[536h 1334   1]                   Bit Offset : 00
[537h 1335   1]         Encoded Access Width : 03 [DWord Access:32]
[538h 1336   8]                      Address : 0000100000547010

[540h 1344   8]                Preserve Mask : 0000000000000000
[548h 1352   8]                   Write Mask : 0000000053000040
[550h 1360   4]              Command Latency : 000003E8
[554h 1364   4]          Maximum Access Rate : 00000000
[558h 1368   2]      Minimum Turnaround Time : 0000
[55Ah 1370  12]        Platform ACK Register : [Generic Address Structure]
[55Ah 1370   1]                     Space ID : 00 [SystemMemory]
[55Bh 1371   1]                    Bit Width : 20
[55Ch 1372   1]                   Bit Offset : 00
[55Dh 1373   1]         Encoded Access Width : 03 [DWord Access:32]
[55Eh 1374   8]                      Address : 0000100000547020

[566h 1382   8]            ACK Preserve Mask : 0000000000000000
[56Eh 1390   8]               ACK Write Mask : 0000000000010001

Raw Table Data: Length 1398 (0x576)

    0000: 50 43 43 54 76 05 00 00 02 48 41 6D 70 65 72 65  // PCCTv....HAmpere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 02 5A 38 00 00 00 00 00 00 00 48 F8 07 08 00 00  // .Z8.......H.....
    0040: 00 40 00 00 00 00 00 00 00 20 00 03 10 00 54 01  // .@....... ....T.
    0050: 00 10 00 00 00 00 00 00 00 00 00 00 40 00 00 53  // ............@..S
    0060: 00 00 00 00 E8 03 00 00 00 00 00 00 00 00 00 20  // ............... 
    0070: 00 03 20 00 54 01 00 10 00 00 00 00 00 00 00 00  // .. .T...........
    0080: 00 00 01 00 01 00 00 00 00 00 02 5A 39 00 00 00  // ...........Z9...
    0090: 00 00 00 40 48 F8 07 08 00 00 00 40 00 00 00 00  // ...@H......@....
    00A0: 00 00 00 20 00 03 10 10 54 01 00 10 00 00 00 00  // ... ....T.......
    00B0: 00 00 00 00 00 00 40 00 00 53 00 00 00 00 E8 03  // ......@..S......
    00C0: 00 00 00 00 00 00 00 00 00 20 00 03 20 10 54 01  // ......... .. .T.
    00D0: 00 10 00 00 00 00 00 00 00 00 00 00 01 00 01 00  // ................
    00E0: 00 00 00 00 02 5A 3A 00 00 00 00 00 00 80 48 F8  // .....Z:.......H.
    00F0: 07 08 00 00 00 40 00 00 00 00 00 00 00 20 00 03  // .....@....... ..
    0100: 10 20 54 01 00 10 00 00 00 00 00 00 00 00 00 00  // . T.............
    0110: 40 01 80 53 00 00 00 00 64 00 00 00 00 00 00 00  // @..S....d.......
    0120: 6E 00 00 20 00 03 20 20 54 01 00 10 00 00 00 00  // n.. ..  T.......
    0130: 00 00 00 00 00 00 01 00 01 00 00 00 00 00 02 5A  // ...............Z
    0140: 3B 00 00 00 00 00 00 C0 48 F8 07 08 00 00 00 40  // ;.......H......@
    0150: 00 00 00 00 00 00 00 20 00 03 10 30 54 01 00 10  // ....... ...0T...
    0160: 00 00 00 00 00 00 00 00 00 00 40 00 00 53 00 00  // ..........@..S..
    0170: 00 00 E8 03 00 00 00 00 00 00 00 00 00 20 00 03  // ............. ..
    0180: 20 30 54 01 00 10 00 00 00 00 00 00 00 00 00 00  //  0T.............
    0190: 01 00 01 00 00 00 00 00 02 5A 3C 00 00 00 00 00  // .........Z<.....
    01A0: 00 00 49 F8 07 08 00 00 00 40 00 00 00 00 00 00  // ..I......@......
    01B0: 00 20 00 03 10 40 54 01 00 10 00 00 00 00 00 00  // . ...@T.........
    01C0: 00 00 00 00 40 00 00 53 00 00 00 00 E8 03 00 00  // ....@..S........
    01D0: 00 00 00 00 00 00 00 20 00 03 20 40 54 01 00 10  // ....... .. @T...
    01E0: 00 00 00 00 00 00 00 00 00 00 01 00 01 00 00 00  // ................
    01F0: 00 00 02 5A 3D 00 00 00 00 00 00 40 49 F8 07 08  // ...Z=......@I...
    0200: 00 00 00 40 00 00 00 00 00 00 00 20 00 03 10 50  // ...@....... ...P
    0210: 54 01 00 10 00 00 00 00 00 00 00 00 00 00 40 00  // T.............@.
    0220: 00 53 00 00 00 00 E8 03 00 00 00 00 00 00 00 00  // .S..............
    0230: 00 20 00 03 20 50 54 01 00 10 00 00 00 00 00 00  // . .. PT.........
    0240: 00 00 00 00 01 00 01 00 00 00 00 00 02 5A 3E 00  // .............Z>.
    0250: 00 00 00 00 00 80 49 F8 07 08 00 00 00 40 00 00  // ......I......@..
    0260: 00 00 00 00 00 20 00 03 10 60 54 01 00 10 00 00  // ..... ...`T.....
    0270: 00 00 00 00 00 00 00 00 40 00 00 53 00 00 00 00  // ........@..S....
    0280: E8 03 00 00 00 00 00 00 00 00 00 20 00 03 20 60  // ........... .. `
    0290: 54 01 00 10 00 00 00 00 00 00 00 00 00 00 01 00  // T...............
    02A0: 01 00 00 00 00 00 02 5A 3F 00 00 00 00 00 00 C0  // .......Z?.......
    02B0: 49 F8 07 08 00 00 00 40 00 00 00 00 00 00 00 20  // I......@....... 
    02C0: 00 03 10 70 54 01 00 10 00 00 00 00 00 00 00 00  // ...pT...........
    02D0: 00 00 40 00 00 53 00 00 00 00 E8 03 00 00 00 00  // ..@..S..........
    02E0: 00 00 00 00 00 20 00 03 20 70 54 01 00 10 00 00  // ..... .. pT.....
    02F0: 00 00 00 00 00 00 00 00 01 00 01 00 00 00 00 00  // ................
    0300: 02 5A 28 00 00 00 00 00 00 00 4A F8 07 08 00 00  // .Z(.......J.....
    0310: 00 40 00 00 00 00 00 00 00 20 00 03 10 00 54 00  // .@....... ....T.
    0320: 00 10 00 00 00 00 00 00 00 00 00 00 40 00 00 53  // ............@..S
    0330: 00 00 00 00 E8 03 00 00 00 00 00 00 00 00 00 20  // ............... 
    0340: 00 03 20 00 54 00 00 10 00 00 00 00 00 00 00 00  // .. .T...........
    0350: 00 00 01 00 01 00 00 00 00 00 02 5A 29 00 00 00  // ...........Z)...
    0360: 00 00 00 40 4A F8 07 08 00 00 00 40 00 00 00 00  // ...@J......@....
    0370: 00 00 00 20 00 03 10 10 54 00 00 10 00 00 00 00  // ... ....T.......
    0380: 00 00 00 00 00 00 40 00 00 53 00 00 00 00 E8 03  // ......@..S......
    0390: 00 00 00 00 00 00 00 00 00 20 00 03 20 10 54 00  // ......... .. .T.
    03A0: 00 10 00 00 00 00 00 00 00 00 00 00 01 00 01 00  // ................
    03B0: 00 00 00 00 02 5A 2A 00 00 00 00 00 00 80 4A F8  // .....Z*.......J.
    03C0: 07 08 00 00 00 40 00 00 00 00 00 00 00 20 00 03  // .....@....... ..
    03D0: 10 20 54 00 00 10 00 00 00 00 00 00 00 00 00 00  // . T.............
    03E0: 40 00 00 53 00 00 00 00 E8 03 00 00 00 00 00 00  // @..S............
    03F0: 00 00 00 20 00 03 20 20 54 00 00 10 00 00 00 00  // ... ..  T.......
    0400: 00 00 00 00 00 00 01 00 01 00 00 00 00 00 02 5A  // ...............Z
    0410: 2B 00 00 00 00 00 00 C0 4A F8 07 08 00 00 00 40  // +.......J......@
    0420: 00 00 00 00 00 00 00 20 00 03 10 30 54 00 00 10  // ....... ...0T...
    0430: 00 00 00 00 00 00 00 00 00 00 40 00 00 53 00 00  // ..........@..S..
    0440: 00 00 E8 03 00 00 00 00 00 00 00 00 00 20 00 03  // ............. ..
    0450: 20 30 54 00 00 10 00 00 00 00 00 00 00 00 00 00  //  0T.............
    0460: 01 00 01 00 00 00 00 00 02 5A 2D 00 00 00 00 00  // .........Z-.....
    0470: 00 00 4B F8 07 08 00 00 00 40 00 00 00 00 00 00  // ..K......@......
    0480: 00 20 00 03 10 50 54 00 00 10 00 00 00 00 00 00  // . ...PT.........
    0490: 00 00 00 00 40 00 00 53 00 00 00 00 E8 03 00 00  // ....@..S........
    04A0: 00 00 00 00 00 00 00 20 00 03 20 50 54 00 00 10  // ....... .. PT...
    04B0: 00 00 00 00 00 00 00 00 00 00 01 00 01 00 00 00  // ................
    04C0: 00 00 02 5A 2E 00 00 00 00 00 00 40 4B F8 07 08  // ...Z.......@K...
    04D0: 00 00 00 40 00 00 00 00 00 00 00 20 00 03 10 60  // ...@....... ...`
    04E0: 54 00 00 10 00 00 00 00 00 00 00 00 00 00 40 00  // T.............@.
    04F0: 00 53 00 00 00 00 E8 03 00 00 00 00 00 00 00 00  // .S..............
    0500: 00 20 00 03 20 60 54 00 00 10 00 00 00 00 00 00  // . .. `T.........
    0510: 00 00 00 00 01 00 01 00 00 00 00 00 02 5A 2F 00  // .............Z/.
    0520: 00 00 00 00 00 80 4B F8 07 08 00 00 00 40 00 00  // ......K......@..
    0530: 00 00 00 00 00 20 00 03 10 70 54 00 00 10 00 00  // ..... ...pT.....
    0540: 00 00 00 00 00 00 00 00 40 00 00 53 00 00 00 00  // ........@..S....
    0550: E8 03 00 00 00 00 00 00 00 00 00 20 00 03 20 70  // ........... .. p
    0560: 54 00 00 10 00 00 00 00 00 00 00 00 00 00 01 00  // T...............
    0570: 01 00 00 00 00 00                                // ......
