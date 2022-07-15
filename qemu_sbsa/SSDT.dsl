/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT, Fri Jul  8 10:51:51 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A2 (162)
 *     Revision         0x02
 *     Checksum         0x79
 *     OEM ID           "LINARO"
 *     OEM Table ID     "SBSAQEMU"
 *     OEM Revision     0x20200810 (538970128)
 *     Compiler ID      "LNRO"
 *     Compiler Version 0x00000001 (1)
 */
DefinitionBlock ("", "SSDT", 2, "LINARO", "SBSAQEMU", 0x20200810)
{
    Scope (_SB)
    {
        Device (C000)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x0000)  // _UID: Unique ID
        }

        Device (C001)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x0001)  // _UID: Unique ID
        }

        Device (C002)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x0002)  // _UID: Unique ID
        }

        Device (C003)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x0003)  // _UID: Unique ID
        }
    }
}

