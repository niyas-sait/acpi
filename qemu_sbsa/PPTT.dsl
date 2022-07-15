/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of PPTT, Fri Jul  8 10:51:38 2022
 *
 * ACPI Data Table [PPTT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PPTT"    [Processor Properties Topology Table]
[004h 0004   4]                 Table Length : 000000F0
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : EF
[00Ah 0010   6]                       Oem ID : "LINARO"
[010h 0016   8]                 Oem Table ID : "SBSAQEMU"
[018h 0024   4]                 Oem Revision : 20200810
[01Ch 0028   4]              Asl Compiler ID : "LNRO"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   1]                Subtable Type : 00 [Processor Hierarchy Node]
[025h 0037   1]                       Length : 14
[026h 0038   2]                     Reserved : 0000
[028h 0040   4]        Flags (decoded below) : 00000011
                            Physical package : 1
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 1
[02Ch 0044   4]                       Parent : 00000000
[030h 0048   4]            ACPI Processor ID : 00000000
[034h 0052   4]      Private Resource Number : 00000000

[038h 0056   1]                Subtable Type : 01 [Cache Type]
[039h 0057   1]                       Length : 18
[03Ah 0058   2]                     Reserved : 0000
[03Ch 0060   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[040h 0064   4]          Next Level of Cache : 00000068
[044h 0068   4]                         Size : 00008000
[048h 0072   4]               Number of Sets : 00000100
[04Ch 0076   1]                Associativity : 02
[04Dh 0077   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[04Eh 0078   2]                    Line Size : 0040

[050h 0080   1]                Subtable Type : 01 [Cache Type]
[051h 0081   1]                       Length : 18
[052h 0082   2]                     Reserved : 0000
[054h 0084   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[058h 0088   4]          Next Level of Cache : 00000068
[05Ch 0092   4]                         Size : 00008000
[060h 0096   4]               Number of Sets : 00000100
[064h 0100   1]                Associativity : 02
[065h 0101   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[066h 0102   2]                    Line Size : 0040

[068h 0104   1]                Subtable Type : 01 [Cache Type]
[069h 0105   1]                       Length : 18
[06Ah 0106   2]                     Reserved : 0000
[06Ch 0108   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[070h 0112   4]          Next Level of Cache : 00000000
[074h 0116   4]                         Size : 00080000
[078h 0120   4]               Number of Sets : 00000400
[07Ch 0124   1]                Associativity : 08
[07Dh 0125   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[07Eh 0126   2]                    Line Size : 0040

[080h 0128   1]                Subtable Type : 00 [Processor Hierarchy Node]
[081h 0129   1]                       Length : 1C
[082h 0130   2]                     Reserved : 0000
[084h 0132   4]        Flags (decoded below) : 0000001A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 1
[088h 0136   4]                       Parent : 00000024
[08Ch 0140   4]            ACPI Processor ID : 00000000
[090h 0144   4]      Private Resource Number : 00000002
[094h 0148   4]             Private Resource : 00000038
[098h 0152   4]             Private Resource : 00000050

[09Ch 0156   1]                Subtable Type : 00 [Processor Hierarchy Node]
[09Dh 0157   1]                       Length : 1C
[09Eh 0158   2]                     Reserved : 0000
[0A0h 0160   4]        Flags (decoded below) : 0000001A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 1
[0A4h 0164   4]                       Parent : 00000024
[0A8h 0168   4]            ACPI Processor ID : 00000001
[0ACh 0172   4]      Private Resource Number : 00000002
[0B0h 0176   4]             Private Resource : 00000038
[0B4h 0180   4]             Private Resource : 00000050

[0B8h 0184   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0B9h 0185   1]                       Length : 1C
[0BAh 0186   2]                     Reserved : 0000
[0BCh 0188   4]        Flags (decoded below) : 0000001A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 1
[0C0h 0192   4]                       Parent : 00000024
[0C4h 0196   4]            ACPI Processor ID : 00000002
[0C8h 0200   4]      Private Resource Number : 00000002
[0CCh 0204   4]             Private Resource : 00000038
[0D0h 0208   4]             Private Resource : 00000050

[0D4h 0212   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0D5h 0213   1]                       Length : 1C
[0D6h 0214   2]                     Reserved : 0000
[0D8h 0216   4]        Flags (decoded below) : 0000001A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 1
[0DCh 0220   4]                       Parent : 00000024
[0E0h 0224   4]            ACPI Processor ID : 00000003
[0E4h 0228   4]      Private Resource Number : 00000002
[0E8h 0232   4]             Private Resource : 00000038
[0ECh 0236   4]             Private Resource : 00000050

Raw Table Data: Length 240 (0xF0)

    0000: 50 50 54 54 F0 00 00 00 02 EF 4C 49 4E 41 52 4F  // PPTT......LINARO
    0010: 53 42 53 41 51 45 4D 55 10 08 20 20 4C 4E 52 4F  // SBSAQEMU..  LNRO
    0020: 01 00 00 00 00 14 00 00 11 00 00 00 00 00 00 00  // ................
    0030: 00 00 00 00 00 00 00 00 01 18 00 00 7F 00 00 00  // ................
    0040: 68 00 00 00 00 80 00 00 00 01 00 00 02 02 40 00  // h.............@.
    0050: 01 18 00 00 5F 00 00 00 68 00 00 00 00 80 00 00  // ...._...h.......
    0060: 00 01 00 00 02 04 40 00 01 18 00 00 7F 00 00 00  // ......@.........
    0070: 00 00 00 00 00 00 08 00 00 04 00 00 08 0A 40 00  // ..............@.
    0080: 00 1C 00 00 1A 00 00 00 24 00 00 00 00 00 00 00  // ........$.......
    0090: 02 00 00 00 38 00 00 00 50 00 00 00 00 1C 00 00  // ....8...P.......
    00A0: 1A 00 00 00 24 00 00 00 01 00 00 00 02 00 00 00  // ....$...........
    00B0: 38 00 00 00 50 00 00 00 00 1C 00 00 1A 00 00 00  // 8...P...........
    00C0: 24 00 00 00 02 00 00 00 02 00 00 00 38 00 00 00  // $...........8...
    00D0: 50 00 00 00 00 1C 00 00 1A 00 00 00 24 00 00 00  // P...........$...
    00E0: 03 00 00 00 02 00 00 00 38 00 00 00 50 00 00 00  // ........8...P...
