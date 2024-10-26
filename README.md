# SNES-SW-Template

## Installing WLA-DX
- mkdir build && cd build
- cmake ..
- cmake --build . --config Release

## Installing BSNES-Plus
- sudo pacman -S base-devel qt5-base qt5-multimedia qt5-tools libx11 mesa
- sudo pacman -S libao
- cd bsnes
- make -j$(nproc)

