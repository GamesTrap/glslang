project "SPIRV"
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
        "%{IncludeDir.SPIRV}/GlslangToSpv.cpp",
        "%{IncludeDir.SPIRV}/InReadableOrder.cpp",
        "%{IncludeDir.SPIRV}/Logger.cpp",
        "%{IncludeDir.SPIRV}/SpvBuilder.cpp",
        "%{IncludeDir.SPIRV}/SpvPostProcess.cpp",
        "%{IncludeDir.SPIRV}/doc.cpp",
        "%{IncludeDir.SPIRV}/SpvTools.cpp",
        "%{IncludeDir.SPIRV}/disassemble.cpp",
        "%{IncludeDir.SPIRV}/bitutils.h",
        "%{IncludeDir.SPIRV}/spirv.hpp",
        "%{IncludeDir.SPIRV}/GLSL.std.450.h",
        "%{IncludeDir.SPIRV}/GLSL.ext.EXT.h",
        "%{IncludeDir.SPIRV}/GLSL.ext.KHR.h",
        "%{IncludeDir.SPIRV}/GlslangToSpv.h",
        "%{IncludeDir.SPIRV}/hex_float.h",
        "%{IncludeDir.SPIRV}/Logger.h",
        "%{IncludeDir.SPIRV}/SpvBuilder.h",
        "%{IncludeDir.SPIRV}/spvIR.h",
        "%{IncludeDir.SPIRV}/doc.h",
        "%{IncludeDir.SPIRV}/SpvTools.h",
        "%{IncludeDir.SPIRV}/disassemble.h"
    }

    defines
    {
        "AMD_EXTENSIONS=true",
        "NV_EXTENSIONS=true",
        "GLSLANG_OSINCLUDE_WIN32=true",
        "ENABLE_OPT=false",
        "ENABLE_HLSL=true"
    }

    includedirs
    {
        "%{IncludeDir.GLSLANG}"
    }

    links
    {
        "HLSL",
        "OGLCOMPILER",
        "OSDEPENDENT",
        "GLSLANG"
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

project "SPVRemapper"
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
        "%{IncludeDir.SPIRV}/GlslangToSpv.cpp",
        "%{IncludeDir.SPIRV}/SPVRemapper.cpp",
        "%{IncludeDir.SPIRV}/doc.cpp",
        "%{IncludeDir.SPIRV}/SPVRemapper.h",
        "%{IncludeDir.SPIRV}/doc.h"
    }
    
    defines
    {
        "AMD_EXTENSIONS=true",
        "NV_EXTENSIONS=true",
        "GLSLANG_OSINCLUDE_WIN32=true",
        "ENABLE_OPT=false",
        "ENABLE_HLSL=true"
    }
    
    links
    {
        "HLSL",
        "OGLCOMPILER",
        "OSDEPENDENT",
        "GLSLANG"
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