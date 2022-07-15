/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Mon Jul 11 16:01:34 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000244 (580)
 *     Revision         0x05
 *     Checksum         0x20
 *     OEM ID           "RPIFDN"
 *     OEM Table ID     "RPI4XHCI"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 5, "RPIFDN", "RPI4XHCI", 0x00000002)
{
    Scope (\_SB)
    {
        Device (SCB0)
        {
            Name (_HID, "ACPI0004" /* Module Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                        0x0000000000000000, // Granularity
                        0x0000000600000000, // Range Minimum
                        0x0000000600000000, // Range Maximum
                        0x0000000000000000, // Translation Offset
                        0x0000000000000001, // Length
                        ,, _Y2B, AddressRangeMemory, TypeStatic)
                })
                CreateQWordField (RBUF, \_SB.SCB0._CRS._Y2B._MAX, MMBE)  // _MAX: Maximum Base Address
                CreateQWordField (RBUF, \_SB.SCB0._CRS._Y2B._LEN, MMLE)  // _LEN: Length
                MMBE += 0x0FFF
                MMLE += 0x0FFF
                Return (RBUF) /* \_SB_.SCB0._CRS.RBUF */
            }

            Name (_DMA, ResourceTemplate ()  // _DMA: Direct Memory Access
            {
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x00000000BFFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x00000000C0000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Device (XHC0)
            {
                Name (_HID, "PNP0D10" /* XHCI USB Controller with debug */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
                Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        QWordMemory (ResourceConsumer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                            0x0000000000000000, // Granularity
                            0x0000000600000000, // Range Minimum
                            0x0000000600000000, // Range Maximum
                            0x0000000000000000, // Translation Offset
                            0x0000000000000001, // Length
                            ,, _Y2C, AddressRangeMemory, TypeStatic)
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x000000AF,
                        }
                    })
                    CreateQWordField (RBUF, \_SB.SCB0.XHC0._CRS._Y2C._MAX, MMBE)  // _MAX: Maximum Base Address
                    CreateQWordField (RBUF, \_SB.SCB0.XHC0._CRS._Y2C._LEN, MMLE)  // _LEN: Length
                    MMBE += 0x0FFF
                    MMLE += 0x0FFF
                    Return (RBUF) /* \_SB_.SCB0.XHC0._CRS.RBUF */
                }

                Method (_INI, 0, Serialized)  // _INI: Initialize
                {
                    OperationRegion (PCFG, SystemMemory, 0xFD508000, 0x1000)
                    Field (PCFG, AnyAcc, NoLock, Preserve)
                    {
                        VNID,   16, 
                        DVID,   16, 
                        CMND,   16, 
                        STAT,   16
                    }

                    Debug = "xHCI enable"
                    CMND = 0x06
                }

                Name (DSMU, ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == DSMU))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x41                                             // A
                                })
                            }
                            Case (0x06)
                            {
                                Return (Buffer (One)
                                {
                                     0x01                                             // .
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
        }
    }
}

