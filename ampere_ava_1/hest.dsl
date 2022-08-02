/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of hest.dat, Tue Aug  2 11:52:54 2022
 *
 * ACPI Data Table [HEST]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "HEST"    [Hardware Error Source Table]
[004h 0004   4]                 Table Length : 000001F4
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 7A
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 20201217

[024h 0036   4]           Error Source Count : 00000005

[028h 0040   2]                Subtable Type : 000A [Generic Hardware Error Source V2]
[02Ah 0042   2]                    Source Id : 0000
[02Ch 0044   2]            Related Source Id : FFFF
[02Eh 0046   1]                     Reserved : 00
[02Fh 0047   1]                      Enabled : 01
[030h 0048   4]       Records To Preallocate : 00000001
[034h 0052   4]      Max Sections Per Record : 00000001
[038h 0056   4]          Max Raw Data Length : 00001000

[03Ch 0060  12]         Error Status Address : [Generic Address Structure]
[03Ch 0060   1]                     Space ID : 00 [SystemMemory]
[03Dh 0061   1]                    Bit Width : 40
[03Eh 0062   1]                   Bit Offset : 00
[03Fh 0063   1]         Encoded Access Width : 04 [QWord Access:64]
[040h 0064   8]                      Address : 0000000088200000

[048h 0072  28]                       Notify : [Hardware Error Notification Structure]
[048h 0072   1]                  Notify Type : 03 [SCI]
[049h 0073   1]                Notify Length : 1C
[04Ah 0074   2]   Configuration Write Enable : 0000
[04Ch 0076   4]                 PollInterval : 00000BB8
[050h 0080   4]                       Vector : 00000000
[054h 0084   4]      Polling Threshold Value : 00000000
[058h 0088   4]     Polling Threshold Window : 00000000
[05Ch 0092   4]        Error Threshold Value : 00000000
[060h 0096   4]       Error Threshold Window : 00000000

[064h 0100   4]    Error Status Block Length : 00001000
[068h 0104  12]            Read Ack Register : [Generic Address Structure]
[068h 0104   1]                     Space ID : 00 [SystemMemory]
[069h 0105   1]                    Bit Width : 40
[06Ah 0106   1]                   Bit Offset : 00
[06Bh 0107   1]         Encoded Access Width : 04 [QWord Access:64]
[06Ch 0108   8]                      Address : 0000100000543010

[074h 0116   8]            Read Ack Preserve : 0000000000000000
[07Ch 0124   8]               Read Ack Write : 00000000B1D00000

[084h 0132   2]                Subtable Type : 000A [Generic Hardware Error Source V2]
[086h 0134   2]                    Source Id : 0001
[088h 0136   2]            Related Source Id : FFFF
[08Ah 0138   1]                     Reserved : 00
[08Bh 0139   1]                      Enabled : 01
[08Ch 0140   4]       Records To Preallocate : 00000001
[090h 0144   4]      Max Sections Per Record : 00000001
[094h 0148   4]          Max Raw Data Length : 00001000

[098h 0152  12]         Error Status Address : [Generic Address Structure]
[098h 0152   1]                     Space ID : 00 [SystemMemory]
[099h 0153   1]                    Bit Width : 40
[09Ah 0154   1]                   Bit Offset : 00
[09Bh 0155   1]         Encoded Access Width : 04 [QWord Access:64]
[09Ch 0156   8]                      Address : 0000000088200008

[0A4h 0164  28]                       Notify : [Hardware Error Notification Structure]
[0A4h 0164   1]                  Notify Type : 00 [Polled]
[0A5h 0165   1]                Notify Length : 1C
[0A6h 0166   2]   Configuration Write Enable : 0000
[0A8h 0168   4]                 PollInterval : 00000BB8
[0ACh 0172   4]                       Vector : 00000000
[0B0h 0176   4]      Polling Threshold Value : 00000000
[0B4h 0180   4]     Polling Threshold Window : 00000000
[0B8h 0184   4]        Error Threshold Value : 00000000
[0BCh 0188   4]       Error Threshold Window : 00000000

[0C0h 0192   4]    Error Status Block Length : 00001000
[0C4h 0196  12]            Read Ack Register : [Generic Address Structure]
[0C4h 0196   1]                     Space ID : 00 [SystemMemory]
[0C5h 0197   1]                    Bit Width : 40
[0C6h 0198   1]                   Bit Offset : 00
[0C7h 0199   1]         Encoded Access Width : 04 [QWord Access:64]
[0C8h 0200   8]                      Address : 0000100000543010

[0D0h 0208   8]            Read Ack Preserve : 0000000000000000
[0D8h 0216   8]               Read Ack Write : 00000000B1C00000

[0E0h 0224   2]                Subtable Type : 000A [Generic Hardware Error Source V2]
[0E2h 0226   2]                    Source Id : 0002
[0E4h 0228   2]            Related Source Id : FFFF
[0E6h 0230   1]                     Reserved : 00
[0E7h 0231   1]                      Enabled : 01
[0E8h 0232   4]       Records To Preallocate : 00000001
[0ECh 0236   4]      Max Sections Per Record : 00000001
[0F0h 0240   4]          Max Raw Data Length : 00001000

[0F4h 0244  12]         Error Status Address : [Generic Address Structure]
[0F4h 0244   1]                     Space ID : 00 [SystemMemory]
[0F5h 0245   1]                    Bit Width : 40
[0F6h 0246   1]                   Bit Offset : 00
[0F7h 0247   1]         Encoded Access Width : 04 [QWord Access:64]
[0F8h 0248   8]                      Address : 0000000088200010

[100h 0256  28]                       Notify : [Hardware Error Notification Structure]
[100h 0256   1]                  Notify Type : 03 [SCI]
[101h 0257   1]                Notify Length : 1C
[102h 0258   2]   Configuration Write Enable : 0000
[104h 0260   4]                 PollInterval : 00000BB8
[108h 0264   4]                       Vector : 00000000
[10Ch 0268   4]      Polling Threshold Value : 00000000
[110h 0272   4]     Polling Threshold Window : 00000000
[114h 0276   4]        Error Threshold Value : 00000000
[118h 0280   4]       Error Threshold Window : 00000000

[11Ch 0284   4]    Error Status Block Length : 00001000
[120h 0288  12]            Read Ack Register : [Generic Address Structure]
[120h 0288   1]                     Space ID : 00 [SystemMemory]
[121h 0289   1]                    Bit Width : 40
[122h 0290   1]                   Bit Offset : 00
[123h 0291   1]         Encoded Access Width : 04 [QWord Access:64]
[124h 0292   8]                      Address : 0000100000543010

[12Ch 0300   8]            Read Ack Preserve : 0000000000000000
[134h 0308   8]               Read Ack Write : 00000000B1F00000

[13Ch 0316   2]                Subtable Type : 000A [Generic Hardware Error Source V2]
[13Eh 0318   2]                    Source Id : 0006
[140h 0320   2]            Related Source Id : FFFF
[142h 0322   1]                     Reserved : 00
[143h 0323   1]                      Enabled : 01
[144h 0324   4]       Records To Preallocate : 00000001
[148h 0328   4]      Max Sections Per Record : 00000001
[14Ch 0332   4]          Max Raw Data Length : 00001000

[150h 0336  12]         Error Status Address : [Generic Address Structure]
[150h 0336   1]                     Space ID : 00 [SystemMemory]
[151h 0337   1]                    Bit Width : 40
[152h 0338   1]                   Bit Offset : 00
[153h 0339   1]         Encoded Access Width : 04 [QWord Access:64]
[154h 0340   8]                      Address : 0000000088200030

[15Ch 0348  28]                       Notify : [Hardware Error Notification Structure]
[15Ch 0348   1]                  Notify Type : 03 [SCI]
[15Dh 0349   1]                Notify Length : 1C
[15Eh 0350   2]   Configuration Write Enable : 0000
[160h 0352   4]                 PollInterval : 00000BB8
[164h 0356   4]                       Vector : 00000000
[168h 0360   4]      Polling Threshold Value : 00000000
[16Ch 0364   4]     Polling Threshold Window : 00000000
[170h 0368   4]        Error Threshold Value : 00000000
[174h 0372   4]       Error Threshold Window : 00000000

[178h 0376   4]    Error Status Block Length : 00001000
[17Ch 0380  12]            Read Ack Register : [Generic Address Structure]
[17Ch 0380   1]                     Space ID : 00 [SystemMemory]
[17Dh 0381   1]                    Bit Width : 40
[17Eh 0382   1]                   Bit Offset : 00
[17Fh 0383   1]         Encoded Access Width : 04 [QWord Access:64]
[180h 0384   8]                      Address : 0000100000543010

[188h 0392   8]            Read Ack Preserve : 0000000000000000
[190h 0400   8]               Read Ack Write : 00000000B1900000

[198h 0408   2]                Subtable Type : 000A [Generic Hardware Error Source V2]
[19Ah 0410   2]                    Source Id : 0007
[19Ch 0412   2]            Related Source Id : FFFF
[19Eh 0414   1]                     Reserved : 00
[19Fh 0415   1]                      Enabled : 01
[1A0h 0416   4]       Records To Preallocate : 00000001
[1A4h 0420   4]      Max Sections Per Record : 00000001
[1A8h 0424   4]          Max Raw Data Length : 00001000

[1ACh 0428  12]         Error Status Address : [Generic Address Structure]
[1ACh 0428   1]                     Space ID : 00 [SystemMemory]
[1ADh 0429   1]                    Bit Width : 40
[1AEh 0430   1]                   Bit Offset : 00
[1AFh 0431   1]         Encoded Access Width : 04 [QWord Access:64]
[1B0h 0432   8]                      Address : 0000000088200038

[1B8h 0440  28]                       Notify : [Hardware Error Notification Structure]
[1B8h 0440   1]                  Notify Type : 03 [SCI]
[1B9h 0441   1]                Notify Length : 1C
[1BAh 0442   2]   Configuration Write Enable : 0000
[1BCh 0444   4]                 PollInterval : 00000BB8
[1C0h 0448   4]                       Vector : 00000000
[1C4h 0452   4]      Polling Threshold Value : 00000000
[1C8h 0456   4]     Polling Threshold Window : 00000000
[1CCh 0460   4]        Error Threshold Value : 00000000
[1D0h 0464   4]       Error Threshold Window : 00000000

[1D4h 0468   4]    Error Status Block Length : 00001000
[1D8h 0472  12]            Read Ack Register : [Generic Address Structure]
[1D8h 0472   1]                     Space ID : 00 [SystemMemory]
[1D9h 0473   1]                    Bit Width : 40
[1DAh 0474   1]                   Bit Offset : 00
[1DBh 0475   1]         Encoded Access Width : 04 [QWord Access:64]
[1DCh 0476   8]                      Address : 0000100000543010

[1E4h 0484   8]            Read Ack Preserve : 0000000000000000
[1ECh 0492   8]               Read Ack Write : 00000000B1900001

Raw Table Data: Length 500 (0x1F4)

    0000: 48 45 53 54 F4 01 00 00 01 7A 41 6D 70 65 72 65  // HEST.....zAmpere
    0010: 41 6C 74 72 61 20 20 20 01 00 00 00 49 4E 54 4C  // Altra   ....INTL
    0020: 17 12 20 20 05 00 00 00 0A 00 00 00 FF FF 00 01  // ..  ............
    0030: 01 00 00 00 01 00 00 00 00 10 00 00 00 40 00 04  // .............@..
    0040: 00 00 20 88 00 00 00 00 03 1C 00 00 B8 0B 00 00  // .. .............
    0050: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0060: 00 00 00 00 00 10 00 00 00 40 00 04 10 30 54 00  // .........@...0T.
    0070: 00 10 00 00 00 00 00 00 00 00 00 00 00 00 D0 B1  // ................
    0080: 00 00 00 00 0A 00 01 00 FF FF 00 01 01 00 00 00  // ................
    0090: 01 00 00 00 00 10 00 00 00 40 00 04 08 00 20 88  // .........@.... .
    00A0: 00 00 00 00 00 1C 00 00 B8 0B 00 00 00 00 00 00  // ................
    00B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00C0: 00 10 00 00 00 40 00 04 10 30 54 00 00 10 00 00  // .....@...0T.....
    00D0: 00 00 00 00 00 00 00 00 00 00 C0 B1 00 00 00 00  // ................
    00E0: 0A 00 02 00 FF FF 00 01 01 00 00 00 01 00 00 00  // ................
    00F0: 00 10 00 00 00 40 00 04 10 00 20 88 00 00 00 00  // .....@.... .....
    0100: 03 1C 00 00 B8 0B 00 00 00 00 00 00 00 00 00 00  // ................
    0110: 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00  // ................
    0120: 00 40 00 04 10 30 54 00 00 10 00 00 00 00 00 00  // .@...0T.........
    0130: 00 00 00 00 00 00 F0 B1 00 00 00 00 0A 00 06 00  // ................
    0140: FF FF 00 01 01 00 00 00 01 00 00 00 00 10 00 00  // ................
    0150: 00 40 00 04 30 00 20 88 00 00 00 00 03 1C 00 00  // .@..0. .........
    0160: B8 0B 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0170: 00 00 00 00 00 00 00 00 00 10 00 00 00 40 00 04  // .............@..
    0180: 10 30 54 00 00 10 00 00 00 00 00 00 00 00 00 00  // .0T.............
    0190: 00 00 90 B1 00 00 00 00 0A 00 07 00 FF FF 00 01  // ................
    01A0: 01 00 00 00 01 00 00 00 00 10 00 00 00 40 00 04  // .............@..
    01B0: 38 00 20 88 00 00 00 00 03 1C 00 00 B8 0B 00 00  // 8. .............
    01C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    01D0: 00 00 00 00 00 10 00 00 00 40 00 04 10 30 54 00  // .........@...0T.
    01E0: 00 10 00 00 00 00 00 00 00 00 00 00 01 00 90 B1  // ................
    01F0: 00 00 00 00                                      // ....
