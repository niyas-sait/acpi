/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat, Thu Oct 13 16:12:57 2022
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00004C9A (19610)
 *     Revision         0x02
 *     Checksum         0x9B
 *     OEM ID           "NXP  "
 *     OEM Table ID     "LX2160  "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20181213 (538448403)
 */
DefinitionBlock ("", "DSDT", 2, "NXP  ", "LX2160  ", 0x00000000)
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
                    0x021C0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000040,
                }
            })
        }

        Device (COM1)
        {
            Name (_HID, "ARMH0011")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x021D0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000041,
                }
            })
        }
    }

    Scope (_SB)
    {
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 != One))
                {
                    STS0 &= 0xFFFFFFFFFFFFFFE0
                    STS0 |= 0x0A
                }
                Else
                {
                    If ((CAP0 & 0x0100))
                    {
                        CAP0 &= 0xFFFFFFFFFFFFFEFF
                        STS0 &= 0xFFFFFFFFFFFFFFE0
                        STS0 |= 0x12
                    }

                    CAP0 |= 0x0800
                }
            }
            Else
            {
                STS0 &= 0xFFFFFFFFFFFFFFE0
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (CLU0)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKA /* \_SB_.PCLK.CLKA */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU0.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU0.CLK3 */
            }

            Device (CPU0)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU0.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CPU1)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU0.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370000, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU1)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKA /* \_SB_.PCLK.CLKA */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU1.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU1.CLK3 */
            }

            Device (CPU2)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU1.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        One, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        One, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CPU3)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU1.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        One, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370020, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        One, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU2)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKA /* \_SB_.PCLK.CLKA */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU2.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU2.CLK3 */
            }

            Device (CPU4)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU2.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x02, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x02, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CPU5)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU2.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x02, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370040, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x02, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU3)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKA /* \_SB_.PCLK.CLKA */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU3.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU3.CLK3 */
            }

            Device (CPU6)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU3.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x03, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x03, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CPU7)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU3.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x03, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370060, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x08000000, 
                        0x08000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x10000000, 
                        0x10000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x03, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU4)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKB /* \_SB_.PCLK.CLKB */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU4.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU4.CLK3 */
            }

            Device (CPU8)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU4.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x04, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x04, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CPU9)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x09)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU4.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x04, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000001370080, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x04, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU5)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKB /* \_SB_.PCLK.CLKB */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU5.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU5.CLK3 */
            }

            Device (CP10)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU5.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x05, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x05, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CP11)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0B)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU5.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x05, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700A0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x05, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU6)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKB /* \_SB_.PCLK.CLKB */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU6.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU6.CLK3 */
            }

            Device (CP12)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0C)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU6.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x06, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x06, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CP13)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0D)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU6.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x06, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700C0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x06, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }

        Device (CLU7)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Name (CLK1, Zero)
            Name (CLK2, Zero)
            Name (CLK3, Zero)
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                Zero, 
                One, 
                Package (0x0A)
                {
                    0x1770, 
                    0x07D0, 
                    One, 
                    One, 
                    0x64, 
                    Zero, 
                    0x01000000, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CluPwrDn"
                }
            })
            Name (PLPI, Package (0x05)
            {
                Zero, 
                One, 
                0x02, 
                Package (0x0A)
                {
                    One, 
                    One, 
                    One, 
                    Zero, 
                    0x64, 
                    Zero, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000FFFFFFFF, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "WFI"
                }, 

                Package (0x0A)
                {
                    0x96, 
                    0x015E, 
                    One, 
                    One, 
                    0x64, 
                    One, 
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "CorePwrDn"
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK1 = ^^PCLK.CLKB /* \_SB_.PCLK.CLKB */
                Divide (CLK1, 0x02, Local0, CLK2) /* \_SB_.CLU7.CLK2 */
                Divide (CLK1, 0x04, Local0, CLK3) /* \_SB_.CLU7.CLK3 */
            }

            Device (CP14)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0E)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU7.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x07, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x07, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }

            Device (CP15)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0F)  // _UID: Unique ID
                Method (_LPI, 0, NotSerialized)  // _LPI: Low Power Idle States
                {
                    Return (PLPI) /* \_SB_.CLU7.PLPI */
                }

                Name (_PTC, Package (0x02)  // _PTC: Processor Throttling Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_TSS, Package (0x03)  // _TSS: Throttling Supported States
                {
                    Package (0x05)
                    {
                        0x64, 
                        0xC8, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x05)
                    {
                        0x32, 
                        0x64, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x05)
                    {
                        0x19, 
                        0x32, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
                {
                    Return (Zero)
                }

                Name (_TSD, Package (0x01)  // _TSD: Throttling State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x07, 
                        0xFD, 
                        0x02
                    }
                })
                Name (_PCT, Package (0x02)  // _PCT: Performance Control
                {
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x20,               // Bit Width
                            0x00,               // Bit Offset
                            0x00000000013700E0, // Address
                            0x03,               // Access Size
                            )
                    }
                })
                Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
                {
                    Package (0x06)
                    {
                        CLK1, 
                        0xC8, 
                        Zero, 
                        Zero, 
                        0x20000000, 
                        0x20000000
                    }, 

                    Package (0x06)
                    {
                        CLK2, 
                        0x64, 
                        Zero, 
                        Zero, 
                        0x28000000, 
                        0x28000000
                    }, 

                    Package (0x06)
                    {
                        CLK3, 
                        0x32, 
                        Zero, 
                        Zero, 
                        0x30000000, 
                        0x30000000
                    }
                })
                Name (_PSD, Package (0x01)  // _PSD: Power State Dependencies
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        0x07, 
                        0xFD, 
                        0x02
                    }
                })
                Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (PCLK)
        {
            Name (_HID, "NXP0017")  // _HID: Hardware ID
            Name (CLK, Zero)
            Name (CLKA, Zero)
            Name (CLKB, Zero)
            Name (AVBL, Zero)
            OperationRegion (RCWS, SystemMemory, 0x01E00000, 0x0001FFFF)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == "RCWS"))
                {
                    AVBL = Arg1
                }
            }

            Field (RCWS, ByteAcc, NoLock, Preserve)
            {
                Offset (0x100), 
                PCFG,   2, 
                PRAT,   6, 
                Offset (0x103), 
                RES1,   2, 
                CAPR,   6, 
                Offset (0x106), 
                RES2,   2, 
                CBPR,   6, 
                Offset (0x124), 
                RESV,   4, 
                SFRQ,   10
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Local0 = SFRQ /* \_SB_.PCLK.SFRQ */
                Local0 *= 0x0007A120
                Local0 *= PRAT /* \_SB_.PCLK.PRAT */
                Divide (Local0, 0x06, Local1, Local0)
                CLK = Local0
                Local0 = SFRQ /* \_SB_.PCLK.SFRQ */
                Local0 *= 0x0007A120
                Local0 /= 0x03
                Local0 /= 0x000F4240
                CLKA = (Local0 * CAPR) /* \_SB_.PCLK.CAPR */
                CLKB = (Local0 * CBPR) /* \_SB_.PCLK.CBPR */
            }
        }
    }

    Scope (_SB)
    {
        Device (SDC0)
        {
            Name (_HID, "NXP0003")  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02140000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000003C,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x09)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }, 

                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "voltage-ranges", 
                        Package (0x04)
                        {
                            0x0708, 
                            0x0708, 
                            0x0CE4, 
                            0x0CE4
                        }
                    }, 

                    Package (0x02)
                    {
                        "sdhci,auto-cmd12", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "bus-width", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "sd-uhs-sdr104", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "sd-uhs-sdr50", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "sd-uhs-sdr25", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "sd-uhs-sdr12", 
                        One
                    }
                }
            })
        }

        Device (SDC1)
        {
            Name (_HID, "NXP0003")  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, One)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02150000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000005F,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x08)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }, 

                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "voltage-ranges", 
                        Package (0x04)
                        {
                            0x0708, 
                            0x0708, 
                            0x0CE4, 
                            0x0CE4
                        }
                    }, 

                    Package (0x02)
                    {
                        "sdhci,auto-cmd12", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "broken-cd", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "bus-width", 
                        0x08
                    }, 

                    Package (0x02)
                    {
                        "mmc-hs200-1_8v", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "mmc-hs400-1_8v", 
                        One
                    }
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (FPI0)
        {
            Name (_HID, "NXP0009")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (One)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x020C0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x20000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000039,
                }
            })
            Name (RBF1, ResourceTemplate ()
            {
                SpiSerialBusV2 (0x0000, PolarityLow, FourWireMode, 0x08,
                    ControllerInitiated, 0x02FAF080, ClockPolarityLow,
                    ClockPhaseFirst, "\\_SB.FPI0",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (RBF2, ResourceTemplate ()
            {
                SpiSerialBusV2 (0x0001, PolarityLow, FourWireMode, 0x08,
                    ControllerInitiated, 0x002FF080, ClockPolarityLow,
                    ClockPhaseFirst, "\\_SB.FPI0",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Device (MTD0)
            {
                Name (_HID, "PRP0001")  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Return (RBF1) /* \_SB_.FPI0.RBF1 */
                }

                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "compatible", 
                            "micron,m25p80"
                        }
                    }
                })
            }

            Device (MTD1)
            {
                Name (_HID, "PRP0001")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Return (RBF2) /* \_SB_.FPI0.RBF2 */
                }

                Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "compatible", 
                            "micron,m25p80"
                        }
                    }
                })
            }
        }
    }

    Scope (_SB)
    {
        Device (FTM)
        {
            Name (_HID, "NXP0014")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02800000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000004C,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (GUT0)
        {
            Name (_HID, "NXP0030")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "little-endian", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "model", 
                        "NXP Layerscape LX2160ACEX7"
                    }
                }
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x01E00000,         // Address Base
                    0x00010000,         // Address Length
                    )
            })
        }
    }

    Scope (_SB)
    {
        Device (I2C0)
        {
            Name (_HID, "NXP0001")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02000000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000042,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
                Divide (CLK, 0x08, Local0, CLK) /* \_SB_.I2C0.CLK_ */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }
                }
            })
            Device (MUX0)
            {
                Name (_HID, "NXP0002")  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    I2cSerialBusV2 (0x0077, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2C0",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Device (CH01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UID, One)  // _UID: Unique ID
                    Device (FAN1)
                    {
                        Name (_HID, "PRP0001")  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            I2cSerialBusV2 (0x0018, ControllerInitiated, 0x000186A0,
                                AddressingMode7Bit, "\\_SB.I2C0.MUX0.CH01",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                        {
                            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                            Package (0x01)
                            {
                                Package (0x02)
                                {
                                    "compatible", 
                                    "ti,amc6821"
                                }
                            }
                        })
                    }
                }

                Device (CH03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Device (THE1)
                    {
                        Name (_UID, One)  // _UID: Unique ID
                        Name (_HID, "PRP0001")  // _HID: Hardware ID
                        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                        {
                            I2cSerialBusV2 (0x004A, ControllerInitiated, 0x000186A0,
                                AddressingMode7Bit, "\\_SB.I2C0.MUX0.CH03",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                        {
                            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                            Package (0x02)
                            {
                                Package (0x02)
                                {
                                    "compatible", 
                                    "nxp,sa56004"
                                }, 

                                Package (0x02)
                                {
                                    "vcc-supply", 
                                    0x0E
                                }
                            }
                        })
                    }
                }
            }
        }

        Device (I2C1)
        {
            Name (_HID, "NXP0001")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02010000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000042,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
                Divide (CLK, 0x08, Local0, CLK) /* \_SB_.I2C1.CLK_ */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (MCE0)
        {
            Name (_HID, "NXP0008")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x000000080C000000, // Range Minimum
                    0x000000080C00003F, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000040, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Memory32Fixed (ReadWrite,
                    0x08340000,         // Address Base
                    0x00040000,         // Address Length
                    )
            })
            Device (PR03)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (_UID, 0x03)  // _UID: Unique ID
            }

            Device (PR04)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (_UID, 0x04)  // _UID: Unique ID
            }

            Device (PR05)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Name (_UID, 0x05)  // _UID: Unique ID
            }

            Device (PR06)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Name (_UID, 0x06)  // _UID: Unique ID
            }

            Device (PR07)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Name (_UID, 0x07)  // _UID: Unique ID
            }

            Device (PR08)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (_UID, 0x08)  // _UID: Unique ID
            }

            Device (PR09)
            {
                Name (_ADR, 0x09)  // _ADR: Address
                Name (_UID, 0x09)  // _UID: Unique ID
            }

            Device (PR10)
            {
                Name (_ADR, 0x0A)  // _ADR: Address
                Name (_UID, 0x0A)  // _UID: Unique ID
            }

            Device (PR17)
            {
                Name (_ADR, 0x11)  // _ADR: Address
                Name (_UID, 0x11)  // _UID: Unique ID
            }

            Device (PR18)
            {
                Name (_ADR, 0x12)  // _ADR: Address
                Name (_UID, 0x12)  // _UID: Unique ID
            }
        }
    }

    Scope (_SB.MCE0.PR07)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
            Package (0x02)
            {
                Package (0x02)
                {
                    "reg", 
                    0x07
                }, 

                Package (0x02)
                {
                    "managed", 
                    "in-band-status"
                }
            }
        })
    }

    Scope (_SB.MCE0.PR08)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
            Package (0x02)
            {
                Package (0x02)
                {
                    "reg", 
                    0x08
                }, 

                Package (0x02)
                {
                    "managed", 
                    "in-band-status"
                }
            }
        })
    }

    Scope (_SB.MCE0.PR09)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
            Package (0x02)
            {
                Package (0x02)
                {
                    "reg", 
                    0x08
                }, 

                Package (0x02)
                {
                    "managed", 
                    "in-band-status"
                }
            }
        })
    }

    Scope (_SB.MCE0.PR10)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
            Package (0x02)
            {
                Package (0x02)
                {
                    "reg", 
                    0x0A
                }, 

                Package (0x02)
                {
                    "managed", 
                    "in-band-status"
                }
            }
        })
    }

    Scope (_SB.MCE0.PR17)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
            Package (0x04)
            {
                Package (0x02)
                {
                    "reg", 
                    0x11
                }, 

                Package (0x02)
                {
                    "phy-connection-type", 
                    "rgmii-id"
                }, 

                Package (0x02)
                {
                    "phy-mode", 
                    "rgmii-id"
                }, 

                Package (0x02)
                {
                    "phy-handle", 
                    Package (0x01)
                    {
                        ^^MDI0.PHY1
                    }
                }
            }
        })
    }

    Scope (_SB)
    {
        Device (MDI0)
        {
            Name (_HID, "NXP0006")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x08B96000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000007A,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }
                }
            })
        }

        Device (MDI1)
        {
            Name (_HID, "NXP0006")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x08B97000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000007B,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }
                }
            })
        }
    }

    Scope (_SB.MDI0)
    {
        Device (PHY1)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_UID, One)  // _UID: Unique ID
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "phy-channel", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "compatible", 
                        "ethernet-phy-id004d.d072"
                    }
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_SUN, Zero)  // _SUN: Slot User Number
            Name (_HID, "PNP0A08" /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, "PNP0A03" /* PCI Bus */)  // _CID: Compatible ID
            Name (_SEG, 0x02)  // _SEG: PCI Segment
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0001,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x00FF,             // Length
                        ,, )
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000000040000000, // Range Minimum
                        0x00000000FFFFFFFF, // Range Maximum
                        0x0000009000000000, // Translation Offset
                        0x00000000C0000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000009400000000, // Range Minimum
                        0x00000097FFFFFFFF, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x0000000400000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000000000000000, // Granularity
                        0x0000000000000000, // Range Minimum
                        0x000000000000FFFF, // Range Maximum
                        0x0000009010000000, // Translation Offset
                        0x0000000000010000, // Length
                        ,, , TypeStatic, DenseTranslation)
                })
                Return (RBUF) /* \_SB_.PCI0._CRS.RBUF */
            }

            Device (RES0)
            {
                Name (_HID, "NXP0016")  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0x03600000,         // Address Base
                        0x00100000,         // Address Length
                        )
                })
            }

            Name (_PRT, Package (0x04)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0x97
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x98
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x99
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x9A
                }
            })
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
                    CDW1 |= 0x10
                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0xFF                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                One, 
                                Package (0x03)
                                {
                                    0x02, 
                                    One, 
                                    One
                                }
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x01)
                            {
                                Package (0x04)
                                {
                                    Zero, 
                                    0x04, 
                                    Zero, 
                                    0x07
                                }
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x00){})
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                One, 
                                Buffer (0x18)
                                {
                                    /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x01, 0x00, 0x10, 0x00, 0x00, 0x0D, 0x3F, 0x00,  // ......?.
                                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                }
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }
                        Case (0x06)
                        {
                            Return (Package (0x04)
                            {
                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }
                            })
                        }
                        Case (0x07)
                        {
                            Return (Package (0x02)
                            {
                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Unicode ("PCI0")
                                }
                            })
                        }
                        Default
                        {
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (RES0)
        {
            Name (_HID, "NXP0016")  // _HID: Hardware ID
            Name (_CID, "PNP0C02" /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03600000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }

        Device (PCI1)
        {
            Name (_HID, "PNP0A08" /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, "PNP0A03" /* PCI Bus */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_SEG, 0x04)  // _SEG: PCI Segment
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0001,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x00FF,             // Length
                        ,, )
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000000040000000, // Range Minimum
                        0x00000000FFFFFFFF, // Range Maximum
                        0x000000A000000000, // Translation Offset
                        0x00000000C0000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x000000A400000000, // Range Minimum
                        0x000000A7FFFFFFFF, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x0000000400000000, // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    QWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000000000000000, // Granularity
                        0x0000000000000000, // Range Minimum
                        0x000000000000FFFF, // Range Maximum
                        0x000000A010000000, // Translation Offset
                        0x0000000000010000, // Length
                        ,, , TypeStatic, DenseTranslation)
                })
                Return (RBUF) /* \_SB_.PCI1._CRS.RBUF */
            }

            Device (RES1)
            {
                Name (_HID, "NXP0016")  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0x03800000,         // Address Base
                        0x00100000,         // Address Length
                        )
                })
            }

            Name (_PRT, Package (0x04)  // _PRT: PCI Routing Table
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    Zero, 
                    0xA1
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0xA2
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0xA3
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0xA4
                }
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    CreateDWordField (Arg3, Zero, CDW1)
                    CreateDWordField (Arg3, 0x04, CDW2)
                    CreateDWordField (Arg3, 0x08, CDW3)
                    SUPP = CDW2 /* \_SB_.PCI1._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI1._OSC.CDW3 */
                    CDW1 |= 0x10
                    CDW3 = CTRL /* \_SB_.PCI1.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0xFF                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                One, 
                                Package (0x03)
                                {
                                    0x03, 
                                    One, 
                                    One
                                }
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x01)
                            {
                                Package (0x04)
                                {
                                    Zero, 
                                    0x04, 
                                    Zero, 
                                    0x07
                                }
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x00){})
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                One, 
                                Buffer (0x18)
                                {
                                    /* 0000 */  0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x01, 0x00, 0x10, 0x00, 0x00, 0x0D, 0x3F, 0x00,  // ......?.
                                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                }
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }
                        Case (0x06)
                        {
                            Return (Package (0x04)
                            {
                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Zero
                                }
                            })
                        }
                        Case (0x07)
                        {
                            Return (Package (0x02)
                            {
                                Package (0x01)
                                {
                                    Zero
                                }, 

                                Package (0x01)
                                {
                                    Unicode ("PCI1")
                                }
                            })
                        }
                        Default
                        {
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (RES1)
        {
            Name (_HID, "NXP0016")  // _HID: Hardware ID
            Name (_CID, "PNP0C02" /* PNP Motherboard Resources */)  // _CID: Compatible ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03800000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }

        Device (RESP)
        {
            Name (_HID, "PNP0C02" /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000009000000000, // Range Minimum
                    0x000000900FFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000010000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x000000A000000000, // Range Minimum
                    0x000000A00FFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000010000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
        }
    }

    Scope (_SB)
    {
        Device (GED1)
        {
            Name (_HID, "ACPI0013" /* Generic Event Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                {
                    0x00000045,
                }
            })
            OperationRegion (PHO, SystemMemory, 0x02320000, 0x00010000)
            Field (PHO, DWordAcc, NoLock, Preserve)
            {
                Offset (0x0C), 
                GIER,   32, 
                GIMR,   32, 
                GICR,   32, 
                GBER,   32
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                GBER = 0x02000000
                GICR = 0x02000000
                GIMR = 0x02000000
                GIER = 0x02000000
            }

            Method (_EVT, 1, NotSerialized)  // _EVT: Event
            {
                If ((ToInteger (Arg0) == 0x45))
                {
                    GIER = 0x02000000
                    Notify (PWRB, 0x80) // Status Change
                }
            }
        }

        Device (PWRB)
        {
            Name (_HID, "PNP0C0C" /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB)
    {
        Device (RCPM)
        {
            Name (_HID, "NXP0015")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x01E34040,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x02)
                {
                    Package (0x02)
                    {
                        "little-endian", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "#fsl,rcpm-wakeup-cells", 
                        0x07
                    }
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (SAT0)
        {
            Name (_HID, "NXP0004")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CLS, Package (0x03)  // _CLS: Class Code
            {
                One, 
                0x06, 
                One
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03200000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000A5,
                    0x000000A6,
                    0x000000A7,
                }
                QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000700100520, // Range Minimum
                    0x0000000700100523, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000004, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
        }

        Device (SAT1)
        {
            Name (_HID, "NXP0004")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, One)  // _UID: Unique ID
            Name (_CLS, Package (0x03)  // _CLS: Class Code
            {
                One, 
                0x06, 
                One
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03210000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x000000A8,
                    0x000000A9,
                    0x000000AA,
                }
            })
        }

        Device (SAT2)
        {
            Name (_HID, "NXP0004")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CLS, Package (0x03)  // _CLS: Class Code
            {
                One, 
                0x06, 
                One
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03220000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000081,
                    0x00000082,
                    0x00000083,
                }
            })
        }

        Device (SAT3)
        {
            Name (_HID, "NXP0004")  // _HID: Hardware ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CLS, Package (0x03)  // _CLS: Class Code
            {
                One, 
                0x06, 
                One
            })
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03230000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000084,
                    0x00000085,
                    0x00000086,
                }
            })
        }
    }

    Scope (_SB)
    {
        Device (SPI0)
        {
            Name (_HID, "NXP0005")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02100000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000003A,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
                CLK /= 0x04
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }, 

                    Package (0x02)
                    {
                        "spi-num-chipselects", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "bus-num", 
                        Zero
                    }
                }
            })
        }

        Device (SPI1)
        {
            Name (_HID, "NXP0005")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02110000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000003A,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
                CLK /= 0x04
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }, 

                    Package (0x02)
                    {
                        "spi-num-chipselects", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "bus-num", 
                        One
                    }
                }
            })
        }

        Device (SPI2)
        {
            Name (_HID, "NXP0005")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (CLK, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x02120000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x0000003A,
                }
            })
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                CLK = ^^PCLK.CLK /* \_SB_.PCLK.CLK_ */
                CLK /= 0x04
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "clock-frequency", 
                        CLK
                    }, 

                    Package (0x02)
                    {
                        "spi-num-chipselects", 
                        0x04
                    }, 

                    Package (0x02)
                    {
                        "bus-num", 
                        0x02
                    }
                }
            })
        }
    }

    Scope (_SB.I2C0)
    {
        Name (SDB0, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0077, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.I2C0",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Name (SDB1, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0048, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.I2C0.MUX0.CH03",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Name (SDB2, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0018, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.I2C0.MUX0.CH01",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg0 == 0x09))
            {
                AVBL = Arg1
            }
        }

        OperationRegion (OPR1, GenericSerialBus, Zero, 0x0100)
        Field (OPR1, BufferAcc, NoLock, Preserve)
        {
            Connection (SDB0), 
            AccessAs (BufferAcc, AttribByte), 
            FLD0,   8, 
            Connection (SDB1), 
            AccessAs (BufferAcc, AttribByte), 
            FLD1,   8
        }

        Method (SCHN, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    DATA = 0x08
                }
                Case (One)
                {
                    DATA = 0x09
                }
                Case (0x02)
                {
                    DATA = 0x0A
                }
                Case (0x03)
                {
                    DATA = 0x0B
                }
                Case (0x04)
                {
                    DATA = 0x0C
                }
                Case (0x05)
                {
                    DATA = 0x0D
                }
                Case (0x06)
                {
                    DATA = 0x0E
                }
                Case (0x07)
                {
                    DATA = 0x0F
                }
                Default
                {
                    DATA = 0x09
                }

            }

            LEN = One
            FLD0 = BUFF /* \_SB_.I2C0.BUFF */
            Return (STAT) /* \_SB_.I2C0.STAT */
        }

        OperationRegion (OPR2, GenericSerialBus, Zero, 0x0100)
        Field (OPR2, BufferAcc, NoLock, Preserve)
        {
            Connection (SDB2), 
            AccessAs (BufferAcc, AttribByte), 
            FLD2,   8, 
            Offset (0x0B), 
            FLD3,   8, 
            Offset (0x22), 
            FLD4,   8
        }

        Name (BUFF, Buffer (0x22){})
        CreateByteField (BUFF, Zero, STAT)
        CreateByteField (BUFF, One, LEN)
        CreateByteField (BUFF, 0x02, DATA)
        Method (FSEL, 1, Serialized)
        {
            SCHN (One)
            Switch (Arg0)
            {
                Case (Zero)
                {
                    DATA = 0x41
                }
                Case (One)
                {
                    DATA = One
                }
                Default
                {
                    DATA = One
                }

            }

            LEN = One
            FLD2 = BUFF /* \_SB_.I2C0.BUFF */
            Return (STAT) /* \_SB_.I2C0.STAT */
        }

        Method (STMP, 1, Serialized)
        {
            Local0 = Zero
            If ((AVBL == One))
            {
                If ((Arg0 == Zero))
                {
                    SCHN (One)
                    LEN = One
                    BUFF = FLD3 /* \_SB_.I2C0.FLD3 */
                }
                Else
                {
                    SCHN (0x03)
                    LEN = One
                    BUFF = FLD1 /* \_SB_.I2C0.FLD1 */
                }

                If ((STAT == Zero))
                {
                    Local0 = DATA /* \_SB_.I2C0.DATA */
                }
            }

            Return (Local0)
        }

        Method (FSTA, 1, Serialized)
        {
            Local0 = Zero
            SCHN (One)
            LEN = One
            BUFF = FLD4 /* \_SB_.I2C0.FLD4 */
            If ((STAT == Zero))
            {
                Local0 = DATA /* \_SB_.I2C0.DATA */
            }

            Return (Local0)
        }

        Method (FOFF, 1, Serialized)
        {
            SCHN (One)
            LEN = One
            DATA = 0x55
            FLD4 = BUFF /* \_SB_.I2C0.BUFF */
            Return (STAT) /* \_SB_.I2C0.STAT */
        }

        Method (FONL, 1, Serialized)
        {
            SCHN (One)
            LEN = One
            DATA = 0x80
            FLD4 = BUFF /* \_SB_.I2C0.BUFF */
            Return (STAT) /* \_SB_.I2C0.STAT */
        }

        Method (FONH, 1, Serialized)
        {
            SCHN (One)
            LEN = One
            DATA = 0xCC
            FLD4 = BUFF /* \_SB_.I2C0.BUFF */
            Return (STAT) /* \_SB_.I2C0.STAT */
        }
    }

    Scope (_TZ)
    {
        Name (TRPP, 0x0CD2)
        Name (TRPC, 0x0E62)
        Name (TRP0, 0x0D35)
        Name (TRP1, 0x0CA0)
        Name (TRP2, 0x0DCC)
        Name (PLC0, One)
        Name (PLC1, One)
        Name (PLC2, One)
        Name (PLC3, One)
        Name (PLC4, One)
        Name (PLC5, One)
        Name (PLC6, One)
        Name (PLC7, Zero)
        Name (PLC8, Zero)
        OperationRegion (TMUR, SystemMemory, 0x01F80000, 0x00010000)
        Field (TMUR, DWordAcc, NoLock, Preserve)
        {
            TMR,    32, 
            TSR,    32, 
            TMSR,   32, 
            TMIR,   32, 
            Offset (0x20), 
            TIER,   32, 
            TIDR,   32, 
            Offset (0x30), 
            TISC,   32, 
            ASCR,   32, 
            CSCR,   32, 
            Offset (0x40), 
            HTCR,   32, 
            LTCR,   32, 
            TRCR,   32, 
            TFCR,   32, 
            TITR,   32, 
            TATR,   32, 
            ACTR,   32, 
            Offset (0x60), 
            LITR,   32, 
            LATR,   32, 
            MCTR,   32, 
            Offset (0x70), 
            RCTR,   32, 
            FCTR,   32, 
            Offset (0x80), 
            TCFG,   32, 
            SCFG,   32, 
            Offset (0x100), 
            ISR0,   32, 
            ASR0,   32, 
            Offset (0x110), 
            ISR1,   32, 
            ASR1,   32, 
            Offset (0x120), 
            ISR2,   32, 
            ASR2,   32, 
            Offset (0x130), 
            ISR3,   32, 
            ASR3,   32, 
            Offset (0x140), 
            ISR4,   32, 
            ASR4,   32, 
            Offset (0x150), 
            ISR5,   32, 
            ASR5,   32, 
            Offset (0x160), 
            ISR6,   32, 
            ASR6,   32, 
            Offset (0x304), 
            SAR0,   32, 
            Offset (0x314), 
            SAR1,   32, 
            Offset (0x324), 
            SAR2,   32, 
            Offset (0x334), 
            SAR3,   32, 
            Offset (0x344), 
            SAR4,   32, 
            Offset (0x354), 
            SAR5,   32, 
            Offset (0x364), 
            SAR6,   32, 
            Offset (0xF00), 
            EMR0,   32, 
            Offset (0xF08), 
            EMR1,   32, 
            EMR2,   32, 
            TCR0,   32, 
            TCR1,   32, 
            TCR2,   32, 
            TCR3,   32
        }

        OperationRegion (GPIO, SystemMemory, 0x02320000, 0x00010000)
        Field (GPIO, DWordAcc, NoLock, Preserve)
        {
            GDIR,   32
        }

        Method (GTMP, 1, Serialized)
        {
            Switch (Arg0)
            {
                Case (Zero)
                {
                    Local0 = ISR0 /* \_TZ_.ISR0 */
                }
                Case (One)
                {
                    Local0 = ISR1 /* \_TZ_.ISR1 */
                }
                Case (0x02)
                {
                    Local0 = ISR2 /* \_TZ_.ISR2 */
                }
                Case (0x03)
                {
                    Local0 = ISR3 /* \_TZ_.ISR3 */
                }
                Case (0x04)
                {
                    Local0 = ISR4 /* \_TZ_.ISR4 */
                }
                Case (0x05)
                {
                    Local0 = ISR5 /* \_TZ_.ISR5 */
                }
                Case (0x06)
                {
                    Local0 = ISR6 /* \_TZ_.ISR6 */
                }
                Default
                {
                    Local0 = ISR0 /* \_TZ_.ISR0 */
                }

            }

            Local0 = ((Local0 * 0x0A) + 0x02)
            Return (Local0)
        }

        PowerResource (FN1L, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local1 = Zero
                If ((\_SB.I2C0.AVBL == One))
                {
                    Local0 = \_SB.I2C0.FSTA (One)
                    If ((Local0 > 0x55))
                    {
                        Local1 = One
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }

                Return (Local1)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FONL (One)
                    \_SB.I2C0.FSEL (One)
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FOFF (One)
                }
            }
        }

        PowerResource (FN1H, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local1 = Zero
                If ((\_SB.I2C0.AVBL == One))
                {
                    Local0 = \_SB.I2C0.FSTA (One)
                    If ((Local0 > 0x80))
                    {
                        Local1 = One
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }

                Return (Local1)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FONH (One)
                    \_SB.I2C0.FSEL (One)
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FONL (One)
                }
            }
        }

        PowerResource (FN1F, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Local1 = Zero
                If ((GDIR & 0x20000000))
                {
                    Local1 = One
                }
                Else
                {
                    Local1 = Zero
                }

                Return (Local1)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                GDIR |= 0x20000000
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                GDIR &= 0xFFFFFFFFDFFFFFFF
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN1L
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C0
            })
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FSEL (One)
                }
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C0
            })
            Name (_PR0, Package (0x02)  // _PR0: Power Resources for D0
            {
                FN1L, 
                FN1H
            })
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FSEL (One)
                }
            }
        }

        Device (FAN2)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN1F
            })
        }

        Device (TMU)
        {
            Name (_HID, "NXP0012")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                TIDR = Zero
                TIER = Zero
                TMR = Zero
                TCR0 = 0x800000E6
                TCR1 = 0x8001017D
                TCFG = Zero
                SCFG = 0x35
                TCFG = One
                SCFG = 0x0154
                EMR0 = 0x51009C00
                EMR2 = 0x0800FFFE
                TMIR = 0x07
                SAR0 = 0x0E
                SAR1 = 0x0E
                SAR2 = 0x0E
                SAR3 = 0x0E
                SAR4 = 0x0E
                SAR5 = 0x0E
                SAR6 = 0x0E
                TMSR = 0x7F
                TMR = 0x80000000
            }
        }

        ThermalZone (THM0)
        {
            Name (_STR, Unicode ("system-thermal-zone-0"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_PSL, Package (0x04)  // _PSL: Passive List
            {
                \_SB.CLU6.CP12, 
                \_SB.CLU6.CP13, 
                \_SB.CLU7.CP14, 
                \_SB.CLU7.CP15
            })
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC0 = One
                }
                Else
                {
                    PLC0 = Zero
                }

                Notify (THM0, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (Zero))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM1)
        {
            Name (_STR, Unicode ("system-thermal-zone-1"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_PSL, Package (0x02)  // _PSL: Passive List
            {
                \_SB.CLU5.CP10, 
                \_SB.CLU5.CP11
            })
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC1 = One
                }
                Else
                {
                    PLC1 = Zero
                }

                Notify (THM1, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (One))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM2)
        {
            Name (_STR, Unicode ("system-thermal-zone-2"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC2 = One
                }
                Else
                {
                    PLC2 = Zero
                }

                Notify (THM1, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (0x02))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM3)
        {
            Name (_STR, Unicode ("system-thermal-zone-3"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC3 = One
                }
                Else
                {
                    PLC3 = Zero
                }

                Notify (THM1, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (0x03))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM4)
        {
            Name (_STR, Unicode ("system-thermal-zone-4"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC4 = One
                }
                Else
                {
                    PLC4 = Zero
                }

                Notify (THM1, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (0x04))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM5)
        {
            Name (_STR, Unicode ("system-thermal-zone-5"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_PSL, Package (0x02)  // _PSL: Passive List
            {
                \_SB.CLU4.CPU8, 
                \_SB.CLU4.CPU9
            })
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC5 = One
                }
                Else
                {
                    PLC5 = Zero
                }

                Notify (THM2, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (0x05))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM6)
        {
            Name (_STR, Unicode ("system-thermal-zone-6"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_PSL, Package (0x04)  // _PSL: Passive List
            {
                \_SB.CLU2.CPU4, 
                \_SB.CLU2.CPU5, 
                \_SB.CLU3.CPU6, 
                \_SB.CLU3.CPU7
            })
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    PLC6 = One
                }
                Else
                {
                    PLC6 = Zero
                }

                Notify (THM3, 0x81) // Thermal Trip Point Change
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Return (GTMP (0x06))
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (TRPP) /* \_TZ_.TRPP */
            }
        }

        ThermalZone (THM7)
        {
            Name (_STR, Unicode ("system-thermal-zone-7"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C0
            })
            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (TRP0) /* \_TZ_.TRP0 */
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (TRP1) /* \_TZ_.TRP1 */
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN1
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If ((\_SB.I2C0.AVBL == One))
                {
                    \_SB.I2C0.FSEL (One)
                    If (Arg0)
                    {
                        PLC7 = One
                    }
                    Else
                    {
                        PLC7 = Zero
                    }
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \_SB.I2C0.STMP (One)
                Local0 += 0x0111
                Local0 = ((Local0 * 0x0A) + 0x02)
                Return (Local0)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }
        }

        ThermalZone (THM8)
        {
            Name (_STR, Unicode ("system-thermal-zone-8"))  // _STR: Description String
            Name (_TZP, 0x96)  // _TZP: Thermal Zone Polling
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (TRP2) /* \_TZ_.TRP2 */
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN2
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Local0 = \_SB.I2C0.STMP (One)
                Local0 += 0x0111
                Local0 = ((Local0 * 0x0A) + 0x02)
                Return (Local0)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (TRPC) /* \_TZ_.TRPC */
            }
        }
    }

    Scope (_SB)
    {
        Device (USB0)
        {
            Name (_HID, "808622B7")  // _HID: Hardware ID
            Name (_CID, "PNP0D10" /* XHCI USB Controller with debug */)  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03100000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000070,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "dr_mode", 
                        "host"
                    }, 

                    Package (0x02)
                    {
                        "snps,quirk-frame-length-adjustment", 
                        0x20
                    }, 

                    Package (0x02)
                    {
                        "snps,dis_rxdet_inp3_quirk", 
                        One
                    }
                }
            })
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0x03, 
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
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                }
            }
        }

        Device (USB1)
        {
            Name (_HID, "808622B7")  // _HID: Hardware ID
            Name (_CID, "PNP0D10" /* XHCI USB Controller with debug */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x03110000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000071,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x03)
                {
                    Package (0x02)
                    {
                        "dr_mode", 
                        "host"
                    }, 

                    Package (0x02)
                    {
                        "snps,quirk-frame-length-adjustment", 
                        0x20
                    }, 

                    Package (0x02)
                    {
                        "snps,dis_rxdet_inp3_quirk", 
                        One
                    }
                }
            })
            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PRT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0x06, 
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
                        Zero, 
                        0xFF, 
                        Zero, 
                        Zero
                    })
                }
            }
        }
    }
}

