/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat, Mon Jul 11 16:01:34 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000277 (631)
 *     Revision         0x02
 *     Checksum         0x50
 *     OEM ID           "RPIFDN"
 *     OEM Table ID     "RPI4EMMC"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "RPIFDN", "RPI4EMMC", 0x00000002)
{
    Scope (\_SB)
    {
        Device (GDV1)
        {
            Name (_HID, "ACPI0004" /* Module Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000100,         // Address Length
                    _Y29)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (^RBUF, \_SB.GDV1._Y29._BAS, RBAS)  // _BAS: Base Address
                RBAS = 0xFE340000
                Return (^RBUF) /* \_SB_.GDV1.RBUF */
            }

            Name (DMTR, ResourceTemplate ()
            {
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x00000000C0000000, // Range Minimum
                    0x00000000FFFFFFFF, // Range Maximum
                    0xFFFFFFFF40000000, // Translation Offset
                    0x0000000040000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Name (DMNT, ResourceTemplate ()
            {
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x000000FFFFFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000010000000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_DMA, 0, Serialized)  // _DMA: Direct Memory Access
            {
                OperationRegion (CHPR, SystemMemory, 0xFC404000, 0x04)
                Field (CHPR, DWordAcc, NoLock, Preserve)
                {
                    SOCI,   32
                }

                If (((SOCI & 0xFF) >= 0x20))
                {
                    Return (^DMNT) /* \_SB_.GDV1.DMNT */
                }
                Else
                {
                    Return (^DMTR) /* \_SB_.GDV1.DMTR */
                }
            }

            Device (SDC3)
            {
                Name (_HID, "BRCME88C")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
                Name (_S1D, One)  // _S1D: S1 Device State
                Name (_S2D, One)  // _S2D: S2 Device State
                Name (_S3D, One)  // _S3D: S3 Device State
                Name (_S4D, One)  // _S4D: S4 Device State
                Name (SDMA, 0x01)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000100,         // Address Length
                        _Y2A)
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x0000009E,
                    }
                })
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (^RBUF, \_SB.GDV1.SDC3._Y2A._BAS, RBAS)  // _BAS: Base Address
                    RBAS = 0xFE340000
                    Return (^RBUF) /* \_SB_.GDV1.SDC3.RBUF */
                }

                Name (DSD1, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "sdhci-caps-mask", 
                            0x0000000500080000
                        }
                    }
                })
                Name (DSD2, Package (0x02)
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "sdhci-caps-mask", 
                            0x0000000504480000
                        }
                    }
                })
                Method (_DSD, 0, Serialized)  // _DSD: Device-Specific Data
                {
                    If ((SDMA == Zero))
                    {
                        Return (^DSD2) /* \_SB_.GDV1.SDC3.DSD2 */
                    }
                    Else
                    {
                        Return (^DSD1) /* \_SB_.GDV1.SDC3.DSD1 */
                    }
                }

                Device (SDMM)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Zero)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }
}

