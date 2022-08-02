/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of srat.dat, Tue Aug  2 11:52:54 2022
 *
 * ACPI Data Table [SRAT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SRAT"    [System Resource Affinity Table]
[004h 0004   4]                 Table Length : 00000370
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : 1B
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   4]               Table Revision : 00000001
[028h 0040   8]                     Reserved : 0000000000000000

[030h 0048   1]                Subtable Type : 01 [Memory Affinity]
[031h 0049   1]                       Length : 28

[032h 0050   4]             Proximity Domain : 00000000
[036h 0054   2]                    Reserved1 : 0000
[038h 0056   8]                 Base Address : 0000000088300000
[040h 0064   8]               Address Length : 0000000000100000
[048h 0072   4]                    Reserved2 : 00000000
[04Ch 0076   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
[050h 0080   8]                    Reserved3 : 0000000000000000

[058h 0088   1]                Subtable Type : 01 [Memory Affinity]
[059h 0089   1]                       Length : 28

[05Ah 0090   4]             Proximity Domain : 00000000
[05Eh 0094   2]                    Reserved1 : 0000
[060h 0096   8]                 Base Address : 0000000090000000
[068h 0104   8]               Address Length : 0000000070000000
[070h 0112   4]                    Reserved2 : 00000000
[074h 0116   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
[078h 0120   8]                    Reserved3 : 0000000000000000

[080h 0128   1]                Subtable Type : 01 [Memory Affinity]
[081h 0129   1]                       Length : 28

[082h 0130   4]             Proximity Domain : 00000000
[086h 0134   2]                    Reserved1 : 0000
[088h 0136   8]                 Base Address : 0000080000000000
[090h 0144   8]               Address Length : 0000000080000000
[098h 0152   4]                    Reserved2 : 00000000
[09Ch 0156   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
[0A0h 0160   8]                    Reserved3 : 0000000000000000

[0A8h 0168   1]                Subtable Type : 01 [Memory Affinity]
[0A9h 0169   1]                       Length : 28

[0AAh 0170   4]             Proximity Domain : 00000000
[0AEh 0174   2]                    Reserved1 : 0000
[0B0h 0176   8]                 Base Address : 0000080100000000
[0B8h 0184   8]               Address Length : 0000000700000000
[0C0h 0192   4]                    Reserved2 : 00000000
[0C4h 0196   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
                               Hot Pluggable : 0
                                Non-Volatile : 0
[0C8h 0200   8]                    Reserved3 : 0000000000000000

[0D0h 0208   1]                Subtable Type : 03 [GICC Affinity]
[0D1h 0209   1]                       Length : 12

[0D2h 0210   4]             Proximity Domain : 00000000
[0D6h 0214   4]           Acpi Processor UID : 00000800
[0DAh 0218   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[0DEh 0222   4]                 Clock Domain : 00000000

[0E2h 0226   1]                Subtable Type : 03 [GICC Affinity]
[0E3h 0227   1]                       Length : 12

[0E4h 0228   4]             Proximity Domain : 00000000
[0E8h 0232   4]           Acpi Processor UID : 00000801
[0ECh 0236   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[0F0h 0240   4]                 Clock Domain : 00000000

[0F4h 0244   1]                Subtable Type : 03 [GICC Affinity]
[0F5h 0245   1]                       Length : 12

[0F6h 0246   4]             Proximity Domain : 00000000
[0FAh 0250   4]           Acpi Processor UID : 00000900
[0FEh 0254   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[102h 0258   4]                 Clock Domain : 00000000

[106h 0262   1]                Subtable Type : 03 [GICC Affinity]
[107h 0263   1]                       Length : 12

[108h 0264   4]             Proximity Domain : 00000000
[10Ch 0268   4]           Acpi Processor UID : 00000901
[110h 0272   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[114h 0276   4]                 Clock Domain : 00000000

[118h 0280   1]                Subtable Type : 03 [GICC Affinity]
[119h 0281   1]                       Length : 12

[11Ah 0282   4]             Proximity Domain : 00000000
[11Eh 0286   4]           Acpi Processor UID : 00000E00
[122h 0290   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[126h 0294   4]                 Clock Domain : 00000000

[12Ah 0298   1]                Subtable Type : 03 [GICC Affinity]
[12Bh 0299   1]                       Length : 12

[12Ch 0300   4]             Proximity Domain : 00000000
[130h 0304   4]           Acpi Processor UID : 00000E01
[134h 0308   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[138h 0312   4]                 Clock Domain : 00000000

[13Ch 0316   1]                Subtable Type : 03 [GICC Affinity]
[13Dh 0317   1]                       Length : 12

[13Eh 0318   4]             Proximity Domain : 00000000
[142h 0322   4]           Acpi Processor UID : 00000F00
[146h 0326   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[14Ah 0330   4]                 Clock Domain : 00000000

[14Eh 0334   1]                Subtable Type : 03 [GICC Affinity]
[14Fh 0335   1]                       Length : 12

[150h 0336   4]             Proximity Domain : 00000000
[154h 0340   4]           Acpi Processor UID : 00000F01
[158h 0344   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[15Ch 0348   4]                 Clock Domain : 00000000

[160h 0352   1]                Subtable Type : 03 [GICC Affinity]
[161h 0353   1]                       Length : 12

[162h 0354   4]             Proximity Domain : 00000000
[166h 0358   4]           Acpi Processor UID : 00001000
[16Ah 0362   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[16Eh 0366   4]                 Clock Domain : 00000000

[172h 0370   1]                Subtable Type : 03 [GICC Affinity]
[173h 0371   1]                       Length : 12

[174h 0372   4]             Proximity Domain : 00000000
[178h 0376   4]           Acpi Processor UID : 00001001
[17Ch 0380   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[180h 0384   4]                 Clock Domain : 00000000

[184h 0388   1]                Subtable Type : 03 [GICC Affinity]
[185h 0389   1]                       Length : 12

[186h 0390   4]             Proximity Domain : 00000000
[18Ah 0394   4]           Acpi Processor UID : 00001100
[18Eh 0398   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[192h 0402   4]                 Clock Domain : 00000000

[196h 0406   1]                Subtable Type : 03 [GICC Affinity]
[197h 0407   1]                       Length : 12

[198h 0408   4]             Proximity Domain : 00000000
[19Ch 0412   4]           Acpi Processor UID : 00001101
[1A0h 0416   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1A4h 0420   4]                 Clock Domain : 00000000

[1A8h 0424   1]                Subtable Type : 03 [GICC Affinity]
[1A9h 0425   1]                       Length : 12

[1AAh 0426   4]             Proximity Domain : 00000000
[1AEh 0430   4]           Acpi Processor UID : 00001600
[1B2h 0434   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1B6h 0438   4]                 Clock Domain : 00000000

[1BAh 0442   1]                Subtable Type : 03 [GICC Affinity]
[1BBh 0443   1]                       Length : 12

[1BCh 0444   4]             Proximity Domain : 00000000
[1C0h 0448   4]           Acpi Processor UID : 00001601
[1C4h 0452   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1C8h 0456   4]                 Clock Domain : 00000000

[1CCh 0460   1]                Subtable Type : 03 [GICC Affinity]
[1CDh 0461   1]                       Length : 12

[1CEh 0462   4]             Proximity Domain : 00000000
[1D2h 0466   4]           Acpi Processor UID : 00001700
[1D6h 0470   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1DAh 0474   4]                 Clock Domain : 00000000

[1DEh 0478   1]                Subtable Type : 03 [GICC Affinity]
[1DFh 0479   1]                       Length : 12

[1E0h 0480   4]             Proximity Domain : 00000000
[1E4h 0484   4]           Acpi Processor UID : 00001701
[1E8h 0488   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1ECh 0492   4]                 Clock Domain : 00000000

[1F0h 0496   1]                Subtable Type : 03 [GICC Affinity]
[1F1h 0497   1]                       Length : 12

[1F2h 0498   4]             Proximity Domain : 00000000
[1F6h 0502   4]           Acpi Processor UID : 00001800
[1FAh 0506   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[1FEh 0510   4]                 Clock Domain : 00000000

[202h 0514   1]                Subtable Type : 03 [GICC Affinity]
[203h 0515   1]                       Length : 12

[204h 0516   4]             Proximity Domain : 00000000
[208h 0520   4]           Acpi Processor UID : 00001801
[20Ch 0524   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[210h 0528   4]                 Clock Domain : 00000000

[214h 0532   1]                Subtable Type : 03 [GICC Affinity]
[215h 0533   1]                       Length : 12

[216h 0534   4]             Proximity Domain : 00000000
[21Ah 0538   4]           Acpi Processor UID : 00001900
[21Eh 0542   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[222h 0546   4]                 Clock Domain : 00000000

[226h 0550   1]                Subtable Type : 03 [GICC Affinity]
[227h 0551   1]                       Length : 12

[228h 0552   4]             Proximity Domain : 00000000
[22Ch 0556   4]           Acpi Processor UID : 00001901
[230h 0560   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[234h 0564   4]                 Clock Domain : 00000000

[238h 0568   1]                Subtable Type : 03 [GICC Affinity]
[239h 0569   1]                       Length : 12

[23Ah 0570   4]             Proximity Domain : 00000000
[23Eh 0574   4]           Acpi Processor UID : 00001E00
[242h 0578   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[246h 0582   4]                 Clock Domain : 00000000

[24Ah 0586   1]                Subtable Type : 03 [GICC Affinity]
[24Bh 0587   1]                       Length : 12

[24Ch 0588   4]             Proximity Domain : 00000000
[250h 0592   4]           Acpi Processor UID : 00001E01
[254h 0596   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[258h 0600   4]                 Clock Domain : 00000000

[25Ch 0604   1]                Subtable Type : 03 [GICC Affinity]
[25Dh 0605   1]                       Length : 12

[25Eh 0606   4]             Proximity Domain : 00000000
[262h 0610   4]           Acpi Processor UID : 00001F00
[266h 0614   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[26Ah 0618   4]                 Clock Domain : 00000000

[26Eh 0622   1]                Subtable Type : 03 [GICC Affinity]
[26Fh 0623   1]                       Length : 12

[270h 0624   4]             Proximity Domain : 00000000
[274h 0628   4]           Acpi Processor UID : 00001F01
[278h 0632   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[27Ch 0636   4]                 Clock Domain : 00000000

[280h 0640   1]                Subtable Type : 03 [GICC Affinity]
[281h 0641   1]                       Length : 12

[282h 0642   4]             Proximity Domain : 00000000
[286h 0646   4]           Acpi Processor UID : 00002000
[28Ah 0650   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[28Eh 0654   4]                 Clock Domain : 00000000

[292h 0658   1]                Subtable Type : 03 [GICC Affinity]
[293h 0659   1]                       Length : 12

[294h 0660   4]             Proximity Domain : 00000000
[298h 0664   4]           Acpi Processor UID : 00002001
[29Ch 0668   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2A0h 0672   4]                 Clock Domain : 00000000

[2A4h 0676   1]                Subtable Type : 03 [GICC Affinity]
[2A5h 0677   1]                       Length : 12

[2A6h 0678   4]             Proximity Domain : 00000000
[2AAh 0682   4]           Acpi Processor UID : 00002100
[2AEh 0686   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2B2h 0690   4]                 Clock Domain : 00000000

[2B6h 0694   1]                Subtable Type : 03 [GICC Affinity]
[2B7h 0695   1]                       Length : 12

[2B8h 0696   4]             Proximity Domain : 00000000
[2BCh 0700   4]           Acpi Processor UID : 00002101
[2C0h 0704   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2C4h 0708   4]                 Clock Domain : 00000000

[2C8h 0712   1]                Subtable Type : 03 [GICC Affinity]
[2C9h 0713   1]                       Length : 12

[2CAh 0714   4]             Proximity Domain : 00000000
[2CEh 0718   4]           Acpi Processor UID : 00002600
[2D2h 0722   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2D6h 0726   4]                 Clock Domain : 00000000

[2DAh 0730   1]                Subtable Type : 03 [GICC Affinity]
[2DBh 0731   1]                       Length : 12

[2DCh 0732   4]             Proximity Domain : 00000000
[2E0h 0736   4]           Acpi Processor UID : 00002601
[2E4h 0740   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2E8h 0744   4]                 Clock Domain : 00000000

[2ECh 0748   1]                Subtable Type : 03 [GICC Affinity]
[2EDh 0749   1]                       Length : 12

[2EEh 0750   4]             Proximity Domain : 00000000
[2F2h 0754   4]           Acpi Processor UID : 00002700
[2F6h 0758   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[2FAh 0762   4]                 Clock Domain : 00000000

[2FEh 0766   1]                Subtable Type : 03 [GICC Affinity]
[2FFh 0767   1]                       Length : 12

[300h 0768   4]             Proximity Domain : 00000000
[304h 0772   4]           Acpi Processor UID : 00002701
[308h 0776   4]        Flags (decoded below) : 00000001
                                     Enabled : 1
[30Ch 0780   4]                 Clock Domain : 00000000

[310h 0784   1]                Subtable Type : 04 [GIC ITS Affinity]
[311h 0785   1]                       Length : 0C

[312h 0786   4]             Proximity Domain : 00000000
[316h 0790   2]                     Reserved : 0000
[318h 0792   4]                       ITS ID : 00000000

[31Ch 0796   1]                Subtable Type : 04 [GIC ITS Affinity]
[31Dh 0797   1]                       Length : 0C

[31Eh 0798   4]             Proximity Domain : 00000000
[322h 0802   2]                     Reserved : 0000
[324h 0804   4]                       ITS ID : 00000001

[328h 0808   1]                Subtable Type : 04 [GIC ITS Affinity]
[329h 0809   1]                       Length : 0C

[32Ah 0810   4]             Proximity Domain : 00000000
[32Eh 0814   2]                     Reserved : 0000
[330h 0816   4]                       ITS ID : 00000002

[334h 0820   1]                Subtable Type : 04 [GIC ITS Affinity]
[335h 0821   1]                       Length : 0C

[336h 0822   4]             Proximity Domain : 00000000
[33Ah 0826   2]                     Reserved : 0000
[33Ch 0828   4]                       ITS ID : 00000003

[340h 0832   1]                Subtable Type : 04 [GIC ITS Affinity]
[341h 0833   1]                       Length : 0C

[342h 0834   4]             Proximity Domain : 00000000
[346h 0838   2]                     Reserved : 0000
[348h 0840   4]                       ITS ID : 00000004

[34Ch 0844   1]                Subtable Type : 04 [GIC ITS Affinity]
[34Dh 0845   1]                       Length : 0C

[34Eh 0846   4]             Proximity Domain : 00000000
[352h 0850   2]                     Reserved : 0000
[354h 0852   4]                       ITS ID : 00000005

[358h 0856   1]                Subtable Type : 04 [GIC ITS Affinity]
[359h 0857   1]                       Length : 0C

[35Ah 0858   4]             Proximity Domain : 00000000
[35Eh 0862   2]                     Reserved : 0000
[360h 0864   4]                       ITS ID : 00000006

[364h 0868   1]                Subtable Type : 04 [GIC ITS Affinity]
[365h 0869   1]                       Length : 0C

[366h 0870   4]             Proximity Domain : 00000000
[36Ah 0874   2]                     Reserved : 0000
[36Ch 0876   4]                       ITS ID : 00000007

Raw Table Data: Length 880 (0x370)

    0000: 53 52 41 54 70 03 00 00 03 1B 41 6D 70 65 72 65  // SRATp.....Ampere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 01 28 00 00 00 00 00 00 00 00 30 88 00 00 00 00  // .(........0.....
    0040: 00 00 10 00 00 00 00 00 00 00 00 00 01 00 00 00  // ................
    0050: 00 00 00 00 00 00 00 00 01 28 00 00 00 00 00 00  // .........(......
    0060: 00 00 00 90 00 00 00 00 00 00 00 70 00 00 00 00  // ...........p....
    0070: 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    0080: 01 28 00 00 00 00 00 00 00 00 00 00 00 08 00 00  // .(..............
    0090: 00 00 00 80 00 00 00 00 00 00 00 00 01 00 00 00  // ................
    00A0: 00 00 00 00 00 00 00 00 01 28 00 00 00 00 00 00  // .........(......
    00B0: 00 00 00 00 01 08 00 00 00 00 00 00 07 00 00 00  // ................
    00C0: 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    00D0: 03 12 00 00 00 00 00 08 00 00 01 00 00 00 00 00  // ................
    00E0: 00 00 03 12 00 00 00 00 01 08 00 00 01 00 00 00  // ................
    00F0: 00 00 00 00 03 12 00 00 00 00 00 09 00 00 01 00  // ................
    0100: 00 00 00 00 00 00 03 12 00 00 00 00 01 09 00 00  // ................
    0110: 01 00 00 00 00 00 00 00 03 12 00 00 00 00 00 0E  // ................
    0120: 00 00 01 00 00 00 00 00 00 00 03 12 00 00 00 00  // ................
    0130: 01 0E 00 00 01 00 00 00 00 00 00 00 03 12 00 00  // ................
    0140: 00 00 00 0F 00 00 01 00 00 00 00 00 00 00 03 12  // ................
    0150: 00 00 00 00 01 0F 00 00 01 00 00 00 00 00 00 00  // ................
    0160: 03 12 00 00 00 00 00 10 00 00 01 00 00 00 00 00  // ................
    0170: 00 00 03 12 00 00 00 00 01 10 00 00 01 00 00 00  // ................
    0180: 00 00 00 00 03 12 00 00 00 00 00 11 00 00 01 00  // ................
    0190: 00 00 00 00 00 00 03 12 00 00 00 00 01 11 00 00  // ................
    01A0: 01 00 00 00 00 00 00 00 03 12 00 00 00 00 00 16  // ................
    01B0: 00 00 01 00 00 00 00 00 00 00 03 12 00 00 00 00  // ................
    01C0: 01 16 00 00 01 00 00 00 00 00 00 00 03 12 00 00  // ................
    01D0: 00 00 00 17 00 00 01 00 00 00 00 00 00 00 03 12  // ................
    01E0: 00 00 00 00 01 17 00 00 01 00 00 00 00 00 00 00  // ................
    01F0: 03 12 00 00 00 00 00 18 00 00 01 00 00 00 00 00  // ................
    0200: 00 00 03 12 00 00 00 00 01 18 00 00 01 00 00 00  // ................
    0210: 00 00 00 00 03 12 00 00 00 00 00 19 00 00 01 00  // ................
    0220: 00 00 00 00 00 00 03 12 00 00 00 00 01 19 00 00  // ................
    0230: 01 00 00 00 00 00 00 00 03 12 00 00 00 00 00 1E  // ................
    0240: 00 00 01 00 00 00 00 00 00 00 03 12 00 00 00 00  // ................
    0250: 01 1E 00 00 01 00 00 00 00 00 00 00 03 12 00 00  // ................
    0260: 00 00 00 1F 00 00 01 00 00 00 00 00 00 00 03 12  // ................
    0270: 00 00 00 00 01 1F 00 00 01 00 00 00 00 00 00 00  // ................
    0280: 03 12 00 00 00 00 00 20 00 00 01 00 00 00 00 00  // ....... ........
    0290: 00 00 03 12 00 00 00 00 01 20 00 00 01 00 00 00  // ......... ......
    02A0: 00 00 00 00 03 12 00 00 00 00 00 21 00 00 01 00  // ...........!....
    02B0: 00 00 00 00 00 00 03 12 00 00 00 00 01 21 00 00  // .............!..
    02C0: 01 00 00 00 00 00 00 00 03 12 00 00 00 00 00 26  // ...............&
    02D0: 00 00 01 00 00 00 00 00 00 00 03 12 00 00 00 00  // ................
    02E0: 01 26 00 00 01 00 00 00 00 00 00 00 03 12 00 00  // .&..............
    02F0: 00 00 00 27 00 00 01 00 00 00 00 00 00 00 03 12  // ...'............
    0300: 00 00 00 00 01 27 00 00 01 00 00 00 00 00 00 00  // .....'..........
    0310: 04 0C 00 00 00 00 00 00 00 00 00 00 04 0C 00 00  // ................
    0320: 00 00 00 00 01 00 00 00 04 0C 00 00 00 00 00 00  // ................
    0330: 02 00 00 00 04 0C 00 00 00 00 00 00 03 00 00 00  // ................
    0340: 04 0C 00 00 00 00 00 00 04 00 00 00 04 0C 00 00  // ................
    0350: 00 00 00 00 05 00 00 00 04 0C 00 00 00 00 00 00  // ................
    0360: 06 00 00 00 04 0C 00 00 00 00 00 00 07 00 00 00  // ................
