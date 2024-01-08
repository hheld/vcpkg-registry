vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO hheld/LivePlot
  REF 2ac3ad4a2aa6930187decd384947e2bef725de85
  SHA512 1f1d306131298ed7f7d27f8787eb752f003838cbcce8ebbb201c296a33529d2e97bbd0d58939034c507a716e04e3ccce4dd84dc215098a84d8621a18b607335b
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}/lp-cpp"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_cmake_config_fixup(
    CONFIG_PATH "lib/cmake/liveplot"
)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)