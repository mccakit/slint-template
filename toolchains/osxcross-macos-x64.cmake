set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_PROCESSOR X86_64)

set(TOOLCHAIN_PREFIX /home/mccakit/osxcross/target/bin/x86_64-apple-darwin24.5)
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-clang)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-clang++)
set(CMAKE_AR ${TOOLCHAIN_PREFIX}-ar)
set(CMAKE_LINKER_TYPE LLD)

set(CMAKE_OSX_SYSROOT /home/mccakit/osxcross/target/SDK/MacOSX15.5.sdk)
set(CMAKE_OSX_DEPLOYMENT_TARGET 15.5)
set(Rust_CARGO_TARGET x86_64-apple-darwin)
