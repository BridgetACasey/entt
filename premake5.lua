project "ENTT"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("build/" .. outputdir .. "/%{prj.name}")
	objdir ("build-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"single_include/**.hpp",
		"src/**.hpp",
		"src/**.cpp"
	}

	includedirs
	{
		"single_include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"