#ifndef __G_HTTP_CORE__
#define __G_HTTP_CORE__
#include <iostream>
namespace ghttp {
    class EventLoop {
    private:
    public:
	EventLoop();
	~EventLoop();
	int Run();
    };
}
#endif
