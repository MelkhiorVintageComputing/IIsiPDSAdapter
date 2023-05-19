# PDS Adapter for the Macintosh IIsi

This repository contains recreated PDS adapters for the Macintosh IIsi.

They include a small switch to select the FPU clock, either the CPU clock (20 MHz) or the on-board oscillator (whatever 5V, DIP-8 or DIP-14 oscillator is soldered).

## PLCC

MC68882 FPU tested and working at 20 MHz (system clock)

MC68882 FPU tested and working at 25 MHz (on-board oscillator).

So far 32 MHz attempts have failed, perhaps due to board/assmembly issue, perhaps due to the FPU itself. Higher speed not attempted.

The PDS expansion has not yet been tested due to lack of hardware.


## PGA

MC68882 FPU tested and working at 20 MHz (system clock)

MC68882 FPU tested and working at 40 MHz (on-board oscillator), using a genuine XC68882RC40

The PDS expansion has not yet been tested due to lack of hardware.
