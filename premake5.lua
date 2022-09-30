
project "GLFW"
    kind        "StaticLib"
    language    "C"
    targetdir   (ThirdPartiesBinDir)
    objdir      (ThirdPartiesObjDir)
    includedirs "include"

    files {
        "include/GLFW/*.h",
        "src/*.h",
        "src/*.c"
    }

    filter { "files:**.c" }
        flags { "NoPCH" }
    filter {}

    --- Defines required by GLFW: https://www.glfw.org/docs/latest/compile.html
    filter "system:Windows"
        defines "_GLFW_WIN32"

function UseGLFW()
    includedirs "include"
    links       "GLFW"
end