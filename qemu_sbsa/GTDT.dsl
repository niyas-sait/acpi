/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of GTDT, Fri Jul  8 10:51:26 2022
 *
 * ACPI Data Table [GTDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "GTDT"    [Generic Timer Description Table]
[004h 0004   4]                 Table Length : 00000084
[008h 0008   1]                     Revision : 03
[009h 0009   1]                     Checksum : BC
[00Ah 0010   6]                       Oem ID : "LINARO"
[010h 0016   8]                 Oem Table ID : "SBSAQEMU"
[018h 0024   4]                 Oem Revision : 20200810
[01Ch 0028   4]              Asl Compiler ID : "LNRO"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   8]        Counter Block Address : FFFFFFFFFFFFFFFF
[02Ch 0044   4]                     Reserved : 00000000

[030h 0048   4]         Secure EL1 Interrupt : 0000001D
[034h 0052   4]    EL1 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[038h 0056   4]     Non-Secure EL1 Interrupt : 0000001E
[03Ch 0060   4]   NEL1 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[040h 0064   4]      Virtual Timer Interrupt : 0000001B
[044h 0068   4]     VT Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0

[048h 0072   4]     Non-Secure EL2 Interrupt : 0000001A
[04Ch 0076   4]   NEL2 Flags (decoded below) : 00000002
                                Trigger Mode : 0
                                    Polarity : 1
                                   Always On : 0
[050h 0080   8]   Counter Read Block Address : FFFFFFFFFFFFFFFF

[058h 0088   4]         Platform Timer Count : 00000001
[05Ch 0092   4]        Platform Timer Offset : 00000068
[060h 0096   4]       Virtual EL2 Timer GSIV : 00000000
[064h 0100   4]      Virtual EL2 Timer Flags : 00000000

[068h 0104   1]                Subtable Type : 01 [Generic Watchdog Timer]
[069h 0105   2]                       Length : 001C
[06Bh 0107   1]                     Reserved : 00
[06Ch 0108   8]        Refresh Frame Address : 0000000050010000
[074h 0116   8]        Control Frame Address : 0000000050011000
[07Ch 0124   4]              Timer Interrupt : 00000030
[080h 0128   4]  Timer Flags (decoded below) : 00000000
                                Trigger Mode : 0
                                    Polarity : 0
                                    Security : 0

Raw Table Data: Length 132 (0x84)

    0000: 47 54 44 54 84 00 00 00 03 BC 4C 49 4E 41 52 4F  // GTDT......LINARO
    0010: 53 42 53 41 51 45 4D 55 10 08 20 20 4C 4E 52 4F  // SBSAQEMU..  LNRO
    0020: 01 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00  // ................
    0030: 1D 00 00 00 02 00 00 00 1E 00 00 00 02 00 00 00  // ................
    0040: 1B 00 00 00 02 00 00 00 1A 00 00 00 02 00 00 00  // ................
    0050: FF FF FF FF FF FF FF FF 01 00 00 00 68 00 00 00  // ............h...
    0060: 00 00 00 00 00 00 00 00 01 1C 00 00 00 00 01 50  // ...............P
    0070: 00 00 00 00 00 10 01 50 00 00 00 00 30 00 00 00  // .......P....0...
    0080: 00 00 00 00                                      // ....
