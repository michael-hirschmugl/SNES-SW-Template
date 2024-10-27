# SNES-SW-Template

https://github.com/vhelin/wla-dx
https://github.com/devinacker/bsnes-plus

## Initial Setup
- `git submodule init`
- `git submodule update`

## Build WLA-DX
- `mkdir build && cd build`
- `cmake ..`
- `cmake --build . --config Release`

## Build BSNES-Plus
- `sudo pacman -S base-devel qt5-base qt5-multimedia qt5-tools libx11 mesa`
- `sudo pacman -S libao`
- in `CpuArch.c` change `register _b asm("%bx");` to `register int _b asm("%bx");`
- `cd bsnes`
- `make -j$(nproc)`

## Build SNES Software
- Enter `src/`
- run `make`