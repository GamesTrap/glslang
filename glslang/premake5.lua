include "Dependencies/glslang/hlsl"
include "Dependencies/glslang/OGLCompilersDLL"

filter "system:windows"
    include "Dependencies/glslang/glslang/OSDependent/Windows"

filter "system:linux"
    include "Dependencies/glslang/glslang/OSDependent/Unix"

filter "system:macosx"
    include "Dependencies/glslang/glslang/OSDependent/Unix"

project "glslang"
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
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/glslang.y",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/glslang_tab.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/attribute.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Constant.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/iomapper.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/InfoSink.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Initialize.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/IntermTraverse.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Intermediate.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/ParseContextBase.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/ParseHelper.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/PoolAlloc.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/RemoveTree.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Scan.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/ShaderLang.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/SymbolTable.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Versions.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/intermOut.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/limits.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/linkValidate.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/parseConst.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/reflection.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/Pp.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpAtom.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpContext.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpScanner.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpTokens.cpp",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/propagateNoContraction.cpp",
        "%{IncludeDir.GLSLANG}/glslang/GenericCodeGen/CodeGen.cpp",
        "%{IncludeDir.GLSLANG}/glslang/GenericCodeGen/Link.cpp",
        "%{IncludeDir.GLSLANG}/glslang/Public/ShaderLang.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/arrays.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/BaseTypes.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/Common.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/ConstantUnion.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/InfoSink.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/InitializeGlobals.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/intermediate.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/PoolAlloc.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/ResourceLimits.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/revision.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/ShHandle.h",
        "%{IncludeDir.GLSLANG}/glslang/Include/Types.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/attribute.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/glslang_tab.cpp.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/gl_types.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Initialize.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/iomapper.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/LiveTraverser.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/localintermediate.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/ParseHelper.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/reflection.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/RemoveTree.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Scan.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/ScanContext.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/SymbolTable.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/Versions.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/parseVersions.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/propagateNoContraction.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpContext.h",
        "%{IncludeDir.GLSLANG}/glslang/MachineIndependent/preprocessor/PpTokens.h"
    }

    includedirs
    {
        "%{IncludeDir.OGLCOMPILER}",
        "%{IncludeDir.OSDEPENDENT}",
        "%{IncludeDir.HLSL}"
    }

    links
    {
        "HLSL",
        "OGLCompiler",
        "OSDependent"
    }

    filter "system:windows"
        defines
        {
            "AMD_EXTENSIONS=true",
            "NV_EXTENSIONS=true",
            "GLSLANG_OSINCLUDE_WIN32=true",
            "ENABLE_OPT=false",
            "ENABLE_HLSL=true"
        }

    filter "system:linux"      
        defines
        {
            "AMD_EXTENSIONS=true",
            "NV_EXTENSIONS=true",
            "GLSLANG_OSINCLUDE_UNIX=true",
            "ENABLE_OPT=false",
            "ENABLE_HLSL=true"
        }   

	filter "system:macosx"
    defines
        {
            "AMD_EXTENSIONS=true",
            "NV_EXTENSIONS=true",
            "GLSLANG_OSINCLUDE_UNIX=true",
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