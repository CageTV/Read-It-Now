# ReadItNow.dll on alandtse's CommonLibSSE-NG (Skyrim 1.6.1170 and 1.7.x, SE and AE); included by E:/WorkSpace/ng-build/CMakeLists.txt (see ng_plugin there).
# The repository's own CMakeLists.txt builds against the Color-Glass CommonLibSSE-NG, whose Address Library reader cannot open the version 5 files of Skyrim 1.7.x.
# plugin.cpp includes SkyPrompt/API.hpp, a header-only API that is not in this repository: it is the QTR-Modding/SkyPromptAPI commit that
# ng-build/fetch_header_port.py puts in ng-build/deps/Read-It-Now (python fetch_header_port.py QTR-Modding/SkyPromptAPI 8f3d0b22c8562dc236eeb8e7c61ea7dc2dd3d6a1 SkyPrompt <dest>).
set(_rin_deps "E:/WorkSpace/ng-build/deps/Read-It-Now/include")
if(NOT EXISTS "${_rin_deps}/SkyPrompt/API.hpp")
    message(FATAL_ERROR "Read-It-Now: SkyPrompt/API.hpp missing in ${_rin_deps}")
endif()
ng_plugin(TARGET ReadItNow NAME ReadItNow VERSION 0.0.1 AUTHOR "Shazdeh" ROOT "${CMAKE_CURRENT_LIST_DIR}"
    SOURCES plugin.cpp
    INCLUDES "${CMAKE_CURRENT_LIST_DIR}" "${_rin_deps}"
    PCH "${CMAKE_CURRENT_LIST_DIR}/PCH.h")
