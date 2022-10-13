/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of pptt.dat, Thu Oct 13 16:12:57 2022
 *
 * ACPI Data Table [PPTT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "PPTT"    [Processor Properties Topology Table]
[004h 0004   4]                 Table Length : 00000694
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : B2
[00Ah 0010   6]                       Oem ID : "NXP   "
[010h 0016   8]                 Oem Table ID : "LX2160  "
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 20151124


[024h 0036   1]                Subtable Type : 00 [Processor Hierarchy Node]
[025h 0037   1]                       Length : 18
[026h 0038   2]                     Reserved : 0000
[028h 0040   4]        Flags (decoded below) : 00000001
                            Physical package : 1
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[02Ch 0044   4]                       Parent : 00000000
[030h 0048   4]            ACPI Processor ID : 00000000
[034h 0052   4]      Private Resource Number : 00000001
[038h 0056   4]             Private Resource : 0000003C

[03Ch 0060   1]                Subtable Type : 01 [Cache Type]
[03Dh 0061   1]                       Length : 18
[03Eh 0062   2]                     Reserved : 0000
[040h 0064   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[044h 0068   4]          Next Level of Cache : 00000000
[048h 0072   4]                         Size : 00800000
[04Ch 0076   4]               Number of Sets : 00002000
[050h 0080   1]                Associativity : 10
[051h 0081   1]                   Attributes : 08
                             Allocation Type : 0
                                  Cache Type : 2
                                Write Policy : 0
[052h 0082   2]                    Line Size : 0040

[054h 0084   1]                Subtable Type : 00 [Processor Hierarchy Node]
[055h 0085   1]                       Length : 18
[056h 0086   2]                     Reserved : 0000
[058h 0088   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[05Ch 0092   4]                       Parent : 00000024
[060h 0096   4]            ACPI Processor ID : 00000000
[064h 0100   4]      Private Resource Number : 00000001
[068h 0104   4]             Private Resource : 0000006C

[06Ch 0108   1]                Subtable Type : 01 [Cache Type]
[06Dh 0109   1]                       Length : 18
[06Eh 0110   2]                     Reserved : 0000
[070h 0112   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[074h 0116   4]          Next Level of Cache : 00000000
[078h 0120   4]                         Size : 00100000
[07Ch 0124   4]               Number of Sets : 00000400
[080h 0128   1]                Associativity : 10
[081h 0129   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[082h 0130   2]                    Line Size : 0040

[084h 0132   1]                Subtable Type : 00 [Processor Hierarchy Node]
[085h 0133   1]                       Length : 1C
[086h 0134   2]                     Reserved : 0000
[088h 0136   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[08Ch 0140   4]                       Parent : 00000054
[090h 0144   4]            ACPI Processor ID : 00000000
[094h 0148   4]      Private Resource Number : 00000002
[098h 0152   4]             Private Resource : 000000A0
[09Ch 0156   4]             Private Resource : 000000B8

[0A0h 0160   1]                Subtable Type : 01 [Cache Type]
[0A1h 0161   1]                       Length : 18
[0A2h 0162   2]                     Reserved : 0000
[0A4h 0164   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[0A8h 0168   4]          Next Level of Cache : 00000000
[0ACh 0172   4]                         Size : 00008000
[0B0h 0176   4]               Number of Sets : 00000080
[0B4h 0180   1]                Associativity : 02
[0B5h 0181   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[0B6h 0182   2]                    Line Size : 0040

[0B8h 0184   1]                Subtable Type : 01 [Cache Type]
[0B9h 0185   1]                       Length : 18
[0BAh 0186   2]                     Reserved : 0000
[0BCh 0188   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[0C0h 0192   4]          Next Level of Cache : 00000000
[0C4h 0196   4]                         Size : 0000C000
[0C8h 0200   4]               Number of Sets : 000000C0
[0CCh 0204   1]                Associativity : 03
[0CDh 0205   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[0CEh 0206   2]                    Line Size : 0040

[0D0h 0208   1]                Subtable Type : 00 [Processor Hierarchy Node]
[0D1h 0209   1]                       Length : 1C
[0D2h 0210   2]                     Reserved : 0000
[0D4h 0212   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[0D8h 0216   4]                       Parent : 00000054
[0DCh 0220   4]            ACPI Processor ID : 00000001
[0E0h 0224   4]      Private Resource Number : 00000002
[0E4h 0228   4]             Private Resource : 000000EC
[0E8h 0232   4]             Private Resource : 00000104

[0ECh 0236   1]                Subtable Type : 01 [Cache Type]
[0EDh 0237   1]                       Length : 18
[0EEh 0238   2]                     Reserved : 0000
[0F0h 0240   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[0F4h 0244   4]          Next Level of Cache : 00000000
[0F8h 0248   4]                         Size : 00008000
[0FCh 0252   4]               Number of Sets : 00000080
[100h 0256   1]                Associativity : 02
[101h 0257   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[102h 0258   2]                    Line Size : 0040

[104h 0260   1]                Subtable Type : 01 [Cache Type]
[105h 0261   1]                       Length : 18
[106h 0262   2]                     Reserved : 0000
[108h 0264   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[10Ch 0268   4]          Next Level of Cache : 00000000
[110h 0272   4]                         Size : 0000C000
[114h 0276   4]               Number of Sets : 000000C0
[118h 0280   1]                Associativity : 03
[119h 0281   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[11Ah 0282   2]                    Line Size : 0040

[11Ch 0284   1]                Subtable Type : 00 [Processor Hierarchy Node]
[11Dh 0285   1]                       Length : 18
[11Eh 0286   2]                     Reserved : 0000
[120h 0288   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[124h 0292   4]                       Parent : 00000024
[128h 0296   4]            ACPI Processor ID : 00000000
[12Ch 0300   4]      Private Resource Number : 00000001
[130h 0304   4]             Private Resource : 00000134

[134h 0308   1]                Subtable Type : 01 [Cache Type]
[135h 0309   1]                       Length : 18
[136h 0310   2]                     Reserved : 0000
[138h 0312   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[13Ch 0316   4]          Next Level of Cache : 00000000
[140h 0320   4]                         Size : 00100000
[144h 0324   4]               Number of Sets : 00000400
[148h 0328   1]                Associativity : 10
[149h 0329   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[14Ah 0330   2]                    Line Size : 0040

[14Ch 0332   1]                Subtable Type : 00 [Processor Hierarchy Node]
[14Dh 0333   1]                       Length : 1C
[14Eh 0334   2]                     Reserved : 0000
[150h 0336   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[154h 0340   4]                       Parent : 0000011C
[158h 0344   4]            ACPI Processor ID : 00000002
[15Ch 0348   4]      Private Resource Number : 00000002
[160h 0352   4]             Private Resource : 00000168
[164h 0356   4]             Private Resource : 00000180

[168h 0360   1]                Subtable Type : 01 [Cache Type]
[169h 0361   1]                       Length : 18
[16Ah 0362   2]                     Reserved : 0000
[16Ch 0364   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[170h 0368   4]          Next Level of Cache : 00000000
[174h 0372   4]                         Size : 00008000
[178h 0376   4]               Number of Sets : 00000080
[17Ch 0380   1]                Associativity : 02
[17Dh 0381   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[17Eh 0382   2]                    Line Size : 0040

[180h 0384   1]                Subtable Type : 01 [Cache Type]
[181h 0385   1]                       Length : 18
[182h 0386   2]                     Reserved : 0000
[184h 0388   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[188h 0392   4]          Next Level of Cache : 00000000
[18Ch 0396   4]                         Size : 0000C000
[190h 0400   4]               Number of Sets : 000000C0
[194h 0404   1]                Associativity : 03
[195h 0405   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[196h 0406   2]                    Line Size : 0040

[198h 0408   1]                Subtable Type : 00 [Processor Hierarchy Node]
[199h 0409   1]                       Length : 1C
[19Ah 0410   2]                     Reserved : 0000
[19Ch 0412   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[1A0h 0416   4]                       Parent : 0000011C
[1A4h 0420   4]            ACPI Processor ID : 00000003
[1A8h 0424   4]      Private Resource Number : 00000002
[1ACh 0428   4]             Private Resource : 000001B4
[1B0h 0432   4]             Private Resource : 000001CC

[1B4h 0436   1]                Subtable Type : 01 [Cache Type]
[1B5h 0437   1]                       Length : 18
[1B6h 0438   2]                     Reserved : 0000
[1B8h 0440   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[1BCh 0444   4]          Next Level of Cache : 00000000
[1C0h 0448   4]                         Size : 00008000
[1C4h 0452   4]               Number of Sets : 00000080
[1C8h 0456   1]                Associativity : 02
[1C9h 0457   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[1CAh 0458   2]                    Line Size : 0040

[1CCh 0460   1]                Subtable Type : 01 [Cache Type]
[1CDh 0461   1]                       Length : 18
[1CEh 0462   2]                     Reserved : 0000
[1D0h 0464   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[1D4h 0468   4]          Next Level of Cache : 00000000
[1D8h 0472   4]                         Size : 0000C000
[1DCh 0476   4]               Number of Sets : 000000C0
[1E0h 0480   1]                Associativity : 03
[1E1h 0481   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[1E2h 0482   2]                    Line Size : 0040

[1E4h 0484   1]                Subtable Type : 00 [Processor Hierarchy Node]
[1E5h 0485   1]                       Length : 18
[1E6h 0486   2]                     Reserved : 0000
[1E8h 0488   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[1ECh 0492   4]                       Parent : 00000024
[1F0h 0496   4]            ACPI Processor ID : 00000000
[1F4h 0500   4]      Private Resource Number : 00000001
[1F8h 0504   4]             Private Resource : 000001FC

[1FCh 0508   1]                Subtable Type : 01 [Cache Type]
[1FDh 0509   1]                       Length : 18
[1FEh 0510   2]                     Reserved : 0000
[200h 0512   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[204h 0516   4]          Next Level of Cache : 00000000
[208h 0520   4]                         Size : 00100000
[20Ch 0524   4]               Number of Sets : 00000400
[210h 0528   1]                Associativity : 10
[211h 0529   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[212h 0530   2]                    Line Size : 0040

[214h 0532   1]                Subtable Type : 00 [Processor Hierarchy Node]
[215h 0533   1]                       Length : 1C
[216h 0534   2]                     Reserved : 0000
[218h 0536   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[21Ch 0540   4]                       Parent : 000001E4
[220h 0544   4]            ACPI Processor ID : 00000004
[224h 0548   4]      Private Resource Number : 00000002
[228h 0552   4]             Private Resource : 00000230
[22Ch 0556   4]             Private Resource : 00000248

[230h 0560   1]                Subtable Type : 01 [Cache Type]
[231h 0561   1]                       Length : 18
[232h 0562   2]                     Reserved : 0000
[234h 0564   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[238h 0568   4]          Next Level of Cache : 00000000
[23Ch 0572   4]                         Size : 00008000
[240h 0576   4]               Number of Sets : 00000080
[244h 0580   1]                Associativity : 02
[245h 0581   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[246h 0582   2]                    Line Size : 0040

[248h 0584   1]                Subtable Type : 01 [Cache Type]
[249h 0585   1]                       Length : 18
[24Ah 0586   2]                     Reserved : 0000
[24Ch 0588   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[250h 0592   4]          Next Level of Cache : 00000000
[254h 0596   4]                         Size : 0000C000
[258h 0600   4]               Number of Sets : 000000C0
[25Ch 0604   1]                Associativity : 03
[25Dh 0605   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[25Eh 0606   2]                    Line Size : 0040

[260h 0608   1]                Subtable Type : 00 [Processor Hierarchy Node]
[261h 0609   1]                       Length : 1C
[262h 0610   2]                     Reserved : 0000
[264h 0612   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[268h 0616   4]                       Parent : 000001E4
[26Ch 0620   4]            ACPI Processor ID : 00000005
[270h 0624   4]      Private Resource Number : 00000002
[274h 0628   4]             Private Resource : 0000027C
[278h 0632   4]             Private Resource : 00000294

[27Ch 0636   1]                Subtable Type : 01 [Cache Type]
[27Dh 0637   1]                       Length : 18
[27Eh 0638   2]                     Reserved : 0000
[280h 0640   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[284h 0644   4]          Next Level of Cache : 00000000
[288h 0648   4]                         Size : 00008000
[28Ch 0652   4]               Number of Sets : 00000080
[290h 0656   1]                Associativity : 02
[291h 0657   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[292h 0658   2]                    Line Size : 0040

[294h 0660   1]                Subtable Type : 01 [Cache Type]
[295h 0661   1]                       Length : 18
[296h 0662   2]                     Reserved : 0000
[298h 0664   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[29Ch 0668   4]          Next Level of Cache : 00000000
[2A0h 0672   4]                         Size : 0000C000
[2A4h 0676   4]               Number of Sets : 000000C0
[2A8h 0680   1]                Associativity : 03
[2A9h 0681   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[2AAh 0682   2]                    Line Size : 0040

[2ACh 0684   1]                Subtable Type : 00 [Processor Hierarchy Node]
[2ADh 0685   1]                       Length : 18
[2AEh 0686   2]                     Reserved : 0000
[2B0h 0688   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[2B4h 0692   4]                       Parent : 00000024
[2B8h 0696   4]            ACPI Processor ID : 00000000
[2BCh 0700   4]      Private Resource Number : 00000001
[2C0h 0704   4]             Private Resource : 000002C4

[2C4h 0708   1]                Subtable Type : 01 [Cache Type]
[2C5h 0709   1]                       Length : 18
[2C6h 0710   2]                     Reserved : 0000
[2C8h 0712   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[2CCh 0716   4]          Next Level of Cache : 00000000
[2D0h 0720   4]                         Size : 00100000
[2D4h 0724   4]               Number of Sets : 00000400
[2D8h 0728   1]                Associativity : 10
[2D9h 0729   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[2DAh 0730   2]                    Line Size : 0040

[2DCh 0732   1]                Subtable Type : 00 [Processor Hierarchy Node]
[2DDh 0733   1]                       Length : 1C
[2DEh 0734   2]                     Reserved : 0000
[2E0h 0736   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[2E4h 0740   4]                       Parent : 000002AC
[2E8h 0744   4]            ACPI Processor ID : 00000006
[2ECh 0748   4]      Private Resource Number : 00000002
[2F0h 0752   4]             Private Resource : 000002F8
[2F4h 0756   4]             Private Resource : 00000310

[2F8h 0760   1]                Subtable Type : 01 [Cache Type]
[2F9h 0761   1]                       Length : 18
[2FAh 0762   2]                     Reserved : 0000
[2FCh 0764   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[300h 0768   4]          Next Level of Cache : 00000000
[304h 0772   4]                         Size : 00008000
[308h 0776   4]               Number of Sets : 00000080
[30Ch 0780   1]                Associativity : 02
[30Dh 0781   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[30Eh 0782   2]                    Line Size : 0040

[310h 0784   1]                Subtable Type : 01 [Cache Type]
[311h 0785   1]                       Length : 18
[312h 0786   2]                     Reserved : 0000
[314h 0788   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[318h 0792   4]          Next Level of Cache : 00000000
[31Ch 0796   4]                         Size : 0000C000
[320h 0800   4]               Number of Sets : 000000C0
[324h 0804   1]                Associativity : 03
[325h 0805   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[326h 0806   2]                    Line Size : 0040

[328h 0808   1]                Subtable Type : 00 [Processor Hierarchy Node]
[329h 0809   1]                       Length : 1C
[32Ah 0810   2]                     Reserved : 0000
[32Ch 0812   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[330h 0816   4]                       Parent : 000002AC
[334h 0820   4]            ACPI Processor ID : 00000007
[338h 0824   4]      Private Resource Number : 00000002
[33Ch 0828   4]             Private Resource : 00000344
[340h 0832   4]             Private Resource : 0000035C

[344h 0836   1]                Subtable Type : 01 [Cache Type]
[345h 0837   1]                       Length : 18
[346h 0838   2]                     Reserved : 0000
[348h 0840   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[34Ch 0844   4]          Next Level of Cache : 00000000
[350h 0848   4]                         Size : 00008000
[354h 0852   4]               Number of Sets : 00000080
[358h 0856   1]                Associativity : 02
[359h 0857   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[35Ah 0858   2]                    Line Size : 0040

[35Ch 0860   1]                Subtable Type : 01 [Cache Type]
[35Dh 0861   1]                       Length : 18
[35Eh 0862   2]                     Reserved : 0000
[360h 0864   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[364h 0868   4]          Next Level of Cache : 00000000
[368h 0872   4]                         Size : 0000C000
[36Ch 0876   4]               Number of Sets : 000000C0
[370h 0880   1]                Associativity : 03
[371h 0881   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[372h 0882   2]                    Line Size : 0040

[374h 0884   1]                Subtable Type : 00 [Processor Hierarchy Node]
[375h 0885   1]                       Length : 18
[376h 0886   2]                     Reserved : 0000
[378h 0888   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[37Ch 0892   4]                       Parent : 00000024
[380h 0896   4]            ACPI Processor ID : 00000000
[384h 0900   4]      Private Resource Number : 00000001
[388h 0904   4]             Private Resource : 0000038C

[38Ch 0908   1]                Subtable Type : 01 [Cache Type]
[38Dh 0909   1]                       Length : 18
[38Eh 0910   2]                     Reserved : 0000
[390h 0912   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[394h 0916   4]          Next Level of Cache : 00000000
[398h 0920   4]                         Size : 00100000
[39Ch 0924   4]               Number of Sets : 00000400
[3A0h 0928   1]                Associativity : 10
[3A1h 0929   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[3A2h 0930   2]                    Line Size : 0040

[3A4h 0932   1]                Subtable Type : 00 [Processor Hierarchy Node]
[3A5h 0933   1]                       Length : 1C
[3A6h 0934   2]                     Reserved : 0000
[3A8h 0936   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[3ACh 0940   4]                       Parent : 00000374
[3B0h 0944   4]            ACPI Processor ID : 00000008
[3B4h 0948   4]      Private Resource Number : 00000002
[3B8h 0952   4]             Private Resource : 000003C0
[3BCh 0956   4]             Private Resource : 000003D8

[3C0h 0960   1]                Subtable Type : 01 [Cache Type]
[3C1h 0961   1]                       Length : 18
[3C2h 0962   2]                     Reserved : 0000
[3C4h 0964   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[3C8h 0968   4]          Next Level of Cache : 00000000
[3CCh 0972   4]                         Size : 00008000
[3D0h 0976   4]               Number of Sets : 00000080
[3D4h 0980   1]                Associativity : 02
[3D5h 0981   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[3D6h 0982   2]                    Line Size : 0040

[3D8h 0984   1]                Subtable Type : 01 [Cache Type]
[3D9h 0985   1]                       Length : 18
[3DAh 0986   2]                     Reserved : 0000
[3DCh 0988   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[3E0h 0992   4]          Next Level of Cache : 00000000
[3E4h 0996   4]                         Size : 0000C000
[3E8h 1000   4]               Number of Sets : 000000C0
[3ECh 1004   1]                Associativity : 03
[3EDh 1005   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[3EEh 1006   2]                    Line Size : 0040

[3F0h 1008   1]                Subtable Type : 00 [Processor Hierarchy Node]
[3F1h 1009   1]                       Length : 1C
[3F2h 1010   2]                     Reserved : 0000
[3F4h 1012   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[3F8h 1016   4]                       Parent : 00000374
[3FCh 1020   4]            ACPI Processor ID : 00000009
[400h 1024   4]      Private Resource Number : 00000002
[404h 1028   4]             Private Resource : 0000040C
[408h 1032   4]             Private Resource : 00000424

[40Ch 1036   1]                Subtable Type : 01 [Cache Type]
[40Dh 1037   1]                       Length : 18
[40Eh 1038   2]                     Reserved : 0000
[410h 1040   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[414h 1044   4]          Next Level of Cache : 00000000
[418h 1048   4]                         Size : 00008000
[41Ch 1052   4]               Number of Sets : 00000080
[420h 1056   1]                Associativity : 02
[421h 1057   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[422h 1058   2]                    Line Size : 0040

[424h 1060   1]                Subtable Type : 01 [Cache Type]
[425h 1061   1]                       Length : 18
[426h 1062   2]                     Reserved : 0000
[428h 1064   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[42Ch 1068   4]          Next Level of Cache : 00000000
[430h 1072   4]                         Size : 0000C000
[434h 1076   4]               Number of Sets : 000000C0
[438h 1080   1]                Associativity : 03
[439h 1081   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[43Ah 1082   2]                    Line Size : 0040

[43Ch 1084   1]                Subtable Type : 00 [Processor Hierarchy Node]
[43Dh 1085   1]                       Length : 18
[43Eh 1086   2]                     Reserved : 0000
[440h 1088   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[444h 1092   4]                       Parent : 00000024
[448h 1096   4]            ACPI Processor ID : 00000000
[44Ch 1100   4]      Private Resource Number : 00000001
[450h 1104   4]             Private Resource : 00000454

[454h 1108   1]                Subtable Type : 01 [Cache Type]
[455h 1109   1]                       Length : 18
[456h 1110   2]                     Reserved : 0000
[458h 1112   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[45Ch 1116   4]          Next Level of Cache : 00000000
[460h 1120   4]                         Size : 00100000
[464h 1124   4]               Number of Sets : 00000400
[468h 1128   1]                Associativity : 10
[469h 1129   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[46Ah 1130   2]                    Line Size : 0040

[46Ch 1132   1]                Subtable Type : 00 [Processor Hierarchy Node]
[46Dh 1133   1]                       Length : 1C
[46Eh 1134   2]                     Reserved : 0000
[470h 1136   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[474h 1140   4]                       Parent : 0000043C
[478h 1144   4]            ACPI Processor ID : 0000000A
[47Ch 1148   4]      Private Resource Number : 00000002
[480h 1152   4]             Private Resource : 00000488
[484h 1156   4]             Private Resource : 000004A0

[488h 1160   1]                Subtable Type : 01 [Cache Type]
[489h 1161   1]                       Length : 18
[48Ah 1162   2]                     Reserved : 0000
[48Ch 1164   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[490h 1168   4]          Next Level of Cache : 00000000
[494h 1172   4]                         Size : 00008000
[498h 1176   4]               Number of Sets : 00000080
[49Ch 1180   1]                Associativity : 02
[49Dh 1181   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[49Eh 1182   2]                    Line Size : 0040

[4A0h 1184   1]                Subtable Type : 01 [Cache Type]
[4A1h 1185   1]                       Length : 18
[4A2h 1186   2]                     Reserved : 0000
[4A4h 1188   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[4A8h 1192   4]          Next Level of Cache : 00000000
[4ACh 1196   4]                         Size : 0000C000
[4B0h 1200   4]               Number of Sets : 000000C0
[4B4h 1204   1]                Associativity : 03
[4B5h 1205   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[4B6h 1206   2]                    Line Size : 0040

[4B8h 1208   1]                Subtable Type : 00 [Processor Hierarchy Node]
[4B9h 1209   1]                       Length : 1C
[4BAh 1210   2]                     Reserved : 0000
[4BCh 1212   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[4C0h 1216   4]                       Parent : 0000043C
[4C4h 1220   4]            ACPI Processor ID : 0000000B
[4C8h 1224   4]      Private Resource Number : 00000002
[4CCh 1228   4]             Private Resource : 000004D4
[4D0h 1232   4]             Private Resource : 000004EC

[4D4h 1236   1]                Subtable Type : 01 [Cache Type]
[4D5h 1237   1]                       Length : 18
[4D6h 1238   2]                     Reserved : 0000
[4D8h 1240   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[4DCh 1244   4]          Next Level of Cache : 00000000
[4E0h 1248   4]                         Size : 00008000
[4E4h 1252   4]               Number of Sets : 00000080
[4E8h 1256   1]                Associativity : 02
[4E9h 1257   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[4EAh 1258   2]                    Line Size : 0040

[4ECh 1260   1]                Subtable Type : 01 [Cache Type]
[4EDh 1261   1]                       Length : 18
[4EEh 1262   2]                     Reserved : 0000
[4F0h 1264   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[4F4h 1268   4]          Next Level of Cache : 00000000
[4F8h 1272   4]                         Size : 0000C000
[4FCh 1276   4]               Number of Sets : 000000C0
[500h 1280   1]                Associativity : 03
[501h 1281   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[502h 1282   2]                    Line Size : 0040

[504h 1284   1]                Subtable Type : 00 [Processor Hierarchy Node]
[505h 1285   1]                       Length : 18
[506h 1286   2]                     Reserved : 0000
[508h 1288   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[50Ch 1292   4]                       Parent : 00000024
[510h 1296   4]            ACPI Processor ID : 00000000
[514h 1300   4]      Private Resource Number : 00000001
[518h 1304   4]             Private Resource : 0000051C

[51Ch 1308   1]                Subtable Type : 01 [Cache Type]
[51Dh 1309   1]                       Length : 18
[51Eh 1310   2]                     Reserved : 0000
[520h 1312   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[524h 1316   4]          Next Level of Cache : 00000000
[528h 1320   4]                         Size : 00100000
[52Ch 1324   4]               Number of Sets : 00000400
[530h 1328   1]                Associativity : 10
[531h 1329   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[532h 1330   2]                    Line Size : 0040

[534h 1332   1]                Subtable Type : 00 [Processor Hierarchy Node]
[535h 1333   1]                       Length : 1C
[536h 1334   2]                     Reserved : 0000
[538h 1336   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[53Ch 1340   4]                       Parent : 00000504
[540h 1344   4]            ACPI Processor ID : 0000000C
[544h 1348   4]      Private Resource Number : 00000002
[548h 1352   4]             Private Resource : 00000550
[54Ch 1356   4]             Private Resource : 00000568

[550h 1360   1]                Subtable Type : 01 [Cache Type]
[551h 1361   1]                       Length : 18
[552h 1362   2]                     Reserved : 0000
[554h 1364   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[558h 1368   4]          Next Level of Cache : 00000000
[55Ch 1372   4]                         Size : 00008000
[560h 1376   4]               Number of Sets : 00000080
[564h 1380   1]                Associativity : 02
[565h 1381   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[566h 1382   2]                    Line Size : 0040

[568h 1384   1]                Subtable Type : 01 [Cache Type]
[569h 1385   1]                       Length : 18
[56Ah 1386   2]                     Reserved : 0000
[56Ch 1388   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[570h 1392   4]          Next Level of Cache : 00000000
[574h 1396   4]                         Size : 0000C000
[578h 1400   4]               Number of Sets : 000000C0
[57Ch 1404   1]                Associativity : 03
[57Dh 1405   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[57Eh 1406   2]                    Line Size : 0040

[580h 1408   1]                Subtable Type : 00 [Processor Hierarchy Node]
[581h 1409   1]                       Length : 1C
[582h 1410   2]                     Reserved : 0000
[584h 1412   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[588h 1416   4]                       Parent : 00000504
[58Ch 1420   4]            ACPI Processor ID : 0000000D
[590h 1424   4]      Private Resource Number : 00000002
[594h 1428   4]             Private Resource : 0000059C
[598h 1432   4]             Private Resource : 000005B4

[59Ch 1436   1]                Subtable Type : 01 [Cache Type]
[59Dh 1437   1]                       Length : 18
[59Eh 1438   2]                     Reserved : 0000
[5A0h 1440   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[5A4h 1444   4]          Next Level of Cache : 00000000
[5A8h 1448   4]                         Size : 00008000
[5ACh 1452   4]               Number of Sets : 00000080
[5B0h 1456   1]                Associativity : 02
[5B1h 1457   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[5B2h 1458   2]                    Line Size : 0040

[5B4h 1460   1]                Subtable Type : 01 [Cache Type]
[5B5h 1461   1]                       Length : 18
[5B6h 1462   2]                     Reserved : 0000
[5B8h 1464   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[5BCh 1468   4]          Next Level of Cache : 00000000
[5C0h 1472   4]                         Size : 0000C000
[5C4h 1476   4]               Number of Sets : 000000C0
[5C8h 1480   1]                Associativity : 03
[5C9h 1481   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[5CAh 1482   2]                    Line Size : 0040

[5CCh 1484   1]                Subtable Type : 00 [Processor Hierarchy Node]
[5CDh 1485   1]                       Length : 18
[5CEh 1486   2]                     Reserved : 0000
[5D0h 1488   4]        Flags (decoded below) : 00000000
                            Physical package : 0
                     ACPI Processor ID valid : 0
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[5D4h 1492   4]                       Parent : 00000024
[5D8h 1496   4]            ACPI Processor ID : 00000000
[5DCh 1500   4]      Private Resource Number : 00000001
[5E0h 1504   4]             Private Resource : 000005E4

[5E4h 1508   1]                Subtable Type : 01 [Cache Type]
[5E5h 1509   1]                       Length : 18
[5E6h 1510   2]                     Reserved : 0000
[5E8h 1512   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[5ECh 1516   4]          Next Level of Cache : 00000000
[5F0h 1520   4]                         Size : 00100000
[5F4h 1524   4]               Number of Sets : 00000400
[5F8h 1528   1]                Associativity : 10
[5F9h 1529   1]                   Attributes : 0A
                             Allocation Type : 2
                                  Cache Type : 2
                                Write Policy : 0
[5FAh 1530   2]                    Line Size : 0040

[5FCh 1532   1]                Subtable Type : 00 [Processor Hierarchy Node]
[5FDh 1533   1]                       Length : 1C
[5FEh 1534   2]                     Reserved : 0000
[600h 1536   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[604h 1540   4]                       Parent : 000005CC
[608h 1544   4]            ACPI Processor ID : 0000000E
[60Ch 1548   4]      Private Resource Number : 00000002
[610h 1552   4]             Private Resource : 00000618
[614h 1556   4]             Private Resource : 00000630

[618h 1560   1]                Subtable Type : 01 [Cache Type]
[619h 1561   1]                       Length : 18
[61Ah 1562   2]                     Reserved : 0000
[61Ch 1564   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[620h 1568   4]          Next Level of Cache : 00000000
[624h 1572   4]                         Size : 00008000
[628h 1576   4]               Number of Sets : 00000080
[62Ch 1580   1]                Associativity : 02
[62Dh 1581   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[62Eh 1582   2]                    Line Size : 0040

[630h 1584   1]                Subtable Type : 01 [Cache Type]
[631h 1585   1]                       Length : 18
[632h 1586   2]                     Reserved : 0000
[634h 1588   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[638h 1592   4]          Next Level of Cache : 00000000
[63Ch 1596   4]                         Size : 0000C000
[640h 1600   4]               Number of Sets : 000000C0
[644h 1604   1]                Associativity : 03
[645h 1605   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[646h 1606   2]                    Line Size : 0040

[648h 1608   1]                Subtable Type : 00 [Processor Hierarchy Node]
[649h 1609   1]                       Length : 1C
[64Ah 1610   2]                     Reserved : 0000
[64Ch 1612   4]        Flags (decoded below) : 00000002
                            Physical package : 0
                     ACPI Processor ID valid : 1
                       Processor is a thread : 0
                              Node is a leaf : 0
                    Identical Implementation : 0
[650h 1616   4]                       Parent : 000005CC
[654h 1620   4]            ACPI Processor ID : 0000000F
[658h 1624   4]      Private Resource Number : 00000002
[65Ch 1628   4]             Private Resource : 00000664
[660h 1632   4]             Private Resource : 0000067C

[664h 1636   1]                Subtable Type : 01 [Cache Type]
[665h 1637   1]                       Length : 18
[666h 1638   2]                     Reserved : 0000
[668h 1640   4]        Flags (decoded below) : 0000007F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 1
                             Line Size valid : 1
[66Ch 1644   4]          Next Level of Cache : 00000000
[670h 1648   4]                         Size : 00008000
[674h 1652   4]               Number of Sets : 00000080
[678h 1656   1]                Associativity : 02
[679h 1657   1]                   Attributes : 02
                             Allocation Type : 2
                                  Cache Type : 0
                                Write Policy : 0
[67Ah 1658   2]                    Line Size : 0040

[67Ch 1660   1]                Subtable Type : 01 [Cache Type]
[67Dh 1661   1]                       Length : 18
[67Eh 1662   2]                     Reserved : 0000
[680h 1664   4]        Flags (decoded below) : 0000005F
                                  Size valid : 1
                        Number of Sets valid : 1
                         Associativity valid : 1
                       Allocation Type valid : 1
                            Cache Type valid : 1
                          Write Policy valid : 0
                             Line Size valid : 1
[684h 1668   4]          Next Level of Cache : 00000000
[688h 1672   4]                         Size : 0000C000
[68Ch 1676   4]               Number of Sets : 000000C0
[690h 1680   1]                Associativity : 03
[691h 1681   1]                   Attributes : 04
                             Allocation Type : 0
                                  Cache Type : 1
                                Write Policy : 0
[692h 1682   2]                    Line Size : 0040

Raw Table Data: Length 1684 (0x694)

    0000: 50 50 54 54 94 06 00 00 01 B2 4E 58 50 20 20 20  // PPTT......NXP   
    0010: 4C 58 32 31 36 30 20 20 00 00 00 00 49 4E 54 4C  // LX2160  ....INTL
    0020: 24 11 15 20 00 18 00 00 01 00 00 00 00 00 00 00  // $.. ............
    0030: 00 00 00 00 01 00 00 00 3C 00 00 00 01 18 00 00  // ........<.......
    0040: 7F 00 00 00 00 00 00 00 00 00 80 00 00 20 00 00  // ............. ..
    0050: 10 08 40 00 00 18 00 00 00 00 00 00 24 00 00 00  // ..@.........$...
    0060: 00 00 00 00 01 00 00 00 6C 00 00 00 01 18 00 00  // ........l.......
    0070: 7F 00 00 00 00 00 00 00 00 00 10 00 00 04 00 00  // ................
    0080: 10 0A 40 00 00 1C 00 00 02 00 00 00 54 00 00 00  // ..@.........T...
    0090: 00 00 00 00 02 00 00 00 A0 00 00 00 B8 00 00 00  // ................
    00A0: 01 18 00 00 7F 00 00 00 00 00 00 00 00 80 00 00  // ................
    00B0: 80 00 00 00 02 02 40 00 01 18 00 00 5F 00 00 00  // ......@....._...
    00C0: 00 00 00 00 00 C0 00 00 C0 00 00 00 03 04 40 00  // ..............@.
    00D0: 00 1C 00 00 02 00 00 00 54 00 00 00 01 00 00 00  // ........T.......
    00E0: 02 00 00 00 EC 00 00 00 04 01 00 00 01 18 00 00  // ................
    00F0: 7F 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00  // ................
    0100: 02 02 40 00 01 18 00 00 5F 00 00 00 00 00 00 00  // ..@....._.......
    0110: 00 C0 00 00 C0 00 00 00 03 04 40 00 00 18 00 00  // ..........@.....
    0120: 00 00 00 00 24 00 00 00 00 00 00 00 01 00 00 00  // ....$...........
    0130: 34 01 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // 4...............
    0140: 00 00 10 00 00 04 00 00 10 0A 40 00 00 1C 00 00  // ..........@.....
    0150: 02 00 00 00 1C 01 00 00 02 00 00 00 02 00 00 00  // ................
    0160: 68 01 00 00 80 01 00 00 01 18 00 00 7F 00 00 00  // h...............
    0170: 00 00 00 00 00 80 00 00 80 00 00 00 02 02 40 00  // ..............@.
    0180: 01 18 00 00 5F 00 00 00 00 00 00 00 00 C0 00 00  // ...._...........
    0190: C0 00 00 00 03 04 40 00 00 1C 00 00 02 00 00 00  // ......@.........
    01A0: 1C 01 00 00 03 00 00 00 02 00 00 00 B4 01 00 00  // ................
    01B0: CC 01 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // ................
    01C0: 00 80 00 00 80 00 00 00 02 02 40 00 01 18 00 00  // ..........@.....
    01D0: 5F 00 00 00 00 00 00 00 00 C0 00 00 C0 00 00 00  // _...............
    01E0: 03 04 40 00 00 18 00 00 00 00 00 00 24 00 00 00  // ..@.........$...
    01F0: 00 00 00 00 01 00 00 00 FC 01 00 00 01 18 00 00  // ................
    0200: 7F 00 00 00 00 00 00 00 00 00 10 00 00 04 00 00  // ................
    0210: 10 0A 40 00 00 1C 00 00 02 00 00 00 E4 01 00 00  // ..@.............
    0220: 04 00 00 00 02 00 00 00 30 02 00 00 48 02 00 00  // ........0...H...
    0230: 01 18 00 00 7F 00 00 00 00 00 00 00 00 80 00 00  // ................
    0240: 80 00 00 00 02 02 40 00 01 18 00 00 5F 00 00 00  // ......@....._...
    0250: 00 00 00 00 00 C0 00 00 C0 00 00 00 03 04 40 00  // ..............@.
    0260: 00 1C 00 00 02 00 00 00 E4 01 00 00 05 00 00 00  // ................
    0270: 02 00 00 00 7C 02 00 00 94 02 00 00 01 18 00 00  // ....|...........
    0280: 7F 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00  // ................
    0290: 02 02 40 00 01 18 00 00 5F 00 00 00 00 00 00 00  // ..@....._.......
    02A0: 00 C0 00 00 C0 00 00 00 03 04 40 00 00 18 00 00  // ..........@.....
    02B0: 00 00 00 00 24 00 00 00 00 00 00 00 01 00 00 00  // ....$...........
    02C0: C4 02 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // ................
    02D0: 00 00 10 00 00 04 00 00 10 0A 40 00 00 1C 00 00  // ..........@.....
    02E0: 02 00 00 00 AC 02 00 00 06 00 00 00 02 00 00 00  // ................
    02F0: F8 02 00 00 10 03 00 00 01 18 00 00 7F 00 00 00  // ................
    0300: 00 00 00 00 00 80 00 00 80 00 00 00 02 02 40 00  // ..............@.
    0310: 01 18 00 00 5F 00 00 00 00 00 00 00 00 C0 00 00  // ...._...........
    0320: C0 00 00 00 03 04 40 00 00 1C 00 00 02 00 00 00  // ......@.........
    0330: AC 02 00 00 07 00 00 00 02 00 00 00 44 03 00 00  // ............D...
    0340: 5C 03 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // \...............
    0350: 00 80 00 00 80 00 00 00 02 02 40 00 01 18 00 00  // ..........@.....
    0360: 5F 00 00 00 00 00 00 00 00 C0 00 00 C0 00 00 00  // _...............
    0370: 03 04 40 00 00 18 00 00 00 00 00 00 24 00 00 00  // ..@.........$...
    0380: 00 00 00 00 01 00 00 00 8C 03 00 00 01 18 00 00  // ................
    0390: 7F 00 00 00 00 00 00 00 00 00 10 00 00 04 00 00  // ................
    03A0: 10 0A 40 00 00 1C 00 00 02 00 00 00 74 03 00 00  // ..@.........t...
    03B0: 08 00 00 00 02 00 00 00 C0 03 00 00 D8 03 00 00  // ................
    03C0: 01 18 00 00 7F 00 00 00 00 00 00 00 00 80 00 00  // ................
    03D0: 80 00 00 00 02 02 40 00 01 18 00 00 5F 00 00 00  // ......@....._...
    03E0: 00 00 00 00 00 C0 00 00 C0 00 00 00 03 04 40 00  // ..............@.
    03F0: 00 1C 00 00 02 00 00 00 74 03 00 00 09 00 00 00  // ........t.......
    0400: 02 00 00 00 0C 04 00 00 24 04 00 00 01 18 00 00  // ........$.......
    0410: 7F 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00  // ................
    0420: 02 02 40 00 01 18 00 00 5F 00 00 00 00 00 00 00  // ..@....._.......
    0430: 00 C0 00 00 C0 00 00 00 03 04 40 00 00 18 00 00  // ..........@.....
    0440: 00 00 00 00 24 00 00 00 00 00 00 00 01 00 00 00  // ....$...........
    0450: 54 04 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // T...............
    0460: 00 00 10 00 00 04 00 00 10 0A 40 00 00 1C 00 00  // ..........@.....
    0470: 02 00 00 00 3C 04 00 00 0A 00 00 00 02 00 00 00  // ....<...........
    0480: 88 04 00 00 A0 04 00 00 01 18 00 00 7F 00 00 00  // ................
    0490: 00 00 00 00 00 80 00 00 80 00 00 00 02 02 40 00  // ..............@.
    04A0: 01 18 00 00 5F 00 00 00 00 00 00 00 00 C0 00 00  // ...._...........
    04B0: C0 00 00 00 03 04 40 00 00 1C 00 00 02 00 00 00  // ......@.........
    04C0: 3C 04 00 00 0B 00 00 00 02 00 00 00 D4 04 00 00  // <...............
    04D0: EC 04 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // ................
    04E0: 00 80 00 00 80 00 00 00 02 02 40 00 01 18 00 00  // ..........@.....
    04F0: 5F 00 00 00 00 00 00 00 00 C0 00 00 C0 00 00 00  // _...............
    0500: 03 04 40 00 00 18 00 00 00 00 00 00 24 00 00 00  // ..@.........$...
    0510: 00 00 00 00 01 00 00 00 1C 05 00 00 01 18 00 00  // ................
    0520: 7F 00 00 00 00 00 00 00 00 00 10 00 00 04 00 00  // ................
    0530: 10 0A 40 00 00 1C 00 00 02 00 00 00 04 05 00 00  // ..@.............
    0540: 0C 00 00 00 02 00 00 00 50 05 00 00 68 05 00 00  // ........P...h...
    0550: 01 18 00 00 7F 00 00 00 00 00 00 00 00 80 00 00  // ................
    0560: 80 00 00 00 02 02 40 00 01 18 00 00 5F 00 00 00  // ......@....._...
    0570: 00 00 00 00 00 C0 00 00 C0 00 00 00 03 04 40 00  // ..............@.
    0580: 00 1C 00 00 02 00 00 00 04 05 00 00 0D 00 00 00  // ................
    0590: 02 00 00 00 9C 05 00 00 B4 05 00 00 01 18 00 00  // ................
    05A0: 7F 00 00 00 00 00 00 00 00 80 00 00 80 00 00 00  // ................
    05B0: 02 02 40 00 01 18 00 00 5F 00 00 00 00 00 00 00  // ..@....._.......
    05C0: 00 C0 00 00 C0 00 00 00 03 04 40 00 00 18 00 00  // ..........@.....
    05D0: 00 00 00 00 24 00 00 00 00 00 00 00 01 00 00 00  // ....$...........
    05E0: E4 05 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // ................
    05F0: 00 00 10 00 00 04 00 00 10 0A 40 00 00 1C 00 00  // ..........@.....
    0600: 02 00 00 00 CC 05 00 00 0E 00 00 00 02 00 00 00  // ................
    0610: 18 06 00 00 30 06 00 00 01 18 00 00 7F 00 00 00  // ....0...........
    0620: 00 00 00 00 00 80 00 00 80 00 00 00 02 02 40 00  // ..............@.
    0630: 01 18 00 00 5F 00 00 00 00 00 00 00 00 C0 00 00  // ...._...........
    0640: C0 00 00 00 03 04 40 00 00 1C 00 00 02 00 00 00  // ......@.........
    0650: CC 05 00 00 0F 00 00 00 02 00 00 00 64 06 00 00  // ............d...
    0660: 7C 06 00 00 01 18 00 00 7F 00 00 00 00 00 00 00  // |...............
    0670: 00 80 00 00 80 00 00 00 02 02 40 00 01 18 00 00  // ..........@.....
    0680: 5F 00 00 00 00 00 00 00 00 C0 00 00 C0 00 00 00  // _...............
    0690: 03 04 40 00                                      // ..@.
