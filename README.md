# SPA DZ3 - Dijkstra Pathfinder

This is the polished SFML version of SPA DZ3. It covers the empty-grid case from Zadatak 1 and the wall-avoidance case from Zadatak 2 in one interactive app.

## Folder Map

```text
SPA-DZ-03-Rjesenje/
├── README.md
├── Makefile
├── CMakeLists.txt
├── run.sh
├── run.bat
├── examples/
│   └── zidovi.txt
└── src/
    ├── main.cpp
    └── GridPath.hpp
```

Generated folders are ignored:

- `bin/` - compiled app
- `build/` - CMake output

## Submission Note

I used CMake because the project was developed on Linux, where it is the most convenient portable build setup for an SFML C++ project. The launcher files (`run.sh` and `run.bat`) are only convenience wrappers so the program is easier to start; they do not replace the actual C++ source or build configuration.

## Run

Linux/macOS:

```bash
./run.sh
```

Or:

```bash
make run
```

Windows, with `g++` and SFML available:

```text
run.bat
```

## Build

```bash
make
```

Or with CMake:

```bash
cmake -S . -B build
cmake --build build
```

## Check

This validates the demo path without opening the SFML window:

```bash
make check
```

Expected result:

```text
SFML provjera OK: put ima 59 koraka, obradjeno cvorova: 790.
```

## Controls

- `Space` or `Enter` - run Dijkstra
- `W` - wall editing mode
- `A` - place start point
- `B` - place goal point
- `C` - clear walls
- `D` - restore the demo wall from the assignment
- `+` / `-` - change animation speed
- Left drag - add walls in wall mode
- Right drag - remove walls in wall mode
- `Esc` - close

## Wall Files

The app starts with the assignment demo wall. A custom wall file can be loaded:

```bash
./run.sh --walls examples/zidovi.txt
```

Wall files use 1-based coordinates:

```text
redak stupac
```
