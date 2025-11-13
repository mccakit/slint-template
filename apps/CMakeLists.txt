add_executable(main main.cpp)
set(CMAKE_PREFIX_PATH "/home/mccakit/dev/slint/mingw-x64")
find_package(Slint REQUIRED)
if(WIN32)
    target_link_libraries(Slint::Slint INTERFACE
        ntdll
        ws2_32
        userenv
        shlwapi
        dwrite
        propsys
        dwmapi
        uxtheme
        imm32
        opengl32
        comctl32
    )
endif()
set_property(TARGET main PROPERTY SLINT_EMBED_RESOURCES embed-files)
slint_target_sources(main hello.slint)
target_link_libraries(main PRIVATE Slint::Slint)
