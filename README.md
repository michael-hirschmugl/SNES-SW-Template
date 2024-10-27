# SNES Software Project Template

This repository provides a foundational template for developing SNES software projects. It includes sample code that demonstrates core functionality such as graphics rendering, audio processing, and controller input handling on the SNES hardware. Originally designed for an SNES drone emulation project, the template now serves as a flexible starting point for creating new SNES applications.

The project structure supports easy modification and expansion, making it suitable for various SNES-based software development needs. Key features include modularized assembly code, preconfigured build scripts, and sample routines to manage graphics, audio, and input, ensuring efficient integration with SNES emulators like BSNES.

Submodules:
- https://github.com/vhelin/wla-dx
- https://github.com/devinacker/bsnes-plus

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

## Makefile Build Options

### Standard Build

To build and run the project in the default mode, use the following command:

```bash
make template.smc
```

This will assemble and link the project, create a `template.smc` file, and run it in the `bsnes` emulator. After running, the `.smc` file will be deleted from the output directory (`../out/`).

### Release Build

To create a release version, use the `release` target with an optional `NAME` argument:

```bash
make release NAME=my_project.smc
```

This will generate a `.smc` file with the specified project name (e.g., `my_project.smc`) in the output directory (`../out/`). The release version is not deleted after running, making it easy to keep the built ROM file.
