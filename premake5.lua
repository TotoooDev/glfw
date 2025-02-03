project "glfw"
    kind "StaticLib"
    language "C"
    targetdir "bin/%{cfg.buildcfg}"
    
    files {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/internal.h",
        "src/mapping.h",
        "src/mapping.h.in",
        "src/monitor.c",
        "src/null_init.c",
        "src/null_joystick.c",
        "src/null_joystick.h",
        "src/null_monitor.c",
        "src/null_platform.h",
        "src/null_window.c",
        "src/platform.c",
        "src/platform.h",
        "src/vulkan.c",
        "src/window.c",
    }

    filter "system:linux"
        systemversion "latest"
        pic "On"

        defines "_GLFW_X11"

        files {
            "src/egl_context.c",
            "src/glx_context.c",
            "src/linux_joystick.h",
            "src/linux_joystick.c",
            "src/osmesa_context.c",
            "src/posix_module.c",
            "src/posix_poll.c",
            "src/posix_poll.h",
            "src/posix_thread.c",
            "src/posix_thread.h",
            "src/posix_time.c",
            "src/posix_time.h",
            "src/x11_init.c",
            "src/x11_monitor.c",
            "src/x11_platform.h",
            "src/x11_window.c",
            "src/xkb_unicode.c",
            "src/xkb_unicode.h",
        }

    filter "configurations:debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:debug"
        runtime "Release"
        optimize "Speed"
        symbols "Off"
