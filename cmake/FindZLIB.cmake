include(${CMAKE_CURRENT_LIST_DIR}/cmodule.cmake)

cmodule_add(
  zlib 1.2.12
  URL      "https://zlib.net/zlib-1.2.12.tar.xz"
  URL_HASH SHA256=91844808532e5ce316b3c010929493c0244f3d37593afd6de04f71821d5136d9
)

if(NOT TARGET ZLIB::ZLIB)

  cmodule_select_target(zlib zlibstatic)
  target_include_directories(${CMODULE_TARGET} INTERFACE ${zlib_SOURCE_DIR} ${zlib_BINARY_DIR})
  add_library(ZLIB::ZLIB ALIAS ${CMODULE_TARGET})

endif()
