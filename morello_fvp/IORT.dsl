/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of IORT, Fri Jul 15 09:45:25 2022
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 00000104
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : F4
[00Ah 0010   6]                       Oem ID : "ARMLTD"
[010h 0016   8]                 Oem Table ID : "ARMLIORT"
[018h 0024   4]                 Oem Revision : 00010000
[01Ch 0028   4]              Asl Compiler ID : "ARMH"
[020h 0032   4]        Asl Compiler Revision : 00010000

[024h 0036   4]                   Node Count : 00000004
[028h 0040   4]                  Node Offset : 00000030
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   1]                         Type : 00
[031h 0049   2]                       Length : 0018
[033h 0051   1]                     Revision : 00
[034h 0052   4]                     Reserved : 00000000
[038h 0056   4]                Mapping Count : 00000000
[03Ch 0060   4]               Mapping Offset : 00000000

[040h 0064   4]                     ItsCount : 00000001
[044h 0068   4]                  Identifiers : 00000000

[048h 0072   1]                         Type : 00
[049h 0073   2]                       Length : 0018
[04Bh 0075   1]                     Revision : 00
[04Ch 0076   4]                     Reserved : 00000000
[050h 0080   4]                Mapping Count : 00000000
[054h 0084   4]               Mapping Offset : 00000000

[058h 0088   4]                     ItsCount : 00000001
[05Ch 0092   4]                  Identifiers : 00000001

[060h 0096   1]                         Type : 02
[061h 0097   2]                       Length : 0038
[063h 0099   1]                     Revision : 01
[064h 0100   4]                     Reserved : 00000000
[068h 0104   4]                Mapping Count : 00000001
[06Ch 0108   4]               Mapping Offset : 00000024

[070h 0112   8]            Memory Properties : [IORT Memory Access Properties]
[070h 0112   4]              Cache Coherency : 00000001
[074h 0116   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[075h 0117   2]                     Reserved : 0000
[077h 0119   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[078h 0120   4]                ATS Attribute : 00000001
[07Ch 0124   4]           PCI Segment Number : 00000000
[080h 0128   1]            Memory Size Limit : 2A
[081h 0129   3]                     Reserved : 000000

[084h 0132   4]                   Input base : 00000000
[088h 0136   4]                     ID Count : 0000FFFF
[08Ch 0140   4]                  Output Base : 00000000
[090h 0144   4]             Output Reference : 00000098
[094h 0148   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[098h 0152   1]                         Type : 04
[099h 0153   2]                       Length : 006C
[09Bh 0155   1]                     Revision : 02
[09Ch 0156   4]                     Reserved : 00000000
[0A0h 0160   4]                Mapping Count : 00000002
[0A4h 0164   4]               Mapping Offset : 00000044

[0A8h 0168   8]                 Base Address : 000000004F400000
[0B0h 0176   4]        Flags (decoded below) : 00000001
                             COHACC Override : 1
                               HTTU Override : 0
                      Proximity Domain Valid : 0
[0B4h 0180   4]                     Reserved : 00000000
[0B8h 0184   8]                VATOS Address : 0000000000000000
[0C0h 0192   4]                        Model : 00000000
[0C4h 0196   4]                   Event GSIV : 0000010B
[0C8h 0200   4]                     PRI GSIV : 00000000
[0CCh 0204   4]                    GERR GSIV : 0000010D
[0D0h 0208   4]                    Sync GSIV : 0000010C
[0D4h 0212   4]             Proximity Domain : 00000000
[0D8h 0216   4]      Device ID Mapping Index : 00000001

[0DCh 0220   4]                   Input base : 00000000
[0E0h 0224   4]                     ID Count : 0000FFFF
[0E4h 0228   4]                  Output Base : 00000000
[0E8h 0232   4]             Output Reference : 00000048
[0ECh 0236   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[0F0h 0240   4]                   Input base : 00000000
[0F4h 0244   4]                     ID Count : 00000001
[0F8h 0248   4]                  Output Base : 00000000
[0FCh 0252   4]             Output Reference : 00000030
[100h 0256   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

Raw Table Data: Length 260 (0x104)

    0000: 49 4F 52 54 04 01 00 00 00 F4 41 52 4D 4C 54 44  // IORT......ARMLTD
    0010: 41 52 4D 4C 49 4F 52 54 00 00 01 00 41 52 4D 48  // ARMLIORT....ARMH
    0020: 00 00 01 00 04 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 00 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 01 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00  // ................
    0050: 00 00 00 00 00 00 00 00 01 00 00 00 01 00 00 00  // ................
    0060: 02 38 00 01 00 00 00 00 01 00 00 00 24 00 00 00  // .8..........$...
    0070: 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  // ................
    0080: 2A 00 00 00 00 00 00 00 FF FF 00 00 00 00 00 00  // *...............
    0090: 98 00 00 00 00 00 00 00 04 6C 00 02 00 00 00 00  // .........l......
    00A0: 02 00 00 00 44 00 00 00 00 00 40 4F 00 00 00 00  // ....D.....@O....
    00B0: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    00C0: 00 00 00 00 0B 01 00 00 00 00 00 00 0D 01 00 00  // ................
    00D0: 0C 01 00 00 00 00 00 00 01 00 00 00 00 00 00 00  // ................
    00E0: FF FF 00 00 00 00 00 00 48 00 00 00 00 00 00 00  // ........H.......
    00F0: 00 00 00 00 01 00 00 00 00 00 00 00 30 00 00 00  // ............0...
    0100: 01 00 00 00                                      // ....
