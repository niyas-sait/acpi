/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of spcr.dat, Tue Aug  2 11:54:14 2022
 *
 * ACPI Data Table [SPCR]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SPCR"    [Serial Port Console Redirection table]
[004h 0004   4]                 Table Length : 00000050
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : 9E
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   1]               Interface Type : 03
[025h 0037   3]                     Reserved : 000000

[028h 0040  12]         Serial Port Register : [Generic Address Structure]
[028h 0040   1]                     Space ID : 00 [SystemMemory]
[029h 0041   1]                    Bit Width : 20
[02Ah 0042   1]                   Bit Offset : 00
[02Bh 0043   1]         Encoded Access Width : 03 [DWord Access:32]
[02Ch 0044   8]                      Address : 0000100002600000

[034h 0052   1]               Interrupt Type : 08
[035h 0053   1]          PCAT-compatible IRQ : 00
[036h 0054   4]                    Interrupt : 00000062
[03Ah 0058   1]                    Baud Rate : 07
[03Bh 0059   1]                       Parity : 00
[03Ch 0060   1]                    Stop Bits : 01
[03Dh 0061   1]                 Flow Control : 00
[03Eh 0062   1]                Terminal Type : 02
[04Ch 0076   1]                     Reserved : 00
[040h 0064   2]                PCI Device ID : FFFF
[042h 0066   2]                PCI Vendor ID : FFFF
[044h 0068   1]                      PCI Bus : 00
[045h 0069   1]                   PCI Device : 00
[046h 0070   1]                 PCI Function : 00
[047h 0071   4]                    PCI Flags : 00000000
[04Bh 0075   1]                  PCI Segment : 00
[04Ch 0076   4]                     Reserved : 00000000

Raw Table Data: Length 80 (0x50)

    0000: 53 50 43 52 50 00 00 00 02 9E 41 6D 70 65 72 65  // SPCRP.....Ampere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 03 00 00 00 00 20 00 03 00 00 60 02  // ......... ....`.
    0030: 00 10 00 00 08 00 62 00 00 00 07 00 01 00 02 00  // ......b.........
    0040: FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00  // ................
