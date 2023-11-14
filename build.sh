# Generate the build directory
cmake --preset linux-gcc-x64 -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON

# Build non-editor binaries and install them into the examples project
cmake --build --preset linux-gcc-x64-distribution

# Build editor binaries and install them into the examples project
cmake --build --preset linux-gcc-x64-editor-distribution

mkdir /output

# Install non-editor binaries into your project, under `addons/godot-jolt`
cmake --install build/linux-gcc-x64 --config Distribution --prefix /output

# Install editor binaries into your project, under `addons/godot-jolt`
cmake --install build/linux-gcc-x64 --config EditorDistribution --prefix /output