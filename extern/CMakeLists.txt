set(SLINT_FEATURE_BACKEND_QT OFF)
add_subdirectory(slint)
if(WIN32)
    find_package(OpenGL REQUIRED)
    target_link_libraries(
        Slint
        INTERFACE
            OpenGL::GL
            opengl32
            dwmapi
            d3dcompiler
            uxtheme
            imm32
            propsys
            comctl32
    )
elseif(APPLE)
    find_library(COREFOUNDATION_LIBRARY CoreFoundation)
    find_library(COREGRAPHICS_LIBRARY CoreGraphics)
    find_library(CORESERVICES_LIBRARY CoreServices)
    find_library(FOUNDATION_LIBRARY Foundation)
    find_library(APPKIT_LIBRARY AppKit)
    find_library(COREVIDEO_LIBRARY CoreVideo)
    find_library(CARBON_LIBRARY Carbon)
    find_library(METAL_LIBRARY Metal)
    find_library(OPENGL_LIBRARY OpenGL)

    target_link_libraries(
        Slint
        INTERFACE
            ${COREFOUNDATION_LIBRARY}
            ${COREGRAPHICS_LIBRARY}
            ${CORESERVICES_LIBRARY}
            ${FOUNDATION_LIBRARY}
            ${APPKIT_LIBRARY}
            ${COREVIDEO_LIBRARY}
            ${CARBON_LIBRARY}
            ${METAL_LIBRARY}
            ${OPENGL_LIBRARY}
    )
endif()
