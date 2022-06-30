include(${CMAKE_CURRENT_LIST_DIR}/cmodule.cmake)

set(CURL_ENABLE_EXPORT_TARGET OFF)
set(BUILD_SHARED_LIBS ${CMODULE_SHARED_LIB})

cmodule_add(
  curl 7.84.0
  URL "https://github.com/curl/curl/releases/download/curl-7_84_0/curl-7.84.0.tar.xz"
  URL_HASH SHA256=a281cac88f36c268a6be1e3732b32db0eee5eb8fe3bd3e3cb774a2b045f43d01
)
