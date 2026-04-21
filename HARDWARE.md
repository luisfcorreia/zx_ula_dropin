# ULA Hardware description

## I/O pins

// =============================================================================
// 40-PIN SIGNAL MAPPING (Ferranti 6C001E-7 — exact)
// =============================================================================

  Pin  1  cas_n      /CAS  DRAM column address strobe    (output)
  Pin  2  wr_n       /WR   CPU write strobe              (input)
  Pin  3  rd_n       /RD   CPU read  strobe              (input)
  Pin  4  we_n       /WE   DRAM write enable             (output)
  Pin  5  a[0]       A0    DRAM multiplexed address 0    (output)
  Pin  6  a[1]       A1    DRAM multiplexed address 1    (output)
  Pin  7  a[2]       A2    DRAM multiplexed address 2    (output)
  Pin  8  a[3]       A3    DRAM multiplexed address 3    (output)
  Pin  9  a[4]       A4    DRAM multiplexed address 4    (output)
  Pin 10  a[5]       A5    DRAM multiplexed address 5    (output)
  Pin 11  a[6]       A6    DRAM multiplexed address 6    (output)
  Pin 12  int_n      /INT  Interrupt to CPU              (output)
  Pin 13  —          +5V   Power (not in module)
  Pin 14  —          +5V   Power (not in module)
  Pin 15  u          U     Colour-difference Cb          (output)
  Pin 16  v          V     Colour-difference Cr          (output)
  Pin 17  y_n        /Y    Inverted luma + composite sync(output)
  Pin 18  d[0]       D0    Data bus bit 0                (bidirectional)
  Pin 19  t[0]       T0    Keyboard column 0             (input)
  Pin 20  t[1]       T1    Keyboard column 1             (input)
  Pin 21  d[1]       D1    Data bus bit 1                (bidirectional)
  Pin 22  d[2]       D2    Data bus bit 2                (bidirectional)
  Pin 23  t[2]       T2    Keyboard column 2             (input)
  Pin 24  t[3]       T3    Keyboard column 3             (input)
  Pin 25  d[3]       D3    Data bus bit 3                (bidirectional)
  Pin 26  t[4]       T4    Keyboard column 4             (input)
  Pin 27  d[4]       D4    Data bus bit 4                (bidirectional)
  Pin 28  sound      SOUND Audio I/O: EAR in / MIC+SPK out (bidirectional)
  Pin 29  d[5]       D5    Data bus bit 5                (bidirectional)
  Pin 30  d[6]       D6    Data bus bit 6                (bidirectional)
  Pin 31  d[7]       D7    Data bus bit 7                (bidirectional)
  Pin 32  clock      CLOCK 3.5 MHz contention-gated CPU clock (output)
  Pin 33  io_ula_n   /IO-ULA Pre-decoded port select: A0|/IORQ (input)
  Pin 34  rom_cs_n   /ROM CS ROM chip select (output, decoded by ULA)
  Pin 35  ras_n      /RAS  DRAM row address strobe       (output)
  Pin 36  a14        A14   Z80 address bit 14            (input)
  Pin 37  a15        A15   Z80 address bit 15            (input)
  Pin 38  mreq_n     /MREQ CPU memory request            (input)
  Pin 39  q          Q     14.318 MHz oscillator input → GCK pin
  Pin 40  —          GND   Ground (not in module)

