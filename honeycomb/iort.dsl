/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of iort.dat, Thu Oct 13 16:12:57 2022
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "IORT"    [IO Remapping Table]
[004h 0004   4]                 Table Length : 00001075
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 61
[00Ah 0010   6]                       Oem ID : "NXP   "
[010h 0016   8]                 Oem Table ID : "LX2160  "
[018h 0024   4]                 Oem Revision : 00000000
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 20151124

[024h 0036   4]                   Node Count : 0000000D
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

[048h 0072   1]                         Type : 03
[049h 0073   2]                       Length : 07C4
[04Bh 0075   1]                     Revision : 00
[04Ch 0076   4]                     Reserved : 00000000
[050h 0080   4]                Mapping Count : 00000007
[054h 0084   4]               Mapping Offset : 0000029C

[058h 0088   8]                 Base Address : 0000000005000000
[060h 0096   8]                         Span : 0000000000800000
[068h 0104   4]                        Model : 00000003
[06Ch 0108   4]        Flags (decoded below) : 00000003
                               DVM Supported : 1
                               Coherent Walk : 1
[070h 0112   4]      Global Interrupt Offset : 0000003C
[074h 0116   4]      Context Interrupt Count : 00000040
[078h 0120   4]     Context Interrupt Offset : 0000004C
[07Ch 0124   4]          PMU Interrupt Count : 0000000A
[080h 0128   4]         PMU Interrupt Offset : 0000024C

[084h 0132   4]                      NSgIrpt : 0000002F
[088h 0136   4] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[08Ch 0140   4]                   NSgCfgIrpt : 00000030
[090h 0144   4] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[094h 0148   8]            Context Interrupt : 00000000000000B2
[09Ch 0156   8]            Context Interrupt : 00000000000000B3
[0A4h 0164   8]            Context Interrupt : 00000000000000B4
[0ACh 0172   8]            Context Interrupt : 00000000000000B5
[0B4h 0180   8]            Context Interrupt : 00000000000000B6
[0BCh 0188   8]            Context Interrupt : 00000000000000B7
[0C4h 0196   8]            Context Interrupt : 00000000000000B8
[0CCh 0204   8]            Context Interrupt : 00000000000000B9
[0D4h 0212   8]            Context Interrupt : 00000000000000BA
[0DCh 0220   8]            Context Interrupt : 00000000000000BB
[0E4h 0228   8]            Context Interrupt : 00000000000000BC
[0ECh 0236   8]            Context Interrupt : 00000000000000BD
[0F4h 0244   8]            Context Interrupt : 00000000000000BE
[0FCh 0252   8]            Context Interrupt : 00000000000000BF
[104h 0260   8]            Context Interrupt : 00000000000000C0
[10Ch 0268   8]            Context Interrupt : 00000000000000C1
[114h 0276   8]            Context Interrupt : 00000000000000C2
[11Ch 0284   8]            Context Interrupt : 00000000000000C3
[124h 0292   8]            Context Interrupt : 00000000000000C4
[12Ch 0300   8]            Context Interrupt : 00000000000000C5
[134h 0308   8]            Context Interrupt : 00000000000000C6
[13Ch 0316   8]            Context Interrupt : 00000000000000C7
[144h 0324   8]            Context Interrupt : 00000000000000C8
[14Ch 0332   8]            Context Interrupt : 00000000000000C9
[154h 0340   8]            Context Interrupt : 00000000000000CA
[15Ch 0348   8]            Context Interrupt : 00000000000000CB
[164h 0356   8]            Context Interrupt : 00000000000000CC
[16Ch 0364   8]            Context Interrupt : 00000000000000CD
[174h 0372   8]            Context Interrupt : 00000000000000CE
[17Ch 0380   8]            Context Interrupt : 00000000000000CF
[184h 0388   8]            Context Interrupt : 00000000000000D0
[18Ch 0396   8]            Context Interrupt : 00000000000000D1
[194h 0404   8]            Context Interrupt : 00000000000000D2
[19Ch 0412   8]            Context Interrupt : 00000000000000D3
[1A4h 0420   8]            Context Interrupt : 00000000000000D4
[1ACh 0428   8]            Context Interrupt : 00000000000000D5
[1B4h 0436   8]            Context Interrupt : 00000000000000D6
[1BCh 0444   8]            Context Interrupt : 00000000000000D7
[1C4h 0452   8]            Context Interrupt : 00000000000000D8
[1CCh 0460   8]            Context Interrupt : 00000000000000D9
[1D4h 0468   8]            Context Interrupt : 00000000000000DA
[1DCh 0476   8]            Context Interrupt : 00000000000000DB
[1E4h 0484   8]            Context Interrupt : 00000000000000DC
[1ECh 0492   8]            Context Interrupt : 00000000000000DD
[1F4h 0500   8]            Context Interrupt : 00000000000000DE
[1FCh 0508   8]            Context Interrupt : 00000000000000DF
[204h 0516   8]            Context Interrupt : 00000000000000E0
[20Ch 0524   8]            Context Interrupt : 00000000000000E1
[214h 0532   8]            Context Interrupt : 00000000000000E2
[21Ch 0540   8]            Context Interrupt : 00000000000000E3
[224h 0548   8]            Context Interrupt : 00000000000000E4
[22Ch 0556   8]            Context Interrupt : 00000000000000E5
[234h 0564   8]            Context Interrupt : 00000000000000E6
[23Ch 0572   8]            Context Interrupt : 00000000000000E7
[244h 0580   8]            Context Interrupt : 00000000000000E8
[24Ch 0588   8]            Context Interrupt : 00000000000000E9
[254h 0596   8]            Context Interrupt : 00000000000000EA
[25Ch 0604   8]            Context Interrupt : 00000000000000EB
[264h 0612   8]            Context Interrupt : 00000000000000EC
[26Ch 0620   8]            Context Interrupt : 00000000000000ED
[274h 0628   8]            Context Interrupt : 00000000000000EE
[27Ch 0636   8]            Context Interrupt : 00000000000000EF
[284h 0644   8]            Context Interrupt : 00000000000000F0
[28Ch 0652   8]            Context Interrupt : 00000000000000F1
[294h 0660   8]                PMU Interrupt : 00000000000000F3
[29Ch 0668   8]                PMU Interrupt : 00000000000000F4
[2A4h 0676   8]                PMU Interrupt : 00000000000000F5
[2ACh 0684   8]                PMU Interrupt : 00000000000000F6
[2B4h 0692   8]                PMU Interrupt : 00000000000000F7
[2BCh 0700   8]                PMU Interrupt : 00000000000000F8
[2C4h 0708   8]                PMU Interrupt : 00000000000000F9
[2CCh 0716   8]                PMU Interrupt : 00000000000000FA
[2D4h 0724   8]                PMU Interrupt : 00000000000000FB
[2DCh 0732   8]                PMU Interrupt : 00000000000000FC

[2E4h 0740   4]                   Input base : 00004000
[2E8h 0744   4]                     ID Count : 00000000
[2ECh 0748   4]                  Output Base : 00004000
[2F0h 0752   4]             Output Reference : 00000030
[2F4h 0756   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[2F8h 0760   4]                   Input base : 00000017
[2FCh 0764   4]                     ID Count : 00000027
[300h 0768   4]                  Output Base : 00000017
[304h 0772   4]             Output Reference : 00000030
[308h 0776   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[30Ch 0780   4]                   Input base : 00001800
[310h 0784   4]                     ID Count : 00000000
[314h 0788   4]                  Output Base : 00001800
[318h 0792   4]             Output Reference : 00000030
[31Ch 0796   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[320h 0800   4]                   Input base : 00002800
[324h 0804   4]                     ID Count : 00000000
[328h 0808   4]                  Output Base : 00002800
[32Ch 0812   4]             Output Reference : 00000030
[330h 0816   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[334h 0820   4]                   Input base : 00001801
[338h 0824   4]                     ID Count : 00000000
[33Ch 0828   4]                  Output Base : 00001801
[340h 0832   4]             Output Reference : 00000030
[344h 0836   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[348h 0840   4]                   Input base : 00002801
[34Ch 0844   4]                     ID Count : 00000000
[350h 0848   4]                  Output Base : 00002801
[354h 0852   4]             Output Reference : 00000030
[358h 0856   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[35Ch 0860   4]                   Input base : 00002802
[360h 0864   4]                     ID Count : 00000000
[364h 0868   4]                  Output Base : 00002802
[368h 0872   4]             Output Reference : 00000030
[36Ch 0876   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Ch 2060   1]                         Type : 02
[80Dh 2061   2]                       Length : 02A4
[80Fh 2063   1]                     Revision : 00
[810h 2064   4]                     Reserved : 00000000
[814h 2068   4]                Mapping Count : 00000002
[818h 2072   4]               Mapping Offset : 00000024

[81Ch 2076   8]            Memory Properties : [IORT Memory Access Properties]
[81Ch 2076   4]              Cache Coherency : 00000001
[820h 2080   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[821h 2081   2]                     Reserved : 0000
[823h 2083   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[824h 2084   4]                ATS Attribute : 00000000
[828h 2088   4]           PCI Segment Number : 00000002
[82Ch 2092   1]            Memory Size Limit : 00
[82Dh 2093   3]                     Reserved : 000000

[830h 2096   4]                   Input base : 00000000
[834h 2100   4]                     ID Count : 00000000
[838h 2104   4]                  Output Base : 00001800
[83Ch 2108   4]             Output Reference : 00000048
[840h 2112   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[844h 2116   4]                   Input base : 00000100
[848h 2120   4]                     ID Count : 00000000
[84Ch 2124   4]                  Output Base : 00001801
[850h 2128   4]             Output Reference : 00000048
[854h 2132   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB0h 2736   1]                         Type : 02
[AB1h 2737   2]                       Length : 02A4
[AB3h 2739   1]                     Revision : 00
[AB4h 2740   4]                     Reserved : 00000000
[AB8h 2744   4]                Mapping Count : 00000003
[ABCh 2748   4]               Mapping Offset : 00000024

[AC0h 2752   8]            Memory Properties : [IORT Memory Access Properties]
[AC0h 2752   4]              Cache Coherency : 00000001
[AC4h 2756   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[AC5h 2757   2]                     Reserved : 0000
[AC7h 2759   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[AC8h 2760   4]                ATS Attribute : 00000000
[ACCh 2764   4]           PCI Segment Number : 00000004
[AD0h 2768   1]            Memory Size Limit : 00
[AD1h 2769   3]                     Reserved : 000000

[AD4h 2772   4]                   Input base : 00000000
[AD8h 2776   4]                     ID Count : 00000000
[ADCh 2780   4]                  Output Base : 00002800
[AE0h 2784   4]             Output Reference : 00000048
[AE4h 2788   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AE8h 2792   4]                   Input base : 00000100
[AECh 2796   4]                     ID Count : 00000000
[AF0h 2800   4]                  Output Base : 00002801
[AF4h 2804   4]             Output Reference : 00000048
[AF8h 2808   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[AFCh 2812   4]                   Input base : 00000101
[B00h 2816   4]                     ID Count : 00000000
[B04h 2820   4]                  Output Base : 00002802
[B08h 2824   4]             Output Reference : 00000048
[B0Ch 2828   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D54h 3412   1]                         Type : 01
[D55h 3413   2]                       Length : 0059
[D57h 3415   1]                     Revision : 00
[D58h 3416   4]                     Reserved : 00000000
[D5Ch 3420   4]                Mapping Count : 00000002
[D60h 3424   4]               Mapping Offset : 00000031

[D64h 3428   4]                   Node Flags : 00000000
[D68h 3432   8]            Memory Properties : [IORT Memory Access Properties]
[D68h 3432   4]              Cache Coherency : 00000001
[D6Ch 3436   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D6Dh 3437   2]                     Reserved : 0000
[D6Fh 3439   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[D70h 3440   1]            Memory Size Limit : 30
[D71h 3441  11]                  Device Name : "\_SB_.MCE0"
[D7Ch 3452  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 \
    00 00 40 00 00 48 00 00 00 00 00 00 00 17 00 00 \
    00 27 00 00 00 17 00 00 00 48 00 00 00 00 00 00 \
    00 

[D85h 3461   4]                   Input base : 00004000
[D89h 3465   4]                     ID Count : 00000000
[D8Dh 3469   4]                  Output Base : 00004000
[D91h 3473   4]             Output Reference : 00000048
[D95h 3477   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[D99h 3481   4]                   Input base : 00000017
[D9Dh 3485   4]                     ID Count : 00000027
[DA1h 3489   4]                  Output Base : 00000017
[DA5h 3493   4]             Output Reference : 00000048
[DA9h 3497   4]        Flags (decoded below) : 00000000
                              Single Mapping : 0

[DADh 3501   1]                         Type : 01
[DAEh 3502   2]                       Length : 0059
[DB0h 3504   1]                     Revision : 00
[DB1h 3505   4]                     Reserved : 00000000
[DB5h 3509   4]                Mapping Count : 00000001
[DB9h 3513   4]               Mapping Offset : 00000031

[DBDh 3517   4]                   Node Flags : 00000000
[DC1h 3521   8]            Memory Properties : [IORT Memory Access Properties]
[DC1h 3521   4]              Cache Coherency : 00000001
[DC5h 3525   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DC6h 3526   2]                     Reserved : 0000
[DC8h 3528   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[DC9h 3529   1]            Memory Size Limit : 28
[DCAh 3530  11]                  Device Name : "\_SB_.USB0"
[DD5h 3541  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 \
    00 01 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[DDEh 3550   4]                   Input base : 00000001
[DE2h 3554   4]                     ID Count : 00000000
[DE6h 3558   4]                  Output Base : 00000001
[DEAh 3562   4]             Output Reference : 00000048
[DEEh 3566   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[E06h 3590   1]                         Type : 01
[E07h 3591   2]                       Length : 0059
[E09h 3593   1]                     Revision : 00
[E0Ah 3594   4]                     Reserved : 00000000
[E0Eh 3598   4]                Mapping Count : 00000001
[E12h 3602   4]               Mapping Offset : 00000031

[E16h 3606   4]                   Node Flags : 00000000
[E1Ah 3610   8]            Memory Properties : [IORT Memory Access Properties]
[E1Ah 3610   4]              Cache Coherency : 00000001
[E1Eh 3614   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E1Fh 3615   2]                     Reserved : 0000
[E21h 3617   1] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
[E22h 3618   1]            Memory Size Limit : 28
[E23h 3619  11]                  Device Name : "\_SB_.USB1"
[E2Eh 3630  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 \
    00 02 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[E37h 3639   4]                   Input base : 00000002
[E3Bh 3643   4]                     ID Count : 00000000
[E3Fh 3647   4]                  Output Base : 00000002
[E43h 3651   4]             Output Reference : 00000048
[E47h 3655   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[E5Fh 3679   1]                         Type : 01
[E60h 3680   2]                       Length : 0059
[E62h 3682   1]                     Revision : 00
[E63h 3683   4]                     Reserved : 00000000
[E67h 3687   4]                Mapping Count : 00000001
[E6Bh 3691   4]               Mapping Offset : 00000031

[E6Fh 3695   4]                   Node Flags : 00000000
[E73h 3699   8]            Memory Properties : [IORT Memory Access Properties]
[E73h 3699   4]              Cache Coherency : 00000001
[E77h 3703   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E78h 3704   2]                     Reserved : 0000
[E7Ah 3706   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[E7Bh 3707   1]            Memory Size Limit : 30
[E7Ch 3708  11]                  Device Name : "\_SB_.SDC0"
[E87h 3719  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 \
    00 03 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[E90h 3728   4]                   Input base : 00000003
[E94h 3732   4]                     ID Count : 00000000
[E98h 3736   4]                  Output Base : 00000003
[E9Ch 3740   4]             Output Reference : 00000048
[EA0h 3744   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[EB8h 3768   1]                         Type : 01
[EB9h 3769   2]                       Length : 0059
[EBBh 3771   1]                     Revision : 00
[EBCh 3772   4]                     Reserved : 00000000
[EC0h 3776   4]                Mapping Count : 00000001
[EC4h 3780   4]               Mapping Offset : 00000031

[EC8h 3784   4]                   Node Flags : 00000000
[ECCh 3788   8]            Memory Properties : [IORT Memory Access Properties]
[ECCh 3788   4]              Cache Coherency : 00000001
[ED0h 3792   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[ED1h 3793   2]                     Reserved : 0000
[ED3h 3795   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[ED4h 3796   1]            Memory Size Limit : 30
[ED5h 3797  11]                  Device Name : "\_SB_.SDC1"
[EE0h 3808  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 04 00 00 00 00 00 00 \
    00 04 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[EE9h 3817   4]                   Input base : 00000004
[EEDh 3821   4]                     ID Count : 00000000
[EF1h 3825   4]                  Output Base : 00000004
[EF5h 3829   4]             Output Reference : 00000048
[EF9h 3833   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[F11h 3857   1]                         Type : 01
[F12h 3858   2]                       Length : 0059
[F14h 3860   1]                     Revision : 00
[F15h 3861   4]                     Reserved : 00000000
[F19h 3865   4]                Mapping Count : 00000001
[F1Dh 3869   4]               Mapping Offset : 00000031

[F21h 3873   4]                   Node Flags : 00000000
[F25h 3877   8]            Memory Properties : [IORT Memory Access Properties]
[F25h 3877   4]              Cache Coherency : 00000001
[F29h 3881   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F2Ah 3882   2]                     Reserved : 0000
[F2Ch 3884   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[F2Dh 3885   1]            Memory Size Limit : 30
[F2Eh 3886  11]                  Device Name : "\_SB_.SAT0"
[F39h 3897  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 05 00 00 00 00 00 00 \
    00 05 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[F42h 3906   4]                   Input base : 00000005
[F46h 3910   4]                     ID Count : 00000000
[F4Ah 3914   4]                  Output Base : 00000005
[F4Eh 3918   4]             Output Reference : 00000048
[F52h 3922   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[F6Ah 3946   1]                         Type : 01
[F6Bh 3947   2]                       Length : 0059
[F6Dh 3949   1]                     Revision : 00
[F6Eh 3950   4]                     Reserved : 00000000
[F72h 3954   4]                Mapping Count : 00000001
[F76h 3958   4]               Mapping Offset : 00000031

[F7Ah 3962   4]                   Node Flags : 00000000
[F7Eh 3966   8]            Memory Properties : [IORT Memory Access Properties]
[F7Eh 3966   4]              Cache Coherency : 00000001
[F82h 3970   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[F83h 3971   2]                     Reserved : 0000
[F85h 3973   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[F86h 3974   1]            Memory Size Limit : 30
[F87h 3975  11]                  Device Name : "\_SB_.SAT1"
[F92h 3986  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 \
    00 06 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[F9Bh 3995   4]                   Input base : 00000006
[F9Fh 3999   4]                     ID Count : 00000000
[FA3h 4003   4]                  Output Base : 00000006
[FA7h 4007   4]             Output Reference : 00000048
[FABh 4011   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[FC3h 4035   1]                         Type : 01
[FC4h 4036   2]                       Length : 0059
[FC6h 4038   1]                     Revision : 00
[FC7h 4039   4]                     Reserved : 00000000
[FCBh 4043   4]                Mapping Count : 00000001
[FCFh 4047   4]               Mapping Offset : 00000031

[FD3h 4051   4]                   Node Flags : 00000000
[FD7h 4055   8]            Memory Properties : [IORT Memory Access Properties]
[FD7h 4055   4]              Cache Coherency : 00000001
[FDBh 4059   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[FDCh 4060   2]                     Reserved : 0000
[FDEh 4062   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[FDFh 4063   1]            Memory Size Limit : 30
[FE0h 4064  11]                  Device Name : "\_SB_.SAT2"
[FEBh 4075  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 \
    00 07 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[FF4h 4084   4]                   Input base : 00000007
[FF8h 4088   4]                     ID Count : 00000000
[FFCh 4092   4]                  Output Base : 00000007
[1000h 4096   4]             Output Reference : 00000048
[1004h 4100   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

[101Ch 4124   1]                         Type : 01
[101Dh 4125   2]                       Length : 0059
[101Fh 4127   1]                     Revision : 00
[1020h 4128   4]                     Reserved : 00000000
[1024h 4132   4]                Mapping Count : 00000001
[1028h 4136   4]               Mapping Offset : 00000031

[102Ch 4140   4]                   Node Flags : 00000000
[1030h 4144   8]            Memory Properties : [IORT Memory Access Properties]
[1030h 4144   4]              Cache Coherency : 00000001
[1034h 4148   1]        Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[1035h 4149   2]                     Reserved : 0000
[1037h 4151   1] Memory Flags (decoded below) : 03
                                   Coherency : 1
                            Device Attribute : 1
[1038h 4152   1]            Memory Size Limit : 30
[1039h 4153  11]                  Device Name : "\_SB_.SAT3"
[1044h 4164  49]                      Padding : \
    00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 \
    00 08 00 00 00 48 00 00 00 01 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 

[104Dh 4173   4]                   Input base : 00000008
[1051h 4177   4]                     ID Count : 00000000
[1055h 4181   4]                  Output Base : 00000008
[1059h 4185   4]             Output Reference : 00000048
[105Dh 4189   4]        Flags (decoded below) : 00000001
                              Single Mapping : 1

Raw Table Data: Length 4213 (0x1075)

    0000: 49 4F 52 54 75 10 00 00 00 61 4E 58 50 20 20 20  // IORTu....aNXP   
    0010: 4C 58 32 31 36 30 20 20 00 00 00 00 49 4E 54 4C  // LX2160  ....INTL
    0020: 24 11 15 20 0D 00 00 00 30 00 00 00 00 00 00 00  // $.. ....0.......
    0030: 00 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0040: 01 00 00 00 00 00 00 00 03 C4 07 00 00 00 00 00  // ................
    0050: 07 00 00 00 9C 02 00 00 00 00 00 05 00 00 00 00  // ................
    0060: 00 00 80 00 00 00 00 00 03 00 00 00 03 00 00 00  // ................
    0070: 3C 00 00 00 40 00 00 00 4C 00 00 00 0A 00 00 00  // <...@...L.......
    0080: 4C 02 00 00 2F 00 00 00 00 00 00 00 30 00 00 00  // L.../.......0...
    0090: 00 00 00 00 B2 00 00 00 00 00 00 00 B3 00 00 00  // ................
    00A0: 00 00 00 00 B4 00 00 00 00 00 00 00 B5 00 00 00  // ................
    00B0: 00 00 00 00 B6 00 00 00 00 00 00 00 B7 00 00 00  // ................
    00C0: 00 00 00 00 B8 00 00 00 00 00 00 00 B9 00 00 00  // ................
    00D0: 00 00 00 00 BA 00 00 00 00 00 00 00 BB 00 00 00  // ................
    00E0: 00 00 00 00 BC 00 00 00 00 00 00 00 BD 00 00 00  // ................
    00F0: 00 00 00 00 BE 00 00 00 00 00 00 00 BF 00 00 00  // ................
    0100: 00 00 00 00 C0 00 00 00 00 00 00 00 C1 00 00 00  // ................
    0110: 00 00 00 00 C2 00 00 00 00 00 00 00 C3 00 00 00  // ................
    0120: 00 00 00 00 C4 00 00 00 00 00 00 00 C5 00 00 00  // ................
    0130: 00 00 00 00 C6 00 00 00 00 00 00 00 C7 00 00 00  // ................
    0140: 00 00 00 00 C8 00 00 00 00 00 00 00 C9 00 00 00  // ................
    0150: 00 00 00 00 CA 00 00 00 00 00 00 00 CB 00 00 00  // ................
    0160: 00 00 00 00 CC 00 00 00 00 00 00 00 CD 00 00 00  // ................
    0170: 00 00 00 00 CE 00 00 00 00 00 00 00 CF 00 00 00  // ................
    0180: 00 00 00 00 D0 00 00 00 00 00 00 00 D1 00 00 00  // ................
    0190: 00 00 00 00 D2 00 00 00 00 00 00 00 D3 00 00 00  // ................
    01A0: 00 00 00 00 D4 00 00 00 00 00 00 00 D5 00 00 00  // ................
    01B0: 00 00 00 00 D6 00 00 00 00 00 00 00 D7 00 00 00  // ................
    01C0: 00 00 00 00 D8 00 00 00 00 00 00 00 D9 00 00 00  // ................
    01D0: 00 00 00 00 DA 00 00 00 00 00 00 00 DB 00 00 00  // ................
    01E0: 00 00 00 00 DC 00 00 00 00 00 00 00 DD 00 00 00  // ................
    01F0: 00 00 00 00 DE 00 00 00 00 00 00 00 DF 00 00 00  // ................
    0200: 00 00 00 00 E0 00 00 00 00 00 00 00 E1 00 00 00  // ................
    0210: 00 00 00 00 E2 00 00 00 00 00 00 00 E3 00 00 00  // ................
    0220: 00 00 00 00 E4 00 00 00 00 00 00 00 E5 00 00 00  // ................
    0230: 00 00 00 00 E6 00 00 00 00 00 00 00 E7 00 00 00  // ................
    0240: 00 00 00 00 E8 00 00 00 00 00 00 00 E9 00 00 00  // ................
    0250: 00 00 00 00 EA 00 00 00 00 00 00 00 EB 00 00 00  // ................
    0260: 00 00 00 00 EC 00 00 00 00 00 00 00 ED 00 00 00  // ................
    0270: 00 00 00 00 EE 00 00 00 00 00 00 00 EF 00 00 00  // ................
    0280: 00 00 00 00 F0 00 00 00 00 00 00 00 F1 00 00 00  // ................
    0290: 00 00 00 00 F3 00 00 00 00 00 00 00 F4 00 00 00  // ................
    02A0: 00 00 00 00 F5 00 00 00 00 00 00 00 F6 00 00 00  // ................
    02B0: 00 00 00 00 F7 00 00 00 00 00 00 00 F8 00 00 00  // ................
    02C0: 00 00 00 00 F9 00 00 00 00 00 00 00 FA 00 00 00  // ................
    02D0: 00 00 00 00 FB 00 00 00 00 00 00 00 FC 00 00 00  // ................
    02E0: 00 00 00 00 00 40 00 00 00 00 00 00 00 40 00 00  // .....@.......@..
    02F0: 30 00 00 00 00 00 00 00 17 00 00 00 27 00 00 00  // 0...........'...
    0300: 17 00 00 00 30 00 00 00 00 00 00 00 00 18 00 00  // ....0...........
    0310: 00 00 00 00 00 18 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0320: 00 28 00 00 00 00 00 00 00 28 00 00 30 00 00 00  // .(.......(..0...
    0330: 00 00 00 00 01 18 00 00 00 00 00 00 01 18 00 00  // ................
    0340: 30 00 00 00 00 00 00 00 01 28 00 00 00 00 00 00  // 0........(......
    0350: 01 28 00 00 30 00 00 00 00 00 00 00 02 28 00 00  // .(..0........(..
    0360: 00 00 00 00 02 28 00 00 30 00 00 00 00 00 00 00  // .....(..0.......
    0370: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0380: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0390: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    03F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0400: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0410: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0420: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0430: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0440: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0450: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0460: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0470: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0480: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0490: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    04F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0500: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0510: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0520: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0530: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0540: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0550: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0560: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0570: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0580: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0590: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    05F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0600: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0610: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0620: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0630: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0640: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0650: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0660: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0670: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0680: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0690: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    06F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0700: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0710: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0720: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0730: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0740: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0750: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0760: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0770: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0780: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0790: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    07F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0800: 00 00 00 00 00 00 00 00 00 00 00 00 02 A4 02 00  // ................
    0810: 00 00 00 00 02 00 00 00 24 00 00 00 01 00 00 00  // ........$.......
    0820: 00 00 00 03 00 00 00 00 02 00 00 00 00 00 00 00  // ................
    0830: 00 00 00 00 00 00 00 00 00 18 00 00 48 00 00 00  // ............H...
    0840: 00 00 00 00 00 01 00 00 00 00 00 00 01 18 00 00  // ................
    0850: 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // H...............
    0860: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0870: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0880: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0890: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    08F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0900: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0910: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0920: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0930: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0940: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0950: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0960: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0970: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0980: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0990: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09A0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09B0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09C0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09D0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09E0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    09F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0A90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0AA0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0AB0: 02 A4 02 00 00 00 00 00 03 00 00 00 24 00 00 00  // ............$...
    0AC0: 01 00 00 00 00 00 00 03 00 00 00 00 04 00 00 00  // ................
    0AD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00  // .............(..
    0AE0: 48 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00  // H...............
    0AF0: 01 28 00 00 48 00 00 00 00 00 00 00 01 01 00 00  // .(..H...........
    0B00: 00 00 00 00 02 28 00 00 48 00 00 00 00 00 00 00  // .....(..H.......
    0B10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BA0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BC0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0C90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CA0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CC0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CE0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0D50: 00 00 00 00 01 59 00 00 00 00 00 00 02 00 00 00  // .....Y..........
    0D60: 31 00 00 00 00 00 00 00 01 00 00 00 00 00 00 03  // 1...............
    0D70: 30 5C 5F 53 42 5F 2E 4D 43 45 30 00 00 00 00 00  // 0\_SB_.MCE0.....
    0D80: 00 00 00 00 00 00 40 00 00 00 00 00 00 00 40 00  // ......@.......@.
    0D90: 00 48 00 00 00 00 00 00 00 17 00 00 00 27 00 00  // .H...........'..
    0DA0: 00 17 00 00 00 48 00 00 00 00 00 00 00 01 59 00  // .....H........Y.
    0DB0: 00 00 00 00 00 01 00 00 00 31 00 00 00 00 00 00  // .........1......
    0DC0: 00 01 00 00 00 00 00 00 00 28 5C 5F 53 42 5F 2E  // .........(\_SB_.
    0DD0: 55 53 42 30 00 00 00 00 00 00 00 00 00 00 01 00  // USB0............
    0DE0: 00 00 00 00 00 00 01 00 00 00 48 00 00 00 01 00  // ..........H.....
    0DF0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0E00: 00 00 00 00 00 00 01 59 00 00 00 00 00 00 01 00  // .......Y........
    0E10: 00 00 31 00 00 00 00 00 00 00 01 00 00 00 00 00  // ..1.............
    0E20: 00 00 28 5C 5F 53 42 5F 2E 55 53 42 31 00 00 00  // ..(\_SB_.USB1...
    0E30: 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00 02  // ................
    0E40: 00 00 00 48 00 00 00 01 00 00 00 00 00 00 00 00  // ...H............
    0E50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  // ................
    0E60: 59 00 00 00 00 00 00 01 00 00 00 31 00 00 00 00  // Y..........1....
    0E70: 00 00 00 01 00 00 00 00 00 00 03 30 5C 5F 53 42  // ...........0\_SB
    0E80: 5F 2E 53 44 43 30 00 00 00 00 00 00 00 00 00 00  // _.SDC0..........
    0E90: 03 00 00 00 00 00 00 00 03 00 00 00 48 00 00 00  // ............H...
    0EA0: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0EB0: 00 00 00 00 00 00 00 00 01 59 00 00 00 00 00 00  // .........Y......
    0EC0: 01 00 00 00 31 00 00 00 00 00 00 00 01 00 00 00  // ....1...........
    0ED0: 00 00 00 03 30 5C 5F 53 42 5F 2E 53 44 43 31 00  // ....0\_SB_.SDC1.
    0EE0: 00 00 00 00 00 00 00 00 00 04 00 00 00 00 00 00  // ................
    0EF0: 00 04 00 00 00 48 00 00 00 01 00 00 00 00 00 00  // .....H..........
    0F00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0F10: 00 01 59 00 00 00 00 00 00 01 00 00 00 31 00 00  // ..Y..........1..
    0F20: 00 00 00 00 00 01 00 00 00 00 00 00 03 30 5C 5F  // .............0\_
    0F30: 53 42 5F 2E 53 41 54 30 00 00 00 00 00 00 00 00  // SB_.SAT0........
    0F40: 00 00 05 00 00 00 00 00 00 00 05 00 00 00 48 00  // ..............H.
    0F50: 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0F60: 00 00 00 00 00 00 00 00 00 00 01 59 00 00 00 00  // ...........Y....
    0F70: 00 00 01 00 00 00 31 00 00 00 00 00 00 00 01 00  // ......1.........
    0F80: 00 00 00 00 00 03 30 5C 5F 53 42 5F 2E 53 41 54  // ......0\_SB_.SAT
    0F90: 31 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00  // 1...............
    0FA0: 00 00 00 06 00 00 00 48 00 00 00 01 00 00 00 00  // .......H........
    0FB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0FC0: 00 00 00 01 59 00 00 00 00 00 00 01 00 00 00 31  // ....Y..........1
    0FD0: 00 00 00 00 00 00 00 01 00 00 00 00 00 00 03 30  // ...............0
    0FE0: 5C 5F 53 42 5F 2E 53 41 54 32 00 00 00 00 00 00  // \_SB_.SAT2......
    0FF0: 00 00 00 00 07 00 00 00 00 00 00 00 07 00 00 00  // ................
    1000: 48 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // H...............
    1010: 00 00 00 00 00 00 00 00 00 00 00 00 01 59 00 00  // .............Y..
    1020: 00 00 00 00 01 00 00 00 31 00 00 00 00 00 00 00  // ........1.......
    1030: 01 00 00 00 00 00 00 03 30 5C 5F 53 42 5F 2E 53  // ........0\_SB_.S
    1040: 41 54 33 00 00 00 00 00 00 00 00 00 00 08 00 00  // AT3.............
    1050: 00 00 00 00 00 08 00 00 00 48 00 00 00 01 00 00  // .........H......
    1060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    1070: 00 00 00 00 00                                   // .....
