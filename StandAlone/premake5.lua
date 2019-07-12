project "StandAlone"
    kind "StaticLib"
    language "C++"
    systemversion "latest"
    staticruntime "on"
    cppdialect "C++17"
    pic "on"

    targetdir ("../../../bin/" .. outputdir .. "/%{prj.group}/%{prj.name}")
    objdir ("../../../bin-int/" .. outputdir .. "/%{prj.group}/%{prj.name}")

    files
    {
        "StandAlone.cpp",
        "ResourceLimits.cpp",
        "DirStackFileIncluder.h",
        "ResourceLimits.h",
        "Worklist.h"
    }

    defines
    {
        "AMD_EXTENSIONS=true",
        "NV_EXTENSIONS=true",
        "GLSLANG_OSINCLUDE_WIN32=true",
        "ENABLE_OPT=false",
        "ENABLE_HLSL=true",
        "_CRT_SECURE_NO_WARNINGS"
    }

    links
    {
        "SPIRV",
        "GLSLANG",
    }

    filter "system:linux"
        links
        {
            "pthread"
        }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
        optimize "On"

	filter "configurations:RelWithDebInfo"
		runtime "Release"
        optimize "On"