/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Mon Jul 11 16:01:34 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000148 (328)
 *     Revision         0x02
 *     Checksum         0x9D
 *     OEM ID           "RPIFDN"
 *     OEM Table ID     "RPITHFAN"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190509 (538510601)
 */
DefinitionBlock ("", "SSDT", 2, "RPIFDN", "RPITHFAN", 0x00000002)
{
    External (_SB_.EC00, DeviceObj)
    External (_SB_.EC00.TZ00, DeviceObj)

    Scope (\_SB.EC00)
    {
        Name (GIOP, 0x13)
        Name (FTMP, 0x3C)
        PowerResource (PFAN, 0x00, 0x0000)
        {
            OperationRegion (GPIO, SystemMemory, 0xFE200000, 0x1000)
            Field (GPIO, DWordAcc, NoLock, Preserve)
            {
                Offset (0x1C), 
                GPS0,   32, 
                GPS1,   32, 
                RES1,   32, 
                GPC0,   32, 
                GPC1,   32, 
                RES2,   32, 
                GPL1,   32, 
                GPL2,   32
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((GPL1 & (One << GIOP)))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                GPS0 = (One << GIOP)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                GPC0 = (One << GIOP)
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PFAN
            })
        }
    }

    Scope (\_SB.EC00.TZ00)
    {
        Method (_AC0, 0, NotSerialized)  // _ACx: Active Cooling, x=0-9
        {
            Return (((FTMP * 0x0A) + 0x0AAC))
        }

        Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
        {
            \_SB.EC00.FAN0
        })
    }
}

