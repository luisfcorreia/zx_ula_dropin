# AGENTS.md - ZX Spectrum 48K ULA Drop-in Replacement

## Project Type
Verilog/CPLD hardware project targeting Xilinx XC95144XL TQ100

## Build Commands
```bash
source ~/14.7/ISE_DS/settings64.sh 
./build.sh    # Run full toolchain: xst -> ngdbuild -> cpldfit -> hprep6
./clean.sh    # Remove all generated files except source/config
```

## Toolchain
- **Synthesis**: Xilinx XST (`xst -ifn ula_zx48k.xst`)
- **Implementation**: ISE tools (ngdbuild, cpldfit, hprep6)
- **Output**: JEDEC file (`ula_zx48k.jed`) for CPLD programming

## Source Files
| File | Purpose |
|------|---------|
| `ula_zx48k.v` | Main Verilog source |
| `ula_zx48k.ucf` | User Constraints (pin mapping) |
| `ula_zx48k.xst` | XST synthesis options |
| `ula_zx48k.prj` | Project file (single Verilog source) |

## Hardware Target
- Xilinx XC95144XL-TQ100 (144 macrocells, 5V-tolerant I/O)
- Pin-compatible with Ferranti ULA 6C001E-7 (40-pin DIP)

## Build Note
- Use relaxed fitter constraints: `-pterms 16 -inputs 12` if cpldfit fails with "Cannot place signal"
