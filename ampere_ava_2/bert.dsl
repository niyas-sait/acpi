/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of bert.dat, Tue Aug  2 11:54:13 2022
 *
 * ACPI Data Table [BERT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BERT"    [Boot Error Record Table]
[004h 0004   4]                 Table Length : 00000030
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 22
[00Ah 0010   6]                       Oem ID : "Ampere"
[010h 0016   8]                 Oem Table ID : "Altra   "
[018h 0024   4]                 Oem Revision : 00000002
[01Ch 0028   4]              Asl Compiler ID : "AMP."
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036   4]     Boot Error Region Length : 00050000
[028h 0040   8]    Boot Error Region Address : 0000000088230000

Raw Table Data: Length 48 (0x30)

    0000: 42 45 52 54 30 00 00 00 01 22 41 6D 70 65 72 65  // BERT0...."Ampere
    0010: 41 6C 74 72 61 20 20 20 02 00 00 00 41 4D 50 2E  // Altra   ....AMP.
    0020: 13 00 00 01 00 00 05 00 00 00 23 88 00 00 00 00  // ..........#.....
