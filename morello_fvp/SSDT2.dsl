/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT2, Fri Jul 15 09:45:25 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A3 (163)
 *     Revision         0x02
 *     Checksum         0x69
 *     OEM ID           "ARMLTD"
 *     OEM Table ID     "SERIAL"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 2, "ARMLTD", "SERIAL", 0x00000001)
{
    Scope (_SB)
    {
        Device (COM0)
        {
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_HID, "ARMH0011")  // _HID: Hardware ID
            Name (_CID, "ARMHB000")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinNotFixed, MaxNotFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x000000001C0A0000, // Range Minimum
                    0x000000001C0A0FFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000001000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000AD,
                }
            })
        }
    }
}

