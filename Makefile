CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw3 -lvulkan -lm -lpthread -lX11 -lXxf86vm -lXrandr -lXi -ldl

SHORTLDFLAGS = -lglfw3 -lvulkan -lm -lpthread -ldl

VulkanTest: *.cpp *.hpp
	g++ $(CFLAGS) -o VulkanTest *.cpp $(LDFLAGS)

.Phony: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest


