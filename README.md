# Read It Now

Mod is available at https://www.nexusmods.com/skyrimspecialedition/mods/168337

Based on CommonLibSSE NG:

[CommonLibSSE NG](https://github.com/CharmedBaryon/CommonLibSSE-NG) is a fork of the popular [powerof3 fork](https://github.com/powerof3/CommonLibSSE) of the _original_ `CommonLibSSE` library created by [Ryan McKenzie](https://github.com/Ryan-rsm-McKenzie) in [2018](https://github.com/Ryan-rsm-McKenzie/CommonLibSSE/commit/224773c424bdb8e36c761810cdff0fcfefda5f4a).

# Credits & License

Based on the [SKSE Templates by mrowrpurr](https://github.com/SkyrimScripting/SKSE_Templates).
Project is licensed under MIT.

## Fork: Skyrim 1.7.x

The Color-Glass CommonLibSSE-NG that `CMakeLists.txt` builds against cannot read the version 5 Address Library files of Skyrim 1.7.x. `ng.cmake` builds `ReadItNow.dll` on alandtse's CommonLibSSE-NG for Skyrim 1.6.1170 and 1.7.x; it is included from a parent CMake project that defines `ng_plugin()` (a thin wrapper around `add_commonlibsse_plugin`) and provides `simpleini` through vcpkg.

`plugin.cpp` includes `SkyPrompt/API.hpp`, a header-only API that is not part of this repository. The build used the `include/SkyPrompt` folder of QTR-Modding/SkyPromptAPI at commit `8f3d0b22c8562dc236eeb8e7c61ea7dc2dd3d6a1`.

The release zip contains only the DLL. Install Read It Now from Nexus first and let the DLL overwrite its own.
