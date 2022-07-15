/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT, Fri Jul  8 10:18:43 2022
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00000C40 (3136)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xFD
 *     OEM ID           "LINARO"
 *     OEM Table ID     "SBSAQEMU"
 *     OEM Revision     0x20200810 (538970128)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200717 (538969879)
 */
DefinitionBlock ("", "DSDT", 1, "LINARO", "SBSAQEMU", 0x20200810)
{
    Scope (_SB)
    {
        Device (COM0)
        {
            Name (_HID, "ARMH0011")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x60000000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000021,
                }
            })
        }

        Device (AHC0)
        {
            Name (_HID, "LNRO001E")  // _HID: Hardware ID
            Name (_CLS, Package (0x03)  // _CLS: Class Code
            {
                One, 
                0x06, 
                One
            })
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x60100000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
        }

        Device (USB0)
        {
            Name (_HID, "LNRO0D20")  // _HID: Hardware ID
            Name (_CID, "PNP0D20" /* EHCI USB Controller without debug */)  // _CID: Compatible ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x60110000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000002B,
                    }
                })
                Return (RBUF) /* \_SB_.USB0._CRS.RBUF */
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HUB1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                    Device (PRT1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PRT3)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PRT4)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }
                }
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_SEG, Zero)  // _SEG: PCI Segment
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Name (_UID, "PCI0")  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Method (_CBA, 0, NotSerialized)  // _CBA: Configuration Base Address
            {
                Return (0xF0000000)
            }

            Device (GSI0)
            {
                Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                {
                    Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000023,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (_PRS) /* \_SB_.PCI0.GSI0._PRS */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (GSI1)
            {
                Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                {
                    Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000024,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (_PRS) /* \_SB_.PCI0.GSI1._PRS */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (GSI2)
            {
                Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                {
                    Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000025,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (_PRS) /* \_SB_.PCI0.GSI2._PRS */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (GSI3)
            {
                Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                {
                    Interrupt (ResourceProducer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000026,
                    }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (_PRS) /* \_SB_.PCI0.GSI3._PRS */
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Name (_PRT, Package (0x80)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0007FFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0007FFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0007FFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0007FFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0009FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000AFFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000BFFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000CFFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000DFFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000EFFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x000FFFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0010FFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0011FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0012FFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0018FFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x03, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    Zero, 
                    GSI2, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    One, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x02, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x03, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    GSI3, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    GSI0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    GSI1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    GSI2, 
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
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0100,             // Length
                        ,, )
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x80000000,         // Range Minimum
                        0xEFFFFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x70000000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000000100000000, // Range Minimum
                        0x000000FFFFFFFFFF, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x000000FF00000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x00000000,         // Granularity
                        0x00000000,         // Range Minimum
                        0x0000FFFF,         // Range Maximum
                        0x7FFF0000,         // Translation Offset
                        0x00010000,         // Length
                        ,, , TypeTranslation, DenseTranslation)
                })
                Return (RBUF) /* \_SB_.PCI0._CRS.RBUF */
            }

            Device (RES0)
            {
                Name (_HID, "PNP0C02" /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x00000000F0000000, // Range Minimum
                        0x00000000FFFFFFFF, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x0000000010000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                })
            }

            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    CreateDWordField (Arg3, Zero, CDW1)
                    CreateDWordField (Arg3, 0x04, CDW2)
                    CreateDWordField (Arg3, 0x08, CDW3)
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }
        }
    }
}

