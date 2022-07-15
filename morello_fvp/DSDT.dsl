/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Fri Jul 15 09:45:25 2022
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000001E7 (487)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x9D
 *     OEM ID           "ARMLTD"
 *     OEM Table ID     "MORELLO"
 *     OEM Revision     0x20181101 (538448129)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "DSDT", 1, "ARMLTD", "MORELLO", 0x20181101)
{
    Scope (_SB)
    {
        Device (CP00)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_STA, 0x0F)  // _STA: Status
        }

        Device (CP01)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_STA, 0x0F)  // _STA: Status
        }

        Device (CP02)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_STA, 0x0F)  // _STA: Status
        }

        Device (CP03)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_STA, 0x0F)  // _STA: Status
        }

        Device (VR00)
        {
            Name (_HID, "LNRO0005")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x1C170000,         // Address Base
                    0x00000200,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000080,
                }
            })
        }

        Device (VR01)
        {
            Name (_HID, "LNRO0005")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x1C180000,         // Address Base
                    0x00000200,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000086,
                }
            })
        }

        Device (VR02)
        {
            Name (_HID, "LNRO0005")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x1C190000,         // Address Base
                    0x00000200,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000085,
                }
            })
        }

        Device (VR03)
        {
            Name (_HID, "LNRO0005")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x1C1A0000,         // Address Base
                    0x00000200,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000087,
                }
            })
        }

        Device (NET0)
        {
            Name (_HID, "LNRO0003")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x1D100000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000082,
                }
            })
        }
    }
}

