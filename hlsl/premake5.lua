project "HLSL"
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
        "hlslAttributes.cpp",
        "hlslParseHelper.cpp",
        "hlslScanContext.cpp",
        "hlslOpMap.cpp",
        "hlslTokenStream.cpp",
        "hlslGrammar.cpp",
        "hlslParseables.cpp",
        "hlslAttributes.h",
        "hlslParseHelper.h",
        "hlslTokens.h",
        "hlslScanContext.h",
        "hlslOpMap.h",
        "hlslTokenStream.h",
        "hlslGrammar.h",
        "hlslParseables.h"
    }

    defines
    {
        "AMD_EXTENSIONS=true",
        "NV_EXTENSIONS=true",
        "GLSLANG_OSINCLUDE_WIN32=true",
        "ENABLE_OPT=false",
        "ENABLE_HLSL=true"
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