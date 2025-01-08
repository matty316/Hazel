workspace "Hazel"
        configurations { "Debug", "Release" }
        platforms { "win64" }

project "Hazel"
        kind "SharedLib"
        language "C++"
        targetdir "bin/%{cfg.buildcfg}"

        files { "src/*" }

        filter "configurations:Debug"
                defines { "Debug" }
                symbols "On"

        filter "configurations:Release"
                defines { "NDEBUG" }
                optimize "On"