add_executable(main main.cpp)
set_property(TARGET main PROPERTY SLINT_EMBED_RESOURCES embed-files)
slint_target_sources(main hello.slint)
target_link_libraries(main PRIVATE Slint::Slint)
