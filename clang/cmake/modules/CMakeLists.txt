include(LLVMDistributionSupport)
include(FindPrefixFromConfig)

# Generate a list of CMake library targets so that other CMake projects can
# link against them. LLVM calls its version of this file LLVMExports.cmake, but
# the usual CMake convention seems to be ${Project}Targets.cmake.
set(CLANG_INSTALL_PACKAGE_DIR lib${LLVM_LIBDIR_SUFFIX}/cmake/clang)
set(clang_cmake_builddir "${CMAKE_BINARY_DIR}/${CLANG_INSTALL_PACKAGE_DIR}")

# Keep this in sync with llvm/cmake/CMakeLists.txt!
set(LLVM_INSTALL_PACKAGE_DIR lib${LLVM_LIBDIR_SUFFIX}/cmake/llvm)
set(llvm_cmake_builddir "${LLVM_BINARY_DIR}/${LLVM_INSTALL_PACKAGE_DIR}")

get_property(CLANG_EXPORTS GLOBAL PROPERTY CLANG_EXPORTS)
export(TARGETS ${CLANG_EXPORTS} FILE ${clang_cmake_builddir}/ClangTargets.cmake)

# Generate ClangConfig.cmake for the build tree.
set(CLANG_CONFIG_CMAKE_DIR "${clang_cmake_builddir}")
set(CLANG_CONFIG_LLVM_CMAKE_DIR "${llvm_cmake_builddir}")
set(CLANG_CONFIG_INCLUDE_EXPORTS "include(\"${clang_cmake_builddir}/ClangTargets.cmake\")")
set(CLANG_CONFIG_INCLUDE_DIRS
  "${CLANG_SOURCE_DIR}/include"
  "${CLANG_BINARY_DIR}/include"
  )
configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/ClangConfig.cmake.in
  ${clang_cmake_builddir}/ClangConfig.cmake
  @ONLY)
set(CLANG_CONFIG_CMAKE_DIR)
set(CLANG_CONFIG_LLVM_CMAKE_DIR)

# Generate ClangConfig.cmake for the install tree.
find_prefix_from_config(CLANG_CONFIG_CODE CLANG_INSTALL_PREFIX "${CLANG_INSTALL_PACKAGE_DIR}")
set(CLANG_CONFIG_CMAKE_DIR "\${CLANG_INSTALL_PREFIX}/${CLANG_INSTALL_PACKAGE_DIR}")
set(CLANG_CONFIG_LLVM_CMAKE_DIR "\${CLANG_INSTALL_PREFIX}/${LLVM_INSTALL_PACKAGE_DIR}")
get_config_exports_includes(Clang CLANG_CONFIG_INCLUDE_EXPORTS)
set(CLANG_CONFIG_INCLUDE_DIRS
  "\${CLANG_INSTALL_PREFIX}/include"
  )
configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/ClangConfig.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/ClangConfig.cmake
  @ONLY)
set(CLANG_CONFIG_CODE)
set(CLANG_CONFIG_CMAKE_DIR)

if (NOT LLVM_INSTALL_TOOLCHAIN_ONLY)
  install_distribution_exports(Clang)

  install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/ClangConfig.cmake
    ${CMAKE_CURRENT_SOURCE_DIR}/AddClang.cmake
    DESTINATION ${CLANG_INSTALL_PACKAGE_DIR}
    COMPONENT clang-cmake-exports)

  if(NOT LLVM_ENABLE_IDE)
    # Add a dummy target so this can be used with LLVM_DISTRIBUTION_COMPONENTS
    add_custom_target(clang-cmake-exports)
    add_llvm_install_targets(install-clang-cmake-exports
                             COMPONENT clang-cmake-exports)
  endif()
endif()
