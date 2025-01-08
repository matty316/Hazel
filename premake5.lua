workspace "Hazel"
        configurations { "Debug", "Release" }

project "Hazel"
        kind "ConsoleApp"
        language "C++"
        targetdir "bin/%{cfg.buildcfg}"

        files { "src/*" }

        filter "configurations:Debug"
                defines { "Debug" }
                symbols "On"

        filter "configurations:Release"
                defines { "NDEBUG" }
                optimize "On"