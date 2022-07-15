/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT3, Fri Jul 15 09:45:25 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000024A (586)
 *     Revision         0x01
 *     Checksum         0x25
 *     OEM ID           "ARMLTD"
 *     OEM Table ID     "MORELLO"
 *     OEM Revision     0x20181101 (538448129)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210331 (539034417)
 */
DefinitionBlock ("", "SSDT", 1, "ARMLTD", "MORELLO", 0x20181101)
{
    Scope (_SB)
    {
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000C9,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (_PRS) /* \_SB_.LNKA._PRS */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000CA,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (_PRS) /* \_SB_.LNKB._PRS */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000CB,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (_PRS) /* \_SB_.LNKC._PRS */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000CC,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (_PRS) /* \_SB_.LNKD._PRS */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_SEG, Zero)  // _SEG: PCI Segment
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Device (RP0)
            {
                Name (_ADR, 0xF0000000)  // _ADR: Address
            }

            Name (_PRT, Package (0x04)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x000F,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0010,             // Length
                        ,, )
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x60000000,         // Range Minimum
                        0x6EFFFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x0F000000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000000900000000, // Range Minimum
                        0x00000028FFFFFFFF, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x0000002000000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x00000000,         // Granularity
                        0x00000000,         // Range Minimum
                        0x003FFFFF,         // Range Maximum
                        0x6F000000,         // Translation Offset
                        0x00400000,         // Length
                        ,, , TypeTranslation, DenseTranslation)
                })
                Return (RBUF) /* \_SB_.PCI0._CRS.RBUF */
            }
        }
    }
}

