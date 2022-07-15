/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of APIC, Fri Jul  8 10:50:53 2022
 *
 * ACPI Data Table [APIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "APIC"    [Multiple APIC Description Table (MADT)]
[004h 0004   4]                 Table Length : 00000194
[008h 0008   1]                     Revision : 04
[009h 0009   1]                     Checksum : F9
[00Ah 0010   6]                       Oem ID : "LINARO"
[010h 0016   8]                 Oem Table ID : "SBSAQEMU"
[018h 0024   4]                 Oem Revision : 20200810
[01Ch 0028   4]              Asl Compiler ID : "LNRO"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]           Local Apic Address : 00000000
[028h 0040   4]        Flags (decoded below) : 00000000
                         PC-AT Compatibility : 0

[02Ch 0044   1]                Subtable Type : 0B [Generic Interrupt Controller]
[02Dh 0045   1]                       Length : 50
[02Eh 0046   2]                     Reserved : 0000
[030h 0048   4]         CPU Interface Number : 00000000
[034h 0052   4]                Processor UID : 00000000
[038h 0056   4]        Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[03Ch 0060   4]     Parking Protocol Version : 00000000
[040h 0064   4]        Performance Interrupt : 00000017
[044h 0068   8]               Parked Address : 0000000000000000
[04Ch 0076   8]                 Base Address : 0000000040060000
[054h 0084   8]     Virtual GIC Base Address : 000000002C020000
[05Ch 0092   8]  Hypervisor GIC Base Address : 000000002C010000
[064h 0100   4]        Virtual GIC Interrupt : 00000019
[068h 0104   8]   Redistributor Base Address : 0000000000000000
[070h 0112   8]                    ARM MPIDR : 0000000000000000
[078h 0120   1]             Efficiency Class : 00
[079h 0121   1]                     Reserved : 00
[07Ah 0122   2]       SPE Overflow Interrupt : 0000

[07Ch 0124   1]                Subtable Type : 0B [Generic Interrupt Controller]
[07Dh 0125   1]                       Length : 50
[07Eh 0126   2]                     Reserved : 0000
[080h 0128   4]         CPU Interface Number : 00000000
[084h 0132   4]                Processor UID : 00000001
[088h 0136   4]        Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[08Ch 0140   4]     Parking Protocol Version : 00000000
[090h 0144   4]        Performance Interrupt : 00000017
[094h 0148   8]               Parked Address : 0000000000000000
[09Ch 0156   8]                 Base Address : 0000000040060000
[0A4h 0164   8]     Virtual GIC Base Address : 000000002C020000
[0ACh 0172   8]  Hypervisor GIC Base Address : 000000002C010000
[0B4h 0180   4]        Virtual GIC Interrupt : 00000019
[0B8h 0184   8]   Redistributor Base Address : 0000000000000000
[0C0h 0192   8]                    ARM MPIDR : 0000000000000001
[0C8h 0200   1]             Efficiency Class : 00
[0C9h 0201   1]                     Reserved : 00
[0CAh 0202   2]       SPE Overflow Interrupt : 0000

[0CCh 0204   1]                Subtable Type : 0B [Generic Interrupt Controller]
[0CDh 0205   1]                       Length : 50
[0CEh 0206   2]                     Reserved : 0000
[0D0h 0208   4]         CPU Interface Number : 00000000
[0D4h 0212   4]                Processor UID : 00000002
[0D8h 0216   4]        Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[0DCh 0220   4]     Parking Protocol Version : 00000000
[0E0h 0224   4]        Performance Interrupt : 00000017
[0E4h 0228   8]               Parked Address : 0000000000000000
[0ECh 0236   8]                 Base Address : 0000000040060000
[0F4h 0244   8]     Virtual GIC Base Address : 000000002C020000
[0FCh 0252   8]  Hypervisor GIC Base Address : 000000002C010000
[104h 0260   4]        Virtual GIC Interrupt : 00000019
[108h 0264   8]   Redistributor Base Address : 0000000000000000
[110h 0272   8]                    ARM MPIDR : 0000000000000002
[118h 0280   1]             Efficiency Class : 00
[119h 0281   1]                     Reserved : 00
[11Ah 0282   2]       SPE Overflow Interrupt : 0000

[11Ch 0284   1]                Subtable Type : 0B [Generic Interrupt Controller]
[11Dh 0285   1]                       Length : 50
[11Eh 0286   2]                     Reserved : 0000
[120h 0288   4]         CPU Interface Number : 00000000
[124h 0292   4]                Processor UID : 00000003
[128h 0296   4]        Flags (decoded below) : 00000001
                           Processor Enabled : 1
          Performance Interrupt Trigger Mode : 0
          Virtual GIC Interrupt Trigger Mode : 0
[12Ch 0300   4]     Parking Protocol Version : 00000000
[130h 0304   4]        Performance Interrupt : 00000017
[134h 0308   8]               Parked Address : 0000000000000000
[13Ch 0316   8]                 Base Address : 0000000040060000
[144h 0324   8]     Virtual GIC Base Address : 000000002C020000
[14Ch 0332   8]  Hypervisor GIC Base Address : 000000002C010000
[154h 0340   4]        Virtual GIC Interrupt : 00000019
[158h 0344   8]   Redistributor Base Address : 0000000000000000
[160h 0352   8]                    ARM MPIDR : 0000000000000003
[168h 0360   1]             Efficiency Class : 00
[169h 0361   1]                     Reserved : 00
[16Ah 0362   2]       SPE Overflow Interrupt : 0000

[16Ch 0364   1]                Subtable Type : 0C [Generic Interrupt Distributor]
[16Dh 0365   1]                       Length : 18
[16Eh 0366   2]                     Reserved : 0000
[170h 0368   4]        Local GIC Hardware ID : 00000000
[174h 0372   8]                 Base Address : 0000000040060000
[17Ch 0380   4]               Interrupt Base : 00000000
[180h 0384   1]                      Version : 03
[181h 0385   3]                     Reserved : 000000

[184h 0388   1]                Subtable Type : 0E [Generic Interrupt Redistributor]
[185h 0389   1]                       Length : 10
[186h 0390   2]                     Reserved : 0000
[188h 0392   8]                 Base Address : 0000000040080000
[190h 0400   4]                       Length : 04000000

Raw Table Data: Length 404 (0x194)

    0000: 41 50 49 43 94 01 00 00 04 F9 4C 49 4E 41 52 4F  // APIC......LINARO
    0010: 53 42 53 41 51 45 4D 55 10 08 20 20 4C 4E 52 4F  // SBSAQEMU..  LNRO
    0020: 01 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0030: 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  // ................
    0040: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 06 40  // ...............@
    0050: 00 00 00 00 00 00 02 2C 00 00 00 00 00 00 01 2C  // .......,.......,
    0060: 00 00 00 00 19 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0080: 00 00 00 00 01 00 00 00 01 00 00 00 00 00 00 00  // ................
    0090: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 06 40  // ...............@
    00A0: 00 00 00 00 00 00 02 2C 00 00 00 00 00 00 01 2C  // .......,.......,
    00B0: 00 00 00 00 19 00 00 00 00 00 00 00 00 00 00 00  // ................
    00C0: 01 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    00D0: 00 00 00 00 02 00 00 00 01 00 00 00 00 00 00 00  // ................
    00E0: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 06 40  // ...............@
    00F0: 00 00 00 00 00 00 02 2C 00 00 00 00 00 00 01 2C  // .......,.......,
    0100: 00 00 00 00 19 00 00 00 00 00 00 00 00 00 00 00  // ................
    0110: 02 00 00 00 00 00 00 00 00 00 00 00 0B 50 00 00  // .............P..
    0120: 00 00 00 00 03 00 00 00 01 00 00 00 00 00 00 00  // ................
    0130: 17 00 00 00 00 00 00 00 00 00 00 00 00 00 06 40  // ...............@
    0140: 00 00 00 00 00 00 02 2C 00 00 00 00 00 00 01 2C  // .......,.......,
    0150: 00 00 00 00 19 00 00 00 00 00 00 00 00 00 00 00  // ................
    0160: 03 00 00 00 00 00 00 00 00 00 00 00 0C 18 00 00  // ................
    0170: 00 00 00 00 00 00 06 40 00 00 00 00 00 00 00 00  // .......@........
    0180: 03 00 00 00 0E 10 00 00 00 00 08 40 00 00 00 00  // ...........@....
    0190: 00 00 00 04                                      // ....
