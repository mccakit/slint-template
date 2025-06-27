#include "hello.h"

int WinMain(int argc, char **argv)
{
    auto app = MyApp::create();
    app->run();
    return 0;
}
