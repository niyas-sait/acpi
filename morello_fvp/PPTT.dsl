/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of PPTT, Fri Jul 15 09:45:25 2022
 *
 * ACPI Data Table [PPTT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PPTT"    [Processor Properties Topology Table]
[004h 0004   4]                 Table Length : 00000154
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : F0
[00Ah 0010   6]                       Oem ID : "ARMLTD"
[010h 0016   8]                 Oem Table ID : "ARMLPPTT"
[018h 0024   4]                 Oem Revision : 00010000
[01Ch 0028   4]              Asl Compiler ID : "ARMH"
[020h 0032   4]        Asl Compiler Revision : 00010000


[024h 0036   1]                Subtable Type : 00 [Processor Hierarchy Node]
[025h 0037   1]                       Length : 18
[026h 0038   2]                     Reserved : 0000
[028h 0040   4]        Flags (decoded below) : 00000011
                            Physical package : 1
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 1
[02Ch 0044   4]                       Parent : 00000000
[030h 0048   4]            ACPI Processor ID : 00000000
[034h 0052   4]      Private Resource Number : 00000001
[038h 0056   4]             Private Resource : 0000013C

[03Ch 0060   1]                Subtable Type : 00 [Processor Hierarchy Node]
[03Dh 0061   1]                       Length : 18
[03Eh 0062   2]                     Reserved : 0000
[040h 0064   4]        Flags (decoded below) : 00000010
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 1
[044h 0068   4]                       Parent : 00000024
[048h 0072   4]            ACPI Processor ID : 00000000
[04Ch 0076   4]      Private Resource Number : 00000001
[050h 0080   4]             Private Resource : 000000DC

[054h 0084   1]                Subtable Type : 00 [Processor Hierarchy Node]
[055h 0085   1]                       Length : 18
[056h 0086   2]                     Reserved : 0000
[058h 0088   4]        Flags (decoded below) : 00000010
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 1
[05Ch 0092   4]                       Parent : 00000024
[060h 0096   4]            ACPI Processor ID : 00000000
[064h 0100   4]      Private Resource Number : 00000001
[068h 0104   4]             Private Resource : 000000DC

[06Ch 0108   1]                Subtable Type : 00 [Processor Hierarchy Node]
[06Dh 0109   1]                       Length : 1C
[06Eh 0110   2]                     Reserved : 0000
[070h 0112   4]        Flags (decoded below) : 0000000A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 0
[074h 0116   4]                       Parent : 0000003C
[078h 0120   4]            ACPI Processor ID : 00000000
[07Ch 0124   4]      Private Resource Number : 00000002
[080h 0128   4]             Private Resource : 000000F4
[084h 0132   4]             Private Resource : 0000010C

[088h 0136   1]                Subtable Type : 00 [Processor Hierarchy Node]
[089h 0137   1]                       Length : 1C
[08Ah 0138   2]                     Reserved : 0000
[08Ch 0140   4]        Flags (decoded below) : 0000000A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 0
[090h 0144   4]                       Parent : 0000003C
[094h 0148   4]            ACPI Processor ID : 00000001
[098h 0152   4]      Private Resource Number : 00000002
[09Ch 0156   4]             Private Resource : 000000F4
[0A0h 0160   4]             Private Resource : 0000010C

[0A4h 0164   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0A5h 0165   1]                       Length : 1C
[0A6h 0166   2]                     Reserved : 0000
[0A8h 0168   4]        Flags (decoded below) : 0000000A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 0
[0ACh 0172   4]                       Parent : 00000054
[0B0h 0176   4]            ACPI Processor ID : 00000002
[0B4h 0180   4]      Private Resource Number : 00000002
[0B8h 0184   4]             Private Resource : 000000F4
[0BCh 0188   4]             Private Resource : 0000010C

[0C0h 0192   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0C1h 0193   1]                       Length : 1C
[0C2h 0194   2]                     Reserved : 0000
[0C4h 0196   4]        Flags (decoded below) : 0000000A
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 1
                    Identical Implementation : 0
[0C8h 0200   4]                       Parent : 00000054
[0CCh 0204   4]            ACPI Processor ID : 00000003
[0D0h 0208   4]      Private Resource Number : 00000002
[0D4h 0212   4]             Private Resource : 000000F4
[0D8h 0216   4]             Private Resource : 0000010C

[0DCh 0220   1]                Subtable Type : 01 [Cache Type]
[0DDh 0221   1]                       Length : 18
[0DEh 0222   2]                     Reserved : 0000
[0E0h 0224   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[0E4h 0228   4]          Next Level of Cache : 00000000
[0E8h 0232   4]                         Size : 00100000
[0ECh 0236   4]               Number of Sets : 00000800
[0F0h 0240   1]                Associativity : 08
[0F1h 0241   1]                   Attributes : 08
                             Allocation Type : 0
                                  Cache Type : 2
                                Write Policy : 0
[0F2h 0242   2]                    Line Size : 0040

[0F4h 0244   1]                Subtable Type : 01 [Cache Type]
[0F5h 0245   1]                       Length : 18
[0F6h 0246   2]                     Reserved : 0000
[0F8h 0248   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[0FCh 0252   4]          Next Level of Cache : 00000124
[100h 0256   4]                         Size : 00010000
[104h 0260   4]               Number of Sets : 00000100
[108h 0264   1]                Associativity : 04
[109h 0265   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[10Ah 0266   2]                    Line Size : 0040

[10Ch 0268   1]                Subtable Type : 01 [Cache Type]
[10Dh 0269   1]                       Length : 18
[10Eh 0270   2]                     Reserved : 0000
[110h 0272   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[114h 0276   4]          Next Level of Cache : 00000124
[118h 0280   4]                         Size : 00010000
[11Ch 0284   4]               Number of Sets : 00000100
[120h 0288   1]                Associativity : 04
[121h 0289   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[122h 0290   2]                    Line Size : 0040

[124h 0292   1]                Subtable Type : 01 [Cache Type]
[125h 0293   1]                       Length : 18
[126h 0294   2]                     Reserved : 0000
[128h 0296   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[12Ch 0300   4]          Next Level of Cache : 00000000
[130h 0304   4]                         Size : 00100000
[134h 0308   4]               Number of Sets : 00000800
[138h 0312   1]                Associativity : 08
[139h 0313   1]                   Attributes : 08
                             Allocation Type : 0
                                  Cache Type : 2
                                Write Policy : 0
[13Ah 0314   2]                    Line Size : 0040

[13Ch 0316   1]                Subtable Type : 01 [Cache Type]
[13Dh 0317   1]                       Length : 18
[13Eh 0318   2]                     Reserved : 0000
[140h 0320   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[144h 0324   4]          Next Level of Cache : 00000000
[148h 0328   4]                         Size : 00800000
[14Ch 0332   4]               Number of Sets : 00001000
[150h 0336   1]                Associativity : 10
[151h 0337   1]                   Attributes : 08
                             Allocation Type : 0
                                  Cache Type : 2
                                Write Policy : 0
[152h 0338   2]                    Line Size : 0040

Raw Table Data: Length 340 (0x154)

    0000: 50 50 54 54 54 01 00 00 02 F0 41 52 4D 4C 54 44  // PPTTT.....ARMLTD
    0010: 41 52 4D 4C 50 50 54 54 00 00 01 00 41 52 4D 48  // ARMLPPTT....ARMH
    0020: 00 00 01 00 00 18 00 00 11 00 00 00 00 00 00 00  // ................
    0030: 00 00 00 00 01 00 00 00 3C 01 00 00 00 18 00 00  // ........<.......
    0040: 10 00 00 00 24 00 00 00 00 00 00 00 01 00 00 00  // ....$...........
    0050: DC 00 00 00 00 18 00 00 10 00 00 00 24 00 00 00  // ............$...
    0060: 00 00 00 00 01 00 00 00 DC 00 00 00 00 1C 00 00  // ................
    0070: 0A 00 00 00 3C 00 00 00 00 00 00 00 02 00 00 00  // ....<...........
    0080: F4 00 00 00 0C 01 00 00 00 1C 00 00 0A 00 00 00  // ................
    0090: 3C 00 00 00 01 00 00 00 02 00 00 00 F4 00 00 00  // <...............
    00A0: 0C 01 00 00 00 1C 00 00 0A 00 00 00 54 00 00 00  // ............T...
    00B0: 02 00 00 00 02 00 00 00 F4 00 00 00 0C 01 00 00  // ................
    00C0: 00 1C 00 00 0A 00 00 00 54 00 00 00 03 00 00 00  // ........T.......
    00D0: 02 00 00 00 F4 00 00 00 0C 01 00 00 01 18 00 00  // ................
    00E0: 7F 00 00 00 00 00 00 00 00 00 10 00 00 08 00 00  // ................
    00F0: 08 08 40 00 01 18 00 00 7F 00 00 00 24 01 00 00  // ..@.........$...
    0100: 00 00 01 00 00 01 00 00 04 04 40 00 01 18 00 00  // ..........@.....
    0110: 7F 00 00 00 24 01 00 00 00 00 01 00 00 01 00 00  // ....$...........
    0120: 04 02 40 00 01 18 00 00 7F 00 00 00 00 00 00 00  // ..@.............
    0130: 00 00 10 00 00 08 00 00 08 08 40 00 01 18 00 00  // ..........@.....
    0140: 7F 00 00 00 00 00 00 00 00 00 80 00 00 10 00 00  // ................
    0150: 10 08 40 00                                      // ..@.
