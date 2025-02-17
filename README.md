# Assembly: Potential Arithmetic Overflow in Memory Access

This repository demonstrates a common error in assembly programming involving potential arithmetic overflow and subsequent memory access violations.

## Bug Description
The provided assembly code snippet features a potential vulnerability to arithmetic overflow during memory access.  The code accesses an array element using an index calculated by `ebx + ecx * 4`. If `ecx` is too large, this operation could overflow, leading to an out-of-bounds memory access. This results in unpredictable program behavior, including crashes (segmentation faults).

## Solution
The solution involves implementing checks to ensure `ecx` remains within valid bounds before performing the memory access.
