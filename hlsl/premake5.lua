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
        "%{IncludeDir.HLSL}/hlslAttributes.cpp",
        "%{IncludeDir.HLSL}/hlslParseHelper.cpp",
        "%{IncludeDir.HLSL}/hlslScanContext.cpp",
        "%{IncludeDir.HLSL}/hlslOpMap.cpp",
        "%{IncludeDir.HLSL}/hlslTokenStream.cpp",
        "%{IncludeDir.HLSL}/hlslGrammar.cpp",
        "%{IncludeDir.HLSL}/hlslParseables.cpp",
        "%{IncludeDir.HLSL}/hlslAttributes.h",
        "%{IncludeDir.HLSL}/hlslParseHelper.h",
        "%{IncludeDir.HLSL}/hlslTokens.h",
        "%{IncludeDir.HLSL}/hlslScanContext.h",
        "%{IncludeDir.HLSL}/hlslOpMap.h",
        "%{IncludeDir.HLSL}/hlslTokenStream.h",
        "%{IncludeDir.HLSL}/hlslGrammar.h",
        "%{IncludeDir.HLSL}/hlslParseables.h"
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