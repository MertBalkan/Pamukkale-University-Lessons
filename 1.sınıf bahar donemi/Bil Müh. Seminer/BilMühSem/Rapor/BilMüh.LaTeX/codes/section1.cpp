#include <GL/glew.h>
#include <GLFW/glfw3.h>

int main()
{
    GLFWwindow* window;

    if (!glfwInit())
        return -1;
    
    window = glfwCreateWindow(640, 480, "Hello");
    
    if (!window) { glfwTerminate(); }

    glfwMakeContextCurrent(window);