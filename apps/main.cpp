#include "hello.h"

int main(int argc, char **argv)
{
    auto app = MyApp::create();
    app->run();
    return 0;
}
